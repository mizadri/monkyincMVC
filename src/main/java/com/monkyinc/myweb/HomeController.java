package com.monkyinc.myweb;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.monkyinc.myweb.model.Pedido;
import com.monkyinc.myweb.model.Producto;
import com.monkyinc.myweb.model.Usuario;

import java.util.UUID;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	@PersistenceContext
	private EntityManager entityManager;

	/**
	 * Intercepts login requests generated by the header; then continues to load
	 * normal page
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@Transactional
	public String login(HttpServletRequest request, Model model,
			HttpSession session) {
		String formLogin = request.getParameter("login");
		String formPass = request.getParameter("pass");
		String formSource = request.getParameter("source");
		logger.info("Login attempt from '{}' while visiting '{}'", formLogin,
				formSource);

		// validate request
		if (formLogin == null || formLogin.length() < 4 || formPass == null
				|| formPass.length() < 4) {
			model.addAttribute("loginError",
					"usuarios y contraseñas: 4 caracteres mínimo");
		} else {
			Usuario u = null;
			try {
				u = (Usuario) entityManager.createNamedQuery("userByLogin")
						.setParameter("loginParam", formLogin)
						.getSingleResult();
				if (u.isPassValid(formPass)) {
					logger.info("pass was valid");
					session.setAttribute("user", u);
					// sets the anti-csrf token
					getTokenForSession(session);
				} else {
					logger.info("pass was NOT valid");
					model.addAttribute("loginError",
							"error en usuario o contraseña");
				}
			} catch (NoResultException nre) {
				if (formPass.length() == 4) {
					/*
					 * // UGLY: register new users if they do not exist and pass
					 * is 4 chars long
					 * logger.info("no-such-user; creating user {}", formLogin);
					 * Usuario user = Usuario.createUser(formLogin, formPass,
					 * "user"); entityManager.persist(user);
					 * session.setAttribute("user", user);
					 * getTokenForSession(session);
					 */
				} else {
					logger.info("no such login: {}", formLogin);
				}
				model.addAttribute("loginError",
						"error en usuario o contraseña");
			}
		}

		// redirects to view from which login was requested
		//return "redirect:" + formSource;
		return "home";
	}

	/**
	 * Toggles debug mode
	 */
	@RequestMapping(value = "/debug", method = RequestMethod.GET)
	public String debug(HttpSession session, HttpServletRequest request) {
		String formDebug = request.getParameter("debug");
		logger.info("Setting debug to {}", formDebug);
		session.setAttribute("debug", "true".equals(formDebug) ? "true"
				: "false");
		return "redirect:/";
	}

	/*
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	@ResponseBody
	@Transactional
	// needed to allow DB change
	public ResponseEntity<String> addUser(@RequestParam("name") String name,
			@RequestParam("surname") String surname,
			@RequestParam("email") String email,
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			@RequestParam("repassword") String repassword,
			@RequestParam("adress") String adress,
			@RequestParam("phone") String phone,
			@RequestParam("csrf") String token, HttpSession session,
			HttpServletRequest request, Model model) {

		if (!password.equalsIgnoreCase(repassword)
				|| !isTokenValid(session, token)) {
			return new ResponseEntity<String>(
					"Error: password error or bad auth", HttpStatus.FORBIDDEN);
		} else {
			// Password??
			Usuario user = Usuario.createUser(username, password, "user", name,
					surname, email, adress, phone);
			entityManager.persist(user);
			session.setAttribute("user", user);
			return new ResponseEntity<String>("Ok: user " + name + " added",
					HttpStatus.OK);
		}

	}
	*/
//-------------------------------BEGIN:Adri---------------------------------------------
	/**
	 * Returns a users' photo
	 * 
	 * @param id
	 *            id of user to get photo from
	 * @return
	 */

	@ResponseBody
	@RequestMapping(value="/user/photo", method = RequestMethod.GET,
	produces = MediaType.IMAGE_JPEG_VALUE) 
	public byte[] userPhoto(@RequestParam("id")String id) throws IOException { 
		File f = ContextInitializer.getFile("user", id);
		InputStream in = null;
		if(f.exists()){
			in = new BufferedInputStream(new FileInputStream(f)); }
		else {
			in = new BufferedInputStream(this.getClass().getClassLoader().getResourceAsStream("unknown-user.jpg"));
		}
	  
		return IOUtils.toByteArray(in);
	}
 
	/**
	 * Uploads a photo for a user
	 * 
	 * @param id
	 *            of user
	 * @param photo
	 *            to upload
	 * @return
	 */
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public @ResponseBody String handleFileUpload(
			@RequestParam("photo") MultipartFile photo,
			@RequestParam("id") String id) {
		if (!photo.isEmpty()) {
			try {
				byte[] bytes = photo.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(ContextInitializer.getFile("user",
								id)));
				stream.write(bytes);
				stream.close();
				return "You successfully uploaded "
						+ id
						+ " into "
						+ ContextInitializer.getFile("user", id)
								.getAbsolutePath() + "!";
			} catch (Exception e) {
				return "You failed to upload " +  id + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload a photo for " + id
					+ " because the file was empty.";
		}
	}
	
	/**
	 * Returns a users' photo
	 * 
	 * @param id
	 *            id of user to get photo from
	 * @return
	 */

	@ResponseBody
	@RequestMapping(value="/product/photo", method = RequestMethod.GET,
	produces = MediaType.IMAGE_JPEG_VALUE) 
	public byte[] productPhoto(@RequestParam("id")String id) throws IOException { 
		File f = ContextInitializer.getFile("product", id);
		InputStream in = null;
		if(f.exists()){
			in = new BufferedInputStream(new FileInputStream(f)); }
		else {
			in = new BufferedInputStream(this.getClass().getClassLoader().getResourceAsStream("unknown-user.jpg"));
		}
	  
		return IOUtils.toByteArray(in);
	}
 
	/**
	 * Uploads a photo for a user
	 * 
	 * @param id
	 *            of user
	 * @param photo
	 *            to upload
	 * @return
	 */
	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public @ResponseBody String handleFilePUpload(
			@RequestParam("photo") MultipartFile photo,
			@RequestParam("id") String id) {
		if (!photo.isEmpty()) {
			try {
				byte[] bytes = photo.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(ContextInitializer.getFile("product",
								id)));
				stream.write(bytes);
				stream.close();
				return "You successfully uploaded "
						+ id
						+ " into "
						+ ContextInitializer.getFile("product", id)
								.getAbsolutePath() + "!";
			} catch (Exception e) {
				return "You failed to upload " +  id + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload a photo for " + id
					+ " because the file was empty.";
		}
	}

	
	/**
	 * Edit a single user
	 */
	@RequestMapping(value = "/editUser", method = RequestMethod.POST)
	@Transactional
	// needed to allow DB change
	public String editUser(@RequestParam("id") long id,
			@RequestParam("csrf") String token, HttpSession session,
			HttpServletRequest request, Model model) {

		Usuario u = entityManager.find(Usuario.class, id);

		String role = request.getParameter("role");
		u.setRole(role);
		String login = request.getParameter("login");
		u.setLogin(login);
		String nombre = request.getParameter("nombre");
		u.setNombre(nombre);
		String apellido = request.getParameter("apellido");
		u.setApellido(apellido);
		String correo = request.getParameter("correo");
		u.setCorreo(correo);
		String telefono = request.getParameter("telefono");
		u.setTelefono(telefono);
		String direccion = request.getParameter("direccion");
		u.setDireccion(direccion);

		model.addAttribute("u", u);

		return "user";
	}
	
	

	@RequestMapping(value = "/editUser", method = RequestMethod.GET)
	@Transactional
	// needed to allow DB change
	public String editUser(@RequestParam("id") long id,Model model, HttpSession session) {

		Usuario u = entityManager.find(Usuario.class, id);
		model.addAttribute("u", u);
		
		return "user";
	}
	
	/**
	 * A user(used for admin page)
	 */
	@RequestMapping(value = "/admin/editUser", method = RequestMethod.POST)
	@Transactional
	// needed to allow DB change
	public String editUserAdmin(@RequestParam("id") long id,
			@RequestParam("csrf") String token, HttpSession session,
			HttpServletRequest request, Model model) {

		if (!isAdmin(session) || !isTokenValid(session, token)) {
			return "hazLogin";
		} 
		else{
			
			Usuario u = entityManager.find(Usuario.class, id);

			String role = request.getParameter("role");
			u.setRole(role);
			String login = request.getParameter("login");
			u.setLogin(login);
			String nombre = request.getParameter("nombre");
			u.setNombre(nombre);
			String apellido = request.getParameter("apellido");
			u.setApellido(apellido);
			String correo = request.getParameter("correo");
			u.setCorreo(correo);
			String telefono = request.getParameter("telefono");
			u.setTelefono(telefono);
			String direccion = request.getParameter("direccion");
			u.setDireccion(direccion);

			model.addAttribute("u", u);
						
			return "users";
		}
	}

	@RequestMapping(value = "/admin/editUsers", method = RequestMethod.GET)
	@Transactional
	// needed to allow DB change
	public String editUsers(Model model, HttpSession session) {

		model.addAttribute("prefix", "../");

		if (!isAdmin(session)) {
			return "hazLogin";
		} 
		else{
			
			model.addAttribute("users",
					entityManager.createQuery("select u from Usuario u")
							.getResultList());			
			return "users";
		}
		
	}
	
	// XSS version begin
		/**
		 * Delete a user; return JSON indicating success or failure
		 */
		@RequestMapping(value = "/admin/delUser", method = RequestMethod.POST)
		@ResponseBody
		@Transactional
		// needed to allow DB change
		public ResponseEntity<String> bookAuthors(@RequestParam("id") long id,
				@RequestParam("csrf") String token, HttpSession session) {
			if (!isAdmin(session) || !isTokenValid(session, token)) {
				return new ResponseEntity<String>(
						"Error: no such user or bad auth", HttpStatus.FORBIDDEN);
			} 
			else{ 
				
				if (entityManager.createNamedQuery("delUser").setParameter("idParam", id).executeUpdate() == 1) {
					return new ResponseEntity<String>("Ok: user " + id + " removed",
						HttpStatus.OK);
				} else {
					return new ResponseEntity<String>("Error: no such user",
						HttpStatus.BAD_REQUEST);
				}
			}
		}
		
	/**
	 * A user(used for admin page)
	 */
	@RequestMapping(value = "/admin/editProduct", method = RequestMethod.POST)
	@Transactional
	// needed to allow DB change
	public String editProductAdmin(@RequestParam("id") long id,
			@RequestParam("csrf") String token, HttpSession session,
			HttpServletRequest request, Model model) {

		if (!isAdmin(session) || !isTokenValid(session, token)) {
			return "hazLogin";
		} 
		else{
			Producto p = entityManager.find(Producto.class, id);
			
			String tipo = request.getParameter("tipo");
			p.setTipo(tipo);
			String descripcion = request.getParameter("descripcion");
			p.setDescripcion(descripcion);
			int precio = Integer.parseInt(request.getParameter("precio").toString());
			p.setPrecio(precio);

			model.addAttribute("p", p);

			return "products";
		}
	}

	@RequestMapping(value = "/admin/editProducts", method = RequestMethod.GET)
	@Transactional
	// needed to allow DB change
	public String editProducts(Model model, HttpSession session) {
	
		model.addAttribute("prefix", "../");

		if (!isAdmin(session)) {
			return "hazLogin";
		} 
		else{
			
			model.addAttribute("products",
					entityManager.createQuery("select p from Producto p")
							.getResultList());			
			return "products";
		}
	}
	
	/**
	 * Delete a user; return JSON indicating success or failure
	 */
	@RequestMapping(value = "/admin/delProduct", method = RequestMethod.POST)
	@ResponseBody
	@Transactional
	// needed to allow DB change
	public ResponseEntity<String> delProduct(@RequestParam("id") long id,
			@RequestParam("csrf") String token, HttpSession session) {
		if (!isAdmin(session) || !isTokenValid(session, token)) {
			return new ResponseEntity<String>(
					"Error: no such user or bad auth", HttpStatus.FORBIDDEN);
		} 
		else{ 
			
			if (entityManager.createNamedQuery("delProduct").setParameter("idParam", id).executeUpdate() == 1) {
				return new ResponseEntity<String>("Ok: product " + id + " removed",
					HttpStatus.OK);
			} else {
				return new ResponseEntity<String>("Error: no such product",
					HttpStatus.BAD_REQUEST);
			}
		}
	}
	
	@RequestMapping(value = "/admin/addProduct", method = RequestMethod.GET)
	@Transactional
	public String addProductG(Locale locale,Model model,HttpSession session) {
		model.addAttribute("prefix", "../");
		if (!isAdmin(session)) {
			return "hazLogin";
		} 
		else{
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
					DateFormat.LONG, locale);
			String formattedDate = dateFormat.format(date);
			
			model.addAttribute("serverTime", formattedDate);
			
			return "addProd";
		}
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	@Transactional
	public String addProductP(
			@RequestParam("tipo") String tipo,
			@RequestParam("name") String descripcion,
			@RequestParam("precio") int precio,
			@RequestParam("csrf") String token,
			HttpSession session, HttpServletRequest request, Model model) {
	
		if (!isAdmin(session)) {
			return "hazLogin";
		} 
		else{

			Producto prod = new Producto();
			prod.setTipo(tipo);
			prod.setDescripcion(descripcion);
			prod.setPrecio(precio);
			
			entityManager.persist(prod);
			
			return "addProd";
		}
	}

	
	//-------------------------------END:Adri---------------------------------------------

	/**
	 * + * Checks the anti-csrf token for a session against a value + * @param
	 * session + * @param token + * @return the token +
	 */
	static boolean isTokenValid(HttpSession session, String token) {
		Object t = session.getAttribute("csrf_token");
		return (t != null) && t.equals(token);
	}

	/**
	 * Returns an anti-csrf token for a session, and stores it in the session
	 * 
	 * @param session
	 * @return
	 */
	static String getTokenForSession(HttpSession session) {
		String token = UUID.randomUUID().toString();
		session.setAttribute("csrf_token", token);
		return token;
	}

	/**
	 * Returns true if the user is logged in and is an admin
	 */
	static boolean isAdmin(HttpSession session) {
		Usuario u = (Usuario) session.getAttribute("user");
		if (u != null) {
			return u.getRole().equals("admin");
		} else {
			return false;
		}
	}

	/**
	 * Logout (also returns to home view).
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("User '{}' logged out", session.getAttribute("user"));
		session.invalidate();
		return "redirect:/";
	}

	/**
	 * Displays producto details
	 */
	@RequestMapping(value = "/producto/{id}", method = RequestMethod.GET)
	public String producto(@PathVariable("id") long id, Model model) {
		try {
			model.addAttribute("producto",
					entityManager.createNamedQuery("productoById")
							.setParameter("idParam", id).getSingleResult());
		} catch (NoResultException nre) {
			logger.error("No such producto: {}", id, nre);
		}
		model.addAttribute("prefix", "../");
		return "producto";
	}
/*
	
	@RequestMapping(value = "/pedido", method = RequestMethod.GET)
	public String pedido(@PathVariable("id") long id, Model model) {
		try {
			model.addAttribute(
					"pedido",
					entityManager.createNamedQuery("pedidoById")
							.setParameter("idParam", id).getSingleResult());
		} catch (NoResultException nre) {
			logger.error("No such pedido: {}", id, nre);
		}
		model.addAttribute("prefix", "../");
		return "pedido";
	}
*/
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("pageTitle", "MonkyInc:Bienvenido");

		return "home";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("pageTitle", "Administracion");
		return "admin";
	}
	/*

	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String account(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("pageTitle", "Mi cuenta");
		return "account";
	}
	*/

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("pageTitle", "Contacto");
		return "contact";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("pageTitle", "Registro");
		return "register";
	}

	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public String support(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("pageTitle", "Ayuda");
		return "support";
	}

	// -------------------------Paulo------------------------- //
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	@Transactional
	public String addUser(@RequestParam("name") String name,
			@RequestParam("surname") String surname,
			@RequestParam("email") String email,
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			@RequestParam("repassword") String repassword,
			@RequestParam("adress") String adress,
			@RequestParam("phone") String phone, 
			HttpSession session, HttpServletRequest request, Model model) {

		if (!password.equalsIgnoreCase(repassword)) {
			return "badpassword";
		} else {
			Usuario user = Usuario.createUser(username, password, "user", name, surname, email, adress, phone);
			entityManager.persist(user);
			session.setAttribute("user", user);
			return "account";
		}
	}
	
	@RequestMapping(value = "/tienda", method = RequestMethod.GET)
	public String tienda(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		
		model.addAttribute("prods", entityManager.createNamedQuery("producto")
				.getResultList());

		return "tienda";
	}

	@RequestMapping(value = "/pedido/{id}", method = RequestMethod.GET)
	public String pedido(Locale locale, Model model,
			@PathVariable("id") long producto_id) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);

		Producto product = entityManager.find(Producto.class, producto_id);

		model.addAttribute("producto", product);
		model.addAttribute("prefix", "../");
		model.addAttribute("serverTime", formattedDate);

		return "pedido";
	}
	
	@RequestMapping(value = "/pedido", method = RequestMethod.GET)
	public String pedido(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		Producto p = Producto
				.createProducto(1, "NOT IN HERE", 18, "Playera");
		model.addAttribute("producto", p);

		model.addAttribute("serverTime", formattedDate);

		return "pedido";
	}


	@RequestMapping(value = "/addPedido", method = RequestMethod.POST)
	@Transactional
	public String addPedido(@RequestParam("producto") long producto_id,
			@RequestParam("cantidad") int cantidad, Model model,
			HttpSession session) {

		if (session.getAttribute("user") != null) {

			long user_id = ((Usuario) session.getAttribute("user")).getId();
			Usuario user = entityManager.find(Usuario.class, user_id);
			Producto product = entityManager.find(Producto.class, producto_id);

			int precio = product.getPrecio();
			int total = precio * cantidad;

			Pedido p = Pedido.setPedido(0, user, total, cantidad, product);

			entityManager.persist(p);
			model.addAttribute("pedido", p);

			return "pedidoAgregado";
		} else {
			return "hazLogin";
		}
	}

	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String account(Locale locale, Model model, HttpSession session) {
	
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		long user_id = ((Usuario) session.getAttribute("user")).getId();
		Usuario user = entityManager.find(Usuario.class, user_id);

		model.addAttribute("pedido", entityManager.createNamedQuery("pedidoUser").setParameter("uParam", user_id).getResultList());
		model.addAttribute("usuario", user);
		model.addAttribute("serverTime", formattedDate);

		return "account";
	}

	@RequestMapping(value = "/editProfile", method = RequestMethod.POST)
	@Transactional
	public String editProfile(@RequestParam("id") long id,
			@RequestParam("role") String role,
			@RequestParam("apellido") String apellido,
			@RequestParam("nombre") String nombre,
			@RequestParam("login") String login,
			@RequestParam("correo") String correo,
			@RequestParam("telefono") String telefono,
			@RequestParam("direccion") String direccion,
			@RequestParam("csrf") String token, HttpSession session,
			HttpServletRequest request, Model model) {

		Usuario u = entityManager.find(Usuario.class, id);

		u.setRole(role);
		u.setLogin(login);
		u.setNombre(nombre);
		u.setApellido(apellido);
		u.setCorreo(correo);
		u.setTelefono(telefono);
		u.setDireccion(direccion);

		model.addAttribute("u", u);

		return "actualizado";
	}

	@RequestMapping(value = "/iniciosesion", method = RequestMethod.GET)
	public String iniciosesion(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		
		return "login";
	}

	@RequestMapping(value = "/pedidoAgregado", method = RequestMethod.GET)
	public String pedidoAgregado(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);

		return "pedidoAgregado";
	}
	
	@RequestMapping(value = "/actualizado", method = RequestMethod.GET)
	public String actualizado(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);

		return "actualizado";
	}
	
	@RequestMapping(value = "/hazLogin", method = RequestMethod.GET)
	public String hazLogin(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);

		return "hazLogin";
	}
	
	@RequestMapping(value = "/badpassword", method = RequestMethod.GET)
	public String badpassword(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);

		return "badpassword";
	}


	/*******************Lenin*********************/
	
	@RequestMapping(value = "/editPedido", method = RequestMethod.POST)
	@Transactional
	public String editPedido(@RequestParam("id") long id_pedido,
			HttpSession session, HttpServletRequest request, Model model) {

		long user_id = ((Usuario) session.getAttribute("user")).getId();
		Pedido p = entityManager.find(Pedido.class, id_pedido);
		
		//long prod_id = p.getProducto().getId();
		long prod_id = Integer.parseInt(request.getParameter("prod_id"));
		
		int nCantidad = Integer.parseInt(request.getParameter("cantidad"));
		p.setCantidad(nCantidad);
		
		int precio = p.getProducto().getPrecio();
		int nPrecio = precio*nCantidad;
		p.setPrecio(nPrecio);
		
		Usuario user = entityManager.find(Usuario.class, user_id);
		p.setUsuario(user);
		
		Producto product = entityManager.find(Producto.class, prod_id);
		p.setProducto(product);

		model.addAttribute("pedido", p);

		return "actualizado";
	}

		/**
	 * A user(used for admin page)
	 */
	@RequestMapping(value = "/admin/editPedidos", method = RequestMethod.POST)
	@Transactional
	// needed to allow DB change
	public String editPedidoAdmin(@RequestParam("Pedido") long id,
			@RequestParam("csrf") String token, HttpSession session,
			HttpServletRequest request, Model model) {

		if (!isAdmin(session) || !isTokenValid(session, token)) {
			return "hazLogin";
		} 
		else{
			long user_id = ((Usuario) session.getAttribute("user")).getId();
			Pedido p = entityManager.find(Pedido.class, id);
			
			
			int cantidad = Integer.parseInt(request.getParameter("cantidad"));
			p.setCantidad(cantidad);
			int precio = Integer.parseInt(request.getParameter("precio"));
			p.setPrecio(precio);
			Usuario user = entityManager.find(Usuario.class, user_id);
			p.setUsuario(user);
			
			long producto_id = p.getProducto().getId();
			Producto product = entityManager.find(Producto.class,  producto_id);
			p.setProducto(product);

			model.addAttribute("p", p);
			
			return "pedidos";
		}
	}
	@RequestMapping(value = "/admin/editPedidos", method = RequestMethod.GET)
	@Transactional
	// needed to allow DB change
	public String editPedidos(Model model, HttpSession session) {
	
		model.addAttribute("prefix", "../");
		
		if (!isAdmin(session)) {
			return "hazLogin";
		} 
		else{
			model.addAttribute("pedidos",
					entityManager.createQuery("select p from Pedido p")
							.getResultList());
			
			return "pedidos";
		}
	}
/**********************Lenin***************************/

}

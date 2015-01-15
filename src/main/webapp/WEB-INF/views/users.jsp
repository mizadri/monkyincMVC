<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="https://www.owasp.org/index.php/OWASP_Java_Encoder_Project"	prefix="e"%>
<!DOCTYPE html>
<html lang="en-ES">
<head>
<meta charset="utf-8" />
<title>Panel de administración</title>

<link rel="stylesheet" href="${prefix}resources/css/layout.css"
	type="text/css" media="screen" />
<!--[if lt IE 9]>
	<link rel="stylesheet" href="resources/css/ie.css" type="text/css" media="screen" />
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
<script src="${prefix}resources/js/jquery-1.5.2.min.js"
	type="text/javascript"></script>
<script src="${prefix}resources/js/hideshow.js" type="text/javascript"></script>
<script src="${prefix}resources/js/jquery.tablesorter.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${prefix}resources/js/jquery.equalHeight.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".tablesorter").tablesorter();
	});
	$(document).ready(function() {

		//When page loads...
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show(); //Activate first tab
		$(".tab_content:first").show(); //Show first tab content

		//On Click Event
		$("ul.tabs li").click(function() {

			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab
			$(".tab_content").hide(); //Hide all tab content

			var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
			$(activeTab).fadeIn(); //Fade in the active ID content
			return false;
		});

	});

	$(function() {
		$('.column').equalHeight();
	});

	$(function() {
		$(".x").click(function() {
			var id = $(this).attr("id").substring("del_".length);
			console.log("deleting", id);
			delUser(id);
		});
	})

	function delUser(id) {
		$.post("delUser", {id : id,	csrf : "${e:forJavaScript(csrf_token)}"},
				function(data) {
			$("#del_" + id).parent().parent().remove();
		});
	}
</script>

</head>


<body>

	<header id="header">
		<hgroup>
			<h1 class="site_title">
				<a href="index.html">Administración</a>
			</h1>
			<h2 class="section_title">Panel de control</h2>
			<div class="btn_view_site">
				<a href="/myweb">Ver sitio</a>
			</div>
		</hgroup>
	</header>
	<!-- end of header bar -->

	<section id="secondary_bar">
		<div class="user">
			<p>Administrador()</p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
		<div class="breadcrumbs_container">
			<article class="breadcrumbs">
				<a href="home.html">Administración del sitio</a>
				<div class="breadcrumb_divider"></div>
				<a class="current">Panel de control</a>
			</article>
		</div>
	</section>
	<!-- end of secondary bar -->

	<aside id="sidebar" class="column">

		<hr />
		<h3>Productos</h3>
		<ul class="toggle">
			<li class="icn_new_article"><a href="#">Nuevo producto</a></li>
			<li class="icn_edit_article"><a href="#">Editar/borrar
					productos</a></li>

		</ul>
		<h3>Usuarios</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="#">Añadir usuario</a></li>
			<li class="icn_profile"><a href="/myweb/admin/editUsers">Editar/borrar
					usuarios</a></li>

		</ul>
		<h3>Pedidos</h3>
		<ul class="toggle">
			<li class="icn_new_article"><a href="#">Añadir pedido</a></li>
			<li class="icn_settings"><a href="#">Editar/borrar pedidoss</a></li>

		</ul>
		<h3>Opciones</h3>
		<ul class="toggle">

			<li class="icn_jump_back"><a href="/myweb">Salir</a></li>
		</ul>

		<footer>
			<hr />
			<p>
				<strong>Copyright &copy; 2014 Last4One </strong>
			</p>

		</footer>
	</aside>
	<!-- end of sidebar -->

	<section id="main" class="column">

		<article class="module width_3_quarter">
			<header>
				<h3 class="tabs_involved">Lista de usuarios</h3>
				<ul class="tabs">
					<li><a href="#tab1">Usuarios</a></li>
					<!--<li><a href="#tab2">Comentarios</a></li> (replicar div de tab1)-->
				</ul>
			</header>

			<div class="tab_container">
				<div id="tab1" class="tab_content">
					<table class="tablesorter">
						<thead>
							<tr>
								<th>Id</th>
								<th>Nombre de usuario</th>
								<th>Rol</th>
								<th>Correo</th>
								<th>Acciones</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${users}" var="u">
								<tr>

									<td>${u.id}</td>
									<td>${e:forHtmlContent(u.login)}</td>
									<td>${u.role}</td>
									<td>${u.correo}</td>
									<td><input type="image" src="${prefix}resources/css/images/icn_edit.png" title="Edit"></input>
										<input class="x" id="del_${u.id}" type="image" src="${prefix}resources/css/images/icn_trash.png" title="Trash"></input></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<!--end of #tab1 -->

			</div>
			<!--end of .tab_container -->

		</article>
		<div class="clear"></div>

		<div class="spacer"></div>
	</section>


</body>

</html>
<%@ include file="../fragments/adminheader.jspf"%>
<!-- Begin code of admin page X-->
<section id="main" class="column">

	<article class="module width_3_quarter">
		<header>
			<h2>Añadir un usuario</h2>
		</header>
		<div class="module_content">
			<div class="form">
				<form action="${prefix}addUser" id="contactform" method="post">
					<p class="contact">
						<label for="name">Nombre</label>
					</p>
					<input id="name" name="name" placeholder="Nombre" required
						type="text">
					<p class="contact">
						<label for="surname">Apellidos</label>
					</p>
					<input id="surname" name="surname" placeholder="Apellidos" required
						type="text">
					<p class="contact">
						<label for="email">E-mail</label>
					</p>
					<input id="email" name="email" placeholder="example@domain.com"
						required type="email">
					<p class="contact">
						<label for="username">Crear nombre de usuario</label>
					</p>
					<input id="username" name="username"
						placeholder="Nombre de usuario" required type="text">
					<p class="contact">
						<label for="password">Contraseña</label>
					</p>
					<input type="password" id="password" name="password" required>
					<p class="contact">
						<label for="repassword">Confirme su contraseña</label>
					</p>
					<input type="password" id="repassword" name="repassword" required>
					<p class="contact">
						<label for="adress">Dirección</label>
					</p>
					<input id="adress" name="adress" placeholder="Dirección" required
						type="text">
					<p class="contact">
						<label for="phone">Teléfono</label>
					</p>
					<input id="phone" name="phone" placeholder="Teléfono" required
						type="text"> <br>
					<p>
						<input class="buttom" name="submit" id="submit" tabindex="5"
							value="¡Registrar!" type="submit"> <input type="hidden"
							name="csrf" value="${csrf}" />
					</p>
				</form>
			</div>
	</article>
	<div class="clear"></div>

	<div class="spacer"></div>
</section>
<!-- Ends code of admin page X-->

<!-- Begin Footer -->
<%@ include file="../fragments/adminfooter.jspf"%>
<!-- End Footer -->

</html>
<%@ include file="../fragments/header.jspf"%>
<!-- Begin Wrapper -->
<div id="wrapper">
	<!-- Begin Inner -->
	<div class="inner">
		<!-- Begin Shell -->
		<div class="shell">
			<!-- Begin Main -->
			<div id="main">
				<!-- Begin Sidebar -->
				<div id="sidebar">
					<ul>
						<!-- Begin Widget -->
						<li class="widget">
							<h2>Categorias</h2>
							<ul>
								<li><a href="#" title="Category 1">Playeras</a></li>
								<li><a href="#" title="Category 2">Chamarras</a></li>
								<li class="last"><a href="#" title="Category 3">Gorras</a></li>
							</ul>
						</li>
						<!-- End Widget -->
						<!-- Begin Widget -->
						<li class="widget">
							<h2>Atención al cliente</h2>
							<div id="search">

								<ul class="options">
									<li><a href="support" title="Contact Customer Support">Contactar
											con atencion al cliente</a></li>
								</ul>
							</div>
						</li>
						<!-- End Widget -->
					</ul>

				</div>
				<!-- End Sidebar -->
				<!-- Begin Content -->

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
						<input id="surname" name="surname" placeholder="Apellidos"
							required type="text">

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
							type="text"><br> <input class="buttom" name="submit"
							id="submit" value="¡Registrarse!" type="submit"> <input
							type="hidden" name="csrf" value="${csrf}" />
					</form>
				</div>
				<!-- End Content -->
				<div class="cl">&nbsp;</div>
			</div>

			<!-- Begin Footer -->
			<%@ include file="../fragments/footer.jspf"%>
			<!-- End Footer -->

			</html>
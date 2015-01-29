<%@ include file="../fragments/header.jspf"%>
<!-- Begin Wrapper -->
<div id="wrapper">
	<!-- Begin Inner -->
	<div class="inner">
		<!-- Begin Header -->
		<%-- <%@ include file="../fragments/header.jspf"%> --%>
		<!-- End Header -->
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
							<h2>Buscar</h2>
							<div id="search">
								<form action="#" method="get" accept-charset="utf-8">
									<label>Palabras clave</label> <input class="blink"
										name="keyword" type="text"> <label>Categoria</label> <select
										size="1" name="category">
										<option value="default">-- Seleccione --</option>
										<option value="category1">Playeras</option>
										<option value="category2">Chamarras</option>
										<option value="category3">Gorras</option>
									</select>
									<div class="price">
										<label>Precio</label> <select size="1" name="price">
											<option value="10">10</option>
											<option value="20">20</option>
											<option value="30">30</option>
											<option value="40">40</option>
											<option value="50">50</option>
											<option value="60">60</option>
											<option value="70">70</option>
											<option value="80">80</option>
											<option value="90">90</option>
											<option value="100">100</option>
										</select> <label>to:</label> <select size="1" name="to">
											<option value="50">50</option>
											<option value="60">60</option>
											<option value="70">70</option>
											<option value="80">80</option>
											<option value="90">90</option>
											<option value="100">100</option>
											<option value="200">200</option>
										</select>
										<div class="cl">&nbsp;</div>
									</div>
									<span class="button"><input value="Buscar" type="submit"></span>
									<div class="cl">&nbsp;</div>
								</form>
								<ul class="options">
									<li><a href="#" title="Advanced search">Búsqueda
											avanzada</a></li>
									<li><a href="#" title="Contact Customer Support">Contactar
											con atención al cliente</a></li>
								</ul>
							</div>
						</li>
						<!-- End Widget -->
						<!-- Begin Home Boxes -->
						<div id="home-boxes">
							<!-- Begin Box -->
							<div class="box">
								<div class="box-title">
									<img src="resources/css/images/box-img2.png"
										alt="Second Box Image" />
									<h4>Llámanos!</h4>
									<div class="cl">&nbsp;</div>
								</div>
								<div class="box-entry">
									<p>Siempre disponibles para ti. Llama al 691 12 33 35</p>
								</div>
							</div>
							<!-- End Box -->
							<div class="cl">&nbsp;</div>
						</div>
						<!-- End Home Boxes -->
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
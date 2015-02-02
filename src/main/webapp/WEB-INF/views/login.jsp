<%@ include file="../fragments/header.jspf"%>
<!-- Begin Wrapper -->
<div id="wrapper">
	<!-- Begin Inner -->
	<div class="inner">
		<!-- Begin Shell -->
		<div class="shell">
			<!-- Begin Main -->
			<div id="main">
				<div id="sidebar">
					<ul>
						<!-- Begin Widget -->
						<li class="widget">
							<h2>Categorias</h2>
							<ul>
								<li><a href="${prefix}camisetas" title="Category 1">Camisetas</a></li>
								<li><a href="${prefix}gorras" title="Category 2">Gorras</a></li>
								<li class="last"><a href="${prefix}bolsas" title="Category 3">Bolsas</a></li>
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

				<div id="content">
					<!-- Begin Content -->
					<div class="form">
						<br>
						<h1>Inicio de sesión</h1>
						<br>
						<br>
						<br>
						<form action="${prefix}login" id="contactform" method="post">
							<p class="contact">
								<label for="login">Usuario</label>
							</p>
							<input id="login" name="login" placeholder="Usuario" required
								type="text">
							<p class="contact">
								<label for="pass">Contraseña</label>
							</p>
							<input id="pass" name="pass" placeholder="********" required
								type="password"> <br>
							<br> <input class="buttom" name="submit" id="submit"
								value="Entrar" type="submit"> <input type="hidden"
								name="csrf" value="${csrf}" /> <input type="hidden" id="source"
								name="source"
								value="${requestScope['javax.servlet.forward.servlet_path']}" />

						</form>

					</div>

					<!-- End Content -->
				</div>
				<div class="cl">&nbsp;</div>


				<!-- Begin Footer -->
				<%@ include file="../fragments/footer.jspf"%>
				<!-- End Footer -->
				</html>
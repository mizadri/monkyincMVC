<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Login</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="${prefix}resources/css/images/favicon.ico" />
<link rel="stylesheet" href="${prefix}resources/css/style.css" type="text/css"media="all" />
<script src="${prefix}resources/js/jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>
<!--[if IE 6]>
		<script src="resources/js/DD_belatedPNG-min.js" type="text/javascript" charset="utf-8"></script>
	<![endif]-->
<script src="${prefix}resources/js/jquery.jcarousel.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${prefix}resources/js/functions.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<!-- Begin Wrapper -->
	<div id="wrapper">
		<!-- Begin Inner -->
		<div class="inner">
			<!-- Begin Header -->
			<%@ include file="../fragments/header.jspf"%>
			<!-- End Header -->
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
										<label>Palabras clave</label> <input class="blink" name="keyword" type="text"> <label>Categoria</label>
											<select size="1" name="category">
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
											</div> <span class="button"><input value="Buscar" type="submit"></span>
											<div class="cl">&nbsp;</div>
									</form>
									<ul class="options">
										<li><a href="#" title="Advanced search">B�squeda
												avanzada</a></li>
										<li><a href="#" title="Contact Customer Support">Contactar
												con atenci�n al cliente</a></li>
									</ul>
								</div>
							</li>
							<!-- End Widget -->
						</ul>
					</div>

					<div id="content">
						<!-- Begin Content -->
						<div class="form">
						<br><h1>Inicio de sesi�n</h1><br><br><br>
							<form action="${prefix}login" id="contactform" method="post">
								<p class="contact"><label for="login">Usuario</label></p>
								<input id="login" name="login" placeholder="Usuario" required type="text">
								<p class="contact"><label for="pass">Contrase�a</label></p>
								<input id="pass" name="pass" placeholder="********" required type="password">
								<br><br>
								<input class="buttom" name="submit" id="submit" value="Entrar" type="submit">
								<input type="hidden" name="csrf" value="${csrf}" />
								<input type="hidden" id="source" name="source" value="${requestScope['javax.servlet.forward.servlet_path']}" />
							</form>
						</div>
						
						<!-- End Content -->
					</div>
					<div class="cl">&nbsp;</div>

					<!-- Begin Footer -->
					<%@ include file="../fragments/footer.jspf"%>
					<!-- End Footer -->
				</div>
				<!-- End Shell -->
			</div>
			<!-- End Inner -->
		</div>
		<!-- End Wrapper -->
	</div>
</body>
</html>
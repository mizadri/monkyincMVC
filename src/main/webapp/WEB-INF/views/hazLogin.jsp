<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Error</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="${prefix}resources/css/images/favicon.ico" />
<link rel="stylesheet" href="${prefix}resources/css/style.css" type="text/css"media="all" />
<script src="${prefix}resources/js/jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>
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
									<li><a href="${prefix}camisetas" title="Category 1">Camisetas</a></li>
									<li><a href="${prefix}gorras" title="Category 2">Gorras</a></li>
									<li class="last"><a href="${prefix}bolsas" title="Category 3">Bolsas</a></li>
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
										<li><a href="${prefix}contact" title="Contact Customer Support">Contactar con atenciOn al cliente</a></li>
									</ul>
								</div>
							</li>
							<!-- End Widget -->
						</ul>
					</div>

					<div id="content">
						<!-- Begin Content -->
							<div class="form">
								<br><h2>Error en la sesión!</h2>
								<br><h3>No se ha encontrado una sesión, por favor
								<a href="${prefix}iniciosesion" style="color:blue">entra</a> ó <a href="${prefix}register" style="color:blue">registrate</a> para poder continuar.</h3>
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
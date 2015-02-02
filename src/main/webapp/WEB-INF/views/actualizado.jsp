<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Actualizado</title>
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
						</ul>
					</div>

					<div id="content">
						<!-- Begin Content -->
							<div class="form">
								<br><h2>Se ha actualizado correctamente!</h2>
								<br><h3>Vuelve a tu cuenta para confirmarlo.</h3>
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
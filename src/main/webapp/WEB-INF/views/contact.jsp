<!DOCTYPE html>
<html lang="en-ES">
<head>
<title>Last4One</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="resources/css/images/favicon.ico" />
<link rel="stylesheet" href="resources/css/style.css" type="text/css"
	media="all" />
<script src="resources/js/jquery-1.6.2.min.js" type="text/javascript"
	charset="utf-8"></script>
<!--[if IE 6]>
		<script src="resources/js/DD_belatedPNG-min.js" type="text/javascript" charset="utf-8"></script>
	<![endif]-->
<script src="resources/js/jquery.jcarousel.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="resources/js/functions.js" type="text/javascript"
	charset="utf-8"></script>
<script src="resources/js/jquery.validate.js" type="text/javascript"
	charset="utf-8"></script>
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

					<!-- Begin Content -->

					<form class="contact_form" action="#" method="post" id="contacto">
						<ul>
							<li>
								<h2>Cont&aacutectanos</h2>
							</li>
							<li><label for="name">Nombre:</label> <input type="text"
								placeholder="Su nombre" required /></li>
							<li><label for="email">Email:</label> <input type="email"
								name="email" placeholder="correo@ejemplo.com" required /></li>
							<li><label for="website">Sitio Web:</label> <input
								type="url" name="web" placeholder="http://susitio.com" required />
							</li>
							<li><label for="Mensaje">Mensaje:</label> <textarea
									name="Mensaje" cols="40" rows="6" required></textarea></li>
							<li>
								<button class="submit" type="submit">Enviar</button>
							</li>
						</ul>
					</form>
					<script>
						$("#contacto").validate({
							rules : {
								// simple rule, converted to {required:true}
								name : "required",
								// compound rule
								email : {
									required : true,
									email : true
								}
							}
						});
);
					</script>
					<!-- End Content -->
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
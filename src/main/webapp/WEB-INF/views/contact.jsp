<%@ include file="../fragments/header.jspf"%>
<body>
	<!-- Begin Wrapper -->
	<div id="wrapper">
		<!-- Begin Inner -->
		<div class="inner">
			<!-- Begin Header -->
			<%-- 			<%@ include file="../fragments/header.jspf"%> --%>
			<!-- End Header -->
			<!-- Begin Shell -->
			<div class="shell">
				<!-- Begin Main -->
				<div id="main">

					<!-- Begin Content -->

					<form class="contact_form" action="#" method="post" id="contacto">
						<ul>
							<li>
								<h2>Contáctanos</h2>
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

					</html>
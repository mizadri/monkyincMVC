<%@ include file="../fragments/header.jspf"%>

<script>
	$(function() {
		$("#accordion").accordion();
		$("#accordion2").accordion();
		$("#accordion3").accordion();
		$("#accordion4").accordion();
		$("#accordion5").accordion();
	});
</script>

<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>

	<!-- Begin Wrapper -->
	<div id="wrapper">
		<!-- Begin Inner -->
		<div class="inner">
			<!-- Begin Header -->
			<!-- Begin Header -->
			<%-- 			<%@ include file="../fragments/header.jspf"%> --%>
			<!-- End Header -->
			<!-- Begin Shell -->
			<div class="shell">
				<!-- Begin Main -->
				<div id="main">

					<div id="tabs">
						<ul>
							<li><a href="#tabs-1">Sobre MonkyInc</a></li>
							<li><a href="#tabs-2">Tallas e información</a></li>
							<li><a href="#tabs-3">Envío/Pago/Devolución</a></li>

						</ul>
						<div id="tabs-1">
							<div id="accordion">
								<h3>Sobre MonkyInc</h3>
								<div>
									<p>
										Somos Gustavo y Julia y formamos Monky.inc.
										En MonkyInc se plasman, crean e incentiva la imaginación de todos, win, win!
										Puedes escoger tu camiseta en nuestra tienda o puedes también contactar con nosotros 
										para realizar esa idea que te esta dando vueltas en la cabeza desde hace mucho tiempo 
										y poder plasmarla y que sea solamente única y nada mas que tuya.
										Tenemos diferentes formatos para realizar, bolsas tote, mochilas, camisetas, gorras y sudaderas. 
										todo hecho 100% a mano, porque hasta en la serigrafia revelamos con sol muchas veces y fabricamos
										nuestros propios elementos para ella(salvo las cosas químicas).
										Nuestro taller esta en Asturias, cerca de Llanes y desde aqui salen hacia todo el mundo camisetas únicas.
									</p>
								</div>
								<h3>¿Cuánto cuestan los artículos?</h3>
								<div>
								<p>
									Los artículos tienen un precio relativo a la tinta y el esfuerzo empleado en ellos
									los más baratos valen unos 15 y los más caras pueden llegar hasta 25.
								</p>
								</div>
								<h3>¿Por que tan pocos modelos de camisetas?</h3>
								<div>
									<p>
										Nosotros en MonkyInc pensamos que es una manera muy
										interesante y única para vender camisetas. Te traemos una camisetas de alta calidad,
										producida éticamente, super suave, 100% algodón e impresa a
										mano. Sin embargo cada semana creamos nuevos diseños y tu también
										puedes encargarnos uno personalizado por 5€ adicionales lo haremos encantados.
									</p>
								</div>
							</div>
						</div>
						<div id="tabs-2">
							<div id="accordion2">
								<h3>¿En que camisetas se imprimen los diseños?</h3>
								<div>
									<p>
										Monkyinc sólo imprime en camisetas de algodon de alta
										calidad, super suaves y producidas éticamente. Utilizamos
										camisetas 150g / m2 100% algodón ringspun. Ringspun asegura
										que nuestras camisas permanecen suaves incluso después de
										muchos lavados.
									</p>
								</div>
								<h3>¿Cuántas tallas hay?</h3>
								<div>
									<p>
										Tenemos una amplia gama de tamaños, tanto en camisetas
										de hombres como de mujer: S, M, L, XL, XXL para que esté
										seguro de encontrar el ajuste perfecto.
									</p>
								</div>
								<h3>¿Como son impresas las camisetas?</h3>
								<div>
									<p>
										La mayor parte son manuales 100%, y en algunas empleamos plantillas de
										serigrafía, es de la más alta calidad y la forma más duradera para
										hacer camisetas.
									</p>
								</div>
								<h3>¿Cuánto encogen las camisetas?</h3>
								<div>
									<p>
										Todas las camisetas 100% de algodón se encogeran durante
										toda su vida, unas más que otros. MonkyInc utiliza algodón
										preencogido para las camisetas, éstas tienden a reducirse a
										menos que otras camisas(alrededor de 1cm en 30 lavados).
									</p>

								</div>
							</div>
						</div>
						<div id="tabs-3">
							<div id="accordion3">
								<h3>¿A cuántos países vende Last4One?</h3>
								<div>
									<p>
										La respuesta simple es a todas partes. Si usted vive en
										el planeta tierra y su país tiene un servicio postal, entonces
										vamos a enivarle su pedido. Y mejor aún, !nuestra tasa postal
										en todo el mundo de una sola camiseta es de apenas 3 €!
									</p>
								</div>
								<h3>¿Cuánto cuesta el envío?</h3>
								<div>
									<p>
									De 3 a 10 €, en función de la distancia con España.
									</p>
								</div>
								<h3>¿Cuánto tiempo se tarda en recibir mi pedido?</h3>
								<div>
									<p>
										MonkyInc enviará su camiseta en el plazo de 4 días
										hábiles siguientes de estar en venta la camisteas.
										Nosotros no ofrecemos un servicio de seguimiento, pero si usted realiza un
										pedido utilizando Paypal está asegurado contra pérdidas.
										<ul>
											<li>Reino Unido e Irlanda 2-10 días laborables.</li>
											<li>Europa: 5-20 días laborables después del envío</li>
											<li>Resto del Mundo: 5-30 días hábiles después de la
												expedición</li>
										</ul>
									
								</div>
								<h3>¿Qué es la garantia Last4One?</h3>
								<div>
									<p>
										MonkyInc quiere que sea feliz, tanto en la vida como,
										especialmente, cuando se trata de las camisetas. Y cuando se
										trata de las CAMISETAS vamos a hacer todo lo posible para
										asegurarnos de que usted es feliz. Si tiene cualquier problema no dude
										en <a href="${prefix}contact" style="color:blue">contactar</a> con nosotros
									</p>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- End Main -->
				<%@ include file="../fragments/footer.jspf"%>
				</html>
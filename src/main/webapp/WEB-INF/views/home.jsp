﻿<%@ include file="../fragments/header.jspf"%>
<body>
	<!-- Begin Wrapper -->
	<div id="wrapper">
		<!-- Begin Inner -->
		<div class="inner">
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
								<br>
								<ul class="options">
									<li><a href="support" title="Contact Customer Support">Contactar
											con atencion al cliente</a></li>
								</ul>
								<br>
								<!-- PayPal Logo -->
								<table border="0" cellpadding="10" cellspacing="0"
									align="center">
									<tbody>
										<tr>
											<td align="center"></td>
										</tr>
										<tr>
											<td align="center"><a
												href="https://www.paypal.com/es/webapps/mpp/paypal-popup"
												title="Cómo funciona PayPal"
												onclick="javascript:window.open('https://www.paypal.com/es/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img
													src="https://www.paypalobjects.com/webstatic/mktg/logo-center/logotipo_paypal_pagos_seguros.png"
													border="0" alt="Seguro con PayPal" /></a>
											<div style="text-align: center">
													<a href="https://www.paypal.com/es/webapps/mpp/why"
														target="_blank"><font size="2" face="Arial"
														color="#0079CD"><strong>Cómo funciona
																PayPal</strong></font></a>
												</div></td>
										</tr>
									</tbody>
								</table>
								<!-- PayPal Logo -->
								</div>
							</li>
							<!-- End Widget -->
						</ul>
					</div>
					<!-- End Sidebar -->
					<!-- Begin Content -->
					<div id="content">
						
						<div class="post">
							<br>
							<h2>¡Bienvenidos a MonkyInc!</h2>
							<p> 
								Somos Gustavo y Julia, un par de jovenes artistas que nos dedicamos
								a crear todo tipo de obras, entre ellas camisetas, gorras, bolsas, mochilas
								y todo tipo de bien personalizable.	Actualmente vivimos en Asturias entre las montañas
								pero hacemos envíos a todo el mundo, de hecho tratamos con gente de Nueva York y Alemania.
							</p>
							<br>
							<p>
								En <strong>MonkyInc</strong> encontrarás una gran variedad
								de diseños nuevos cada semana. Todos nuestros modelos los creamos 
								<strong>de forma artesanal</strong>. 
								Aunque vendamos diseños base cada camiseta es elaborada
								con un <strong>estilo personalizado</strong>.
							</p>
							<br>
							<p>
								¿Estás deseoso de encontrar la camiseta perfecta de tu libro, serie o película preferida?
								No busques más sitios, <strong> aceptamos encargos</strong> contáctanos 
								para que diseñemos algo único para tí.
							</p>
							<br>
							<p>
								Te invitamos a que visites nuestra <a href="https://www.facebook.com/monky.inc" style="color:blue" >
								página de Facebook</a>, y también <a href="https://www.etsy.com/es/shop/monkyinc" style="color:blue">nuestro sitio</a> en la tienda online etsy, dónde podrás comprobar
								que no somos nuevos y las opiniones de mucha gente¡¡
							</p>
								 
						</div>
						
						<div class="post">
							<h2>Información reciente</h2>
							<h3>Autor: ${pAuthor} - Fecha: ${pDate}</h3>
							<br>
							<p>${pContent}<p>
							<br>
							<h2>Algunos de nuestros productos:</h2>
						</div>

						<!-- Begin Products -->
						<div id="products">
						
						<br>
							<div class="product">
								<input type="hidden" name="prodid" value="0"></input> <a
									href="${prefix}pedido/0"><img
									src="${prefix}product/photo?id=0"
									alt="First TShirt Product"
									style="width:234px; height:270px;"></a>
								<div class="pr-info">
									<h4>Tools Trade</h4>
									<p>Solo para rockeros</p>
									<span class="pr-price"><span>€ </span>30</span>
								</div>
							</div>
							<div class="product">
								<input type="hidden" name="prodid" value="1"></input> <a
									href="${prefix}pedido/1"><img
									src="${prefix}product/photo?id=1"
									alt="First TShirt Product"
									style="width:234px; height:270px;"></a>
								<div class="pr-info">
									<h4>Hello world</h4>
									<p>Sonriele al mundo!</p>
									<span class="pr-price"><span>€ </span>35</span>
								</div>
							</div>
							<div class="product last">
								<input type="hidden" name="prodid" value="2"></input> <a
									href="${prefix}pedido/2"><img
									src="${prefix}product/photo?id=2"
									alt="Third TShirt Product"
									style="width:234px; height:270px;"></a>
								<div class="pr-info">
									<h4>Stussy</h4>
									<p>Vuelvete un skate</p>
									<span class="pr-price"><span>€ </span>45</span>
								</div>
							</div>
							<div class="cl">&nbsp;</div>
						</div>
						<!-- End Products -->
					</div>
					<!-- End Content -->
					<div class="cl">&nbsp;</div>
					<!-- Begin Products Slider -->
					<div id="pr-slider">
						<ul>
							<li><a href="tienda"><img
									src="resources/css/images/slide-img1.jpg" alt="Slide TShirt 1" /></a></li>
							<li><a href="tienda"><img
									src="resources/css/images/slide-img2.jpg" alt="Slide TShirt 2" /></a></li>
							<li><a href="tienda"><img
									src="resources/css/images/slide-img3.jpg" alt="Slide TShirt 3" /></a></li>
							<li><a href="tienda"><img
									src="resources/css/images/slide-img4.jpg" alt="Slide TShirt 4" /></a></li>
							<li><a href="tienda"><img
									src="resources/css/images/slide-img5.jpg" alt="Slide TShirt 5" /></a></li>
							<li><a href="tienda"><img
									src="resources/css/images/slide-img6.jpg" alt="Slide TShirt 6" /></a></li>
							<li><a href="tienda"><img
									src="resources/css/images/slide-img7.jpg" alt="Slide TShirt 7" /></a></li>
						</ul>
						<div class="cl">&nbsp;</div>
					</div>
					<!-- End Products Slider -->
					<!-- Begin Home Boxes -->
					<div id="home-boxes">
						<!-- Begin Box -->
						<div class="box first">
							<div class="box-title">
								<img src="resources/css/images/box-img1.png"
									alt="First Box Image" />
								<h4>Entregas inmediatas</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Revisa nuestras condiciones.</p>
								<p class="more">
									<a href="/support" title="Read More">Leer más</a>
								</p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img2.png"
									alt="Second Box Image" />
								<h4>Contáctanos</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Contacta con nosotros si aún tienes dudas.</p>
								<p class="more">
									<a href="/support" title="Read More">Leer más</a>
								</p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img3.png"
									alt="Third Box Image" />
								<h4>Favoritos</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Cada mes nombramos un modelo favorito con descuento!.</p>
								<p class="more">
									<a href="/support" title="Read More">Leer más</a>
								</p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img4.png"
									alt="Fourth Box Image" />
								<h4>Compra fácil</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Compra de la manera más fácil y rápida con nuestro modelo
									eficiente de compra.</p>
								<p class="more">
									<a href="/support" title="Read More">Leer más</a>
								</p>
							</div>
						</div>
						<!-- End Box -->
						<div class="cl">&nbsp;</div>
					</div>
					<!-- End Home Boxes -->
				</div>
				<!-- End Main -->
				<%@ include file="../fragments/footer.jspf"%>

				</html>
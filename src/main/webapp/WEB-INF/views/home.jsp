<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
					<!-- Begin Sidebar -->
					<div id="sidebar">
						<ul>
							<!-- Begin Widget -->
							<li class="widget">
								<h2>Categorias</h2>
								<ul>
									<li><a href="#" title="Categor&#237a 1">Categor&iacutea
											1</a></li>
									<li><a href="#" title="Categor&#237a 2">Categor&iacutea
											2</a></li>
									<li><a href="#" title="Categor&#237a 3">Categor&iacutea
											3</a></li>
									<li><a href="#" title="Categor&#237a 4">Categor&iacutea
											4</a></li>
									<li><a href="#" title="Categor&#237a 5">Categor&iacutea
											5</a></li>
									<li><a href="#" title="Categor&#237a 6">Categor&iacutea
											6</a></li>
									<li><a href="#" title="Categor&#237a 7">Categor&iacutea
											7</a></li>
									<li><a href="#" title="Categor&#237a 8">Categor&iacutea
											8</a></li>
									<li><a href="#" title="Categor&#237a 9">Categor&iacutea
											9</a></li>
									<li><a href="#" title="Categor&#237a 10">Categor&iacutea
											10</a></li>
									<li><a href="#" title="Categor&#237a 11">Categor&iacutea
											11</a></li>
									<li><a href="#" title="Categor&#237a 12">Categor&iacutea
											12</a></li>
									<li class="last"><a href="#" title="Categor&#237a 13">Categor&iacutea
											13</a></li>
								</ul>
							</li>
							<!-- End Widget -->
							<!-- Begin Widget -->
							<li class="widget">
								<h2>Buscar</h2>
								<div id="search">
									<form action="#" method="get" accept-charset="utf-8">
										<label>Palabras clave</label> <input type="text" class="blink"
											name="keyword" /> <label>Categor&iacutea</label> <select
											size="1" name="category">
											<option value="default">-- Seleccione
												Categor&iacutea --</option>
											<option value="category1">Categor&iacutea 1</option>
											<option value="category2">Categor&iacutea 2</option>
											<option value="category3">Categor&iacutea 3</option>
											<option value="category4">Categor&iacutea 4</option>
											<option value="category5">Categor&iacutea 5</option>
											<option value="category6">Categor&iacutea 6</option>
											<option value="category7">Categor&iacutea 7</option>
											<option value="category8">Categor&iacutea 8</option>
											<option value="category9">Categor&iacutea 9</option>
											<option value="category10">Categor&iacutea 10</option>
											<option value="category11">Categor&iacutea 11</option>
											<option value="category12">Categor&iacutea 12</option>
											<option value="category13">Categor&iacutea 13</option>
										</select>
										<div class="price">
											<label>Precio</label> <select size="1" name="price">
												<option value="10">&#8364 10</option>
												<option value="20">&#8364 20</option>
												<option value="30">&#8364 30</option>
												<option value="40">&#8364 40</option>
												<option value="50">&#8364 50</option>
												<option value="60">&#8364 60</option>
												<option value="70">&#8364 70</option>
												<option value="80">&#8364 80</option>
												<option value="90">&#8364 90</option>
												<option value="100">&#8364 100</option>
											</select> <label>to:</label> <select size="1" name="to">
												<option value="50">&#8364 50</option>
												<option value="60">&#8364 60</option>
												<option value="70">&#8364 70</option>
												<option value="80">&#8364 80</option>
												<option value="90">&#8364 90</option>
												<option value="100">&#8364 100</option>
												<option value="200">&#8364 200</option>
												<option value="300">&#8364 300</option>
												<option value="400">&#8364 400</option>
												<option value="500">&#8364 500</option>
											</select>
											<div class="cl">&nbsp;</div>
										</div>
										<span class="button"><input type="submit"
											value="Buscar" /></span>
										<div class="cl">&nbsp;</div>
									</form>
									<ul class="options">
										<li><a href="#" title="Advanced search">B&uacutesqueda
												avanzada</a></li>
										<li><a href="#" title="Contact Customer Support">Contactar
												con atenci&oacuten al cliente</a></li>
									</ul>
								</div>
							</li>
							<!-- End Widget -->
						</ul>
					</div>
					<!-- End Sidebar -->
					<!-- Begin Content -->
					<div id="content">
						<!-- Begin Slider -->
						<div id="slider">
							<div class="slider-frame">&nbsp;</div>
							<ul class="slider-items">
								<li><img src="resources/css/images/slide1.jpg"
									alt="Slide 1" /></li>
								<li><img src="resources/css/images/slide1.jpg"
									alt="Slide 1" /></li>
								<li><img src="resources/css/images/slide1.jpg"
									alt="Slide 1" /></li>
								<li><img src="resources/css/images/slide1.jpg"
									alt="Slide 1" /></li>
								<li><img src="resources/css/images/slide1.jpg"
									alt="Slide 1" /></li>
							</ul>
							<div class="cl">&nbsp;</div>
							<div class="slider-controls">
								<ul></ul>
								<div class="cl">&nbsp;</div>
							</div>
						</div>
						<!-- End Slider -->
						<!-- Begin Post -->
						<div class="post">
							<h2>&iexclBienvenidos a Last4One!</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Maecenas et lectus aliquam nisi convallis pretium. Aliquam
								posuere com-modo sagittis. In sed massa eu felis pharetra
								hendrerit. Morbi aliquam arcu quis nulla pulvinar eget molestie
								nisl posuere. Praesent vitae lorem lacus. Phasellus ullamcorper
								condimentum sollicitudin. Sed nec mi ligula. Suspendisse
								potenti. Donec ac odio est, eget lobortis turpis. Mauris est
								ipsum, commodo et egestas ac, semper non felis.</p>
						</div>
						<!-- End Post -->
						<!-- Begin Products -->
						<div id="products">
							<div class="product">
								<img src="resources/css/images/product-img1.jpg"
									alt="First TShirt Product" />
								<div class="pr-info">
									<h4>Lorem Ipsum</h4>
									<p>Ut varius lobortis ante, at bibendum quis.</p>
									<span class="pr-price"><span>$</span>58.<sup>99</sup></span>
								</div>
							</div>
							<div class="product">
								<img src="resources/css/images/product-img2.jpg"
									alt="Second TShirt Product" />
								<div class="pr-info">
									<h4>Lorem Ipsum</h4>
									<p>Ut varius lobortis ante, at bibendum quis.</p>
									<span class="pr-price"><span>$</span>58.<sup>99</sup></span>
								</div>
							</div>
							<div class="product last">
								<img src="resources/css/images/product-img3.jpg"
									alt="Third TShirt Product" />
								<div class="pr-info">
									<h4>Lorem Ipsum</h4>
									<p>Ut varius lobortis ante, at bibendum quis.</p>
									<span class="pr-price"><span>$</span>58.<sup>99</sup></span>
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
							<li><a href="#"><img
									src="resources/css/images/slide-img1.jpg" alt="Slide TShirt 1" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img2.jpg" alt="Slide TShirt 2" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img3.jpg" alt="Slide TShirt 3" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img4.jpg" alt="Slide TShirt 4" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img5.jpg" alt="Slide TShirt 5" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img6.jpg" alt="Slide TShirt 6" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img7.jpg" alt="Slide TShirt 7" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img1.jpg" alt="Slide TShirt 1" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img2.jpg" alt="Slide TShirt 2" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img3.jpg" alt="Slide TShirt 3" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img4.jpg" alt="Slide TShirt 4" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img5.jpg" alt="Slide TShirt 5" /></a></li>
							<li><a href="#"><img
									src="resources/css/images/slide-img6.jpg" alt="Slide TShirt 6" /></a></li>
							<li><a href="#"><img
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
								<h4>Donec imperdiet</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Maece-nas et lectus aliquam nisi convallis pretium.</p>
								<p class="more">
									<a href="#" title="Read More">Leer m&aacutes</a>
								</p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img2.png"
									alt="Second Box Image" />
								<h4>Donec imperdiet</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Maece-nas et lectus aliquam nisi convallis pretium.</p>
								<p class="more">
									<a href="#" title="Read More">Leer m&aacutes</a>
								</p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img3.png"
									alt="Third Box Image" />
								<h4>Donec imperdiet</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Maece-nas et lectus aliquam nisi convallis pretium.</p>
								<p class="more">
									<a href="#" title="Read More">Leer m&aacutes</a>
								</p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img4.png"
									alt="Fourth Box Image" />
								<h4>Donec imperdiet</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Maece-nas et lectus aliquam nisi convallis pretium.</p>
								<p class="more">
									<a href="#" title="Read More">Leer m&aacutes</a>
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
			</div>
			<!-- End Shell -->
		</div>
		<!-- End Inner -->
	</div>
	<!-- End Wrapper -->
</body>
</html>

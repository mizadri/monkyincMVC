<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<title>Last4One</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="resources/css/images/favicon.ico" />
	<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="all" />
	<script src="resources/js/jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>
	<!--[if IE 6]>
		<script src="resources/js/DD_belatedPNG-min.js" type="text/javascript" charset="utf-8"></script>
	<![endif]-->
	<script src="resources/js/jquery.jcarousel.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="resources/js/functions.js" type="text/javascript" charset="utf-8"></script>
	<script src="resources/js/jquery.validate.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<!-- Begin Wrapper -->
	<div id="wrapper">
		<!-- Begin Inner -->
		<div class="inner">
			<!-- Begin Header -->
			<%@ include file="../fragments/header.jspf" %>
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
									<li><a href="#" title="Category 1">Categor&iacutea 1</a></li>
									<li><a href="#" title="Category 2">Categor&iacutea 2</a></li>
									<li><a href="#" title="Category 3">Categor&iacutea 3</a></li>
									<li><a href="#" title="Category 4">Categor&iacutea 4</a></li>
									<li><a href="#" title="Category 5">Categor&iacutea 5</a></li>
									<li><a href="#" title="Category 6">Categor&iacutea 6</a></li>
									<li><a href="#" title="Category 7">Categor&iacutea 7</a></li>
									<li><a href="#" title="Category 8">Categor&iacutea 8</a></li>
									<li><a href="#" title="Category 9">Categor&iacutea 9</a></li>
									<li><a href="#" title="Category 10">Categor&iacutea 10</a></li>
									<li><a href="#" title="Category 11">Categor&iacutea 11</a></li>
									<li><a href="#" title="Category 12">Categor&iacutea 12</a></li>
									<li class="last"><a href="#" title="Category 13">Categor&iacutea 13</a></li>
								</ul>
							</li>
							<!-- End Widget -->
							<!-- Begin Widget -->
							<li class="widget">
								<h2>Buscar</h2>
								<div id="search">
									<form action="#" method="get" accept-charset="utf-8">
										<label>Palabras clave</label>
										<input type="text" class="blink" name="keyword" />
										<label>Categor&iacutea</label>
										<select size="1" name="category">
											<option value="default">-- Seleccione Categor&iacutea --</option>
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
											<label>Precio</label>
											<select size="1" name="price">
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
											</select>
											<label>to:</label>
											<select size="1" name="to">
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
										<span class="button"><input type="submit" value="Buscar" /></span>
										<div class="cl">&nbsp;</div>
									</form>
									<ul class="options">
										<li><a href="#" title="Advanced search">B&uacutesqueda avanzada</a></li>
										<li><a href="#" title="Contact Customer Support">Contactar con atencioacuten al cliente</a></li>
									</ul>
								</div>
							</li>
							<!-- End Widget -->
						</ul>
					</div>
					<!-- End Sidebar -->
					<!-- Begin Content -->
					
					<div  class="form">
    		<form id="contactform"> 
    			<p class="contact"><label for="name">Nombre</label></p> 
    			<input id="name" name="name" placeholder="Nombre y Apellidos" required="" tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email">E-mail</label></p> 
    			<input id="email" name="email" placeholder="example@domain.com" required="" type="email"> 
                
                <p class="contact"><label for="username">Crear nombre de usuario</label></p> 
    			<input id="username" name="username" placeholder="Nombre de usuario" required="" tabindex="2" type="text"> 
    			 
                <p class="contact"><label for="password">Contrase&ntildea</label></p> 
    			<input type="password" id="password" name="password" required=""> 
                <p class="contact"><label for="repassword">Confirme su contrase&ntildea</label></p> 
    			<input type="password" id="repassword" name="repassword" required=""> 
        
               <fieldset>
                 <label>Fecha de Nacimiento</label>
                  <label class="month"> 
                  <select class="select-style" name="BirthMonth">
                  <option value="">Mes</option>
                  <option  value="01">Enero</option>
                  <option value="02">Febrero</option>
                  <option value="03" >Marzo</option>
                  <option value="04">Abril</option>
                  <option value="05">Mayo</option>
                  <option value="06">Junio</option>
                  <option value="07">Julio</option>
                  <option value="08">Augosto</option>
                  <option value="09">Septiembre</option>
                  <option value="10">Octubre</option>
                  <option value="11">Noviembre</option>
                  <option value="12" >Diciembre</option>
                  </label>
                 </select>    
                <label>Dia<input class="birthday" maxlength="2" name="BirthDay"  placeholder="Dia" required=""></label>
                <label>A&ntildeo <input class="birthyear" maxlength="4" name="BirthYear" placeholder="A&ntildeo" required=""></label>
              </fieldset>
  
            <select class="select-style gender" name="gender">
            <option value="select">Sexo</option>
            <option value="h">Hombre</option>
            <option value="m">Mujer</option>
            </select><br><br>
            
            <p class="contact"><label for="phone">Tel&eacutefono</label></p> 
            <input id="phone" name="phone" placeholder="Tel&eacutefono" required="" type="text"> <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="&#161Registrarse!" type="submit"> 	 
   </form> 
</div>      
					
					<!-- <div id="content">
						Begin Slider
						<div id="slider">
							<div class="slider-frame">&nbsp;</div>
							<ul class="slider-items">
								<li><img src="resources/css/images/slide1.jpg" alt="Slide 1" /></li>
								<li><img src="resources/css/images/slide1.jpg" alt="Slide 1" /></li>
								<li><img src="resources/css/images/slide1.jpg" alt="Slide 1" /></li>
								<li><img src="resources/css/images/slide1.jpg" alt="Slide 1" /></li>
								<li><img src="resources/css/images/slide1.jpg" alt="Slide 1" /></li>
							</ul>
							<div class="cl">&nbsp;</div>
							<div class="slider-controls">
								<ul></ul>
								<div class="cl">&nbsp;</div>
							</div>
						</div>
						End Slider
						Begin Post
						<div class="post">
							<h2>¡Bienvenidos a Last4One!</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas et lectus aliquam nisi convallis pretium. Aliquam posuere com-modo sagittis. In sed massa eu felis pharetra hendrerit. Morbi aliquam arcu quis nulla pulvinar eget molestie nisl posuere. Praesent vitae lorem lacus. Phasellus ullamcorper condimentum sollicitudin. Sed nec mi ligula. Suspendisse potenti. Donec ac odio est, eget lobortis turpis. Mauris est ipsum, commodo et egestas ac, semper non felis.</p>
						</div>
						End Post
						Begin Products
						<div id="products">
							<div class="product">
								<img src="resources/css/images/product-img1.jpg" alt="First TShirt Product" />
								<div class="pr-info">
									<h4>Lorem Ipsum</h4>
									<p>Ut varius lobortis ante, at bibendum quis. </p>
									<span class="pr-price"><span>$</span>58.<sup>99</sup></span>
								</div>
							</div>
							<div class="product">
								<img src="resources/css/images/product-img2.jpg" alt="Second TShirt Product" />
								<div class="pr-info">
									<h4>Lorem Ipsum</h4>
									<p>Ut varius lobortis ante, at bibendum quis. </p>
									<span class="pr-price"><span>$</span>58.<sup>99</sup></span>
								</div>
							</div>
							<div class="product last">
								<img src="resources/css/images/product-img3.jpg" alt="Third TShirt Product" />
								<div class="pr-info">
									<h4>Lorem Ipsum</h4>
									<p>Ut varius lobortis ante, at bibendum quis. </p>
									<span class="pr-price"><span>$</span>58.<sup>99</sup></span>
								</div>
							</div>
							<div class="cl">&nbsp;</div>
						</div>
						End Products
					</div> -->
					<!-- End Content -->
					<div class="cl">&nbsp;</div>
					<!-- Begin Products Slider -->
					<div id="pr-slider">
						<ul>
							<li><a href="#"><img src="resources/css/images/slide-img1.jpg" alt="Slide TShirt 1" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img2.jpg" alt="Slide TShirt 2" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img3.jpg" alt="Slide TShirt 3" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img4.jpg" alt="Slide TShirt 4" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img5.jpg" alt="Slide TShirt 5" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img6.jpg" alt="Slide TShirt 6" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img7.jpg" alt="Slide TShirt 7" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img1.jpg" alt="Slide TShirt 1" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img2.jpg" alt="Slide TShirt 2" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img3.jpg" alt="Slide TShirt 3" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img4.jpg" alt="Slide TShirt 4" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img5.jpg" alt="Slide TShirt 5" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img6.jpg" alt="Slide TShirt 6" /></a></li>
							<li><a href="#"><img src="resources/css/images/slide-img7.jpg" alt="Slide TShirt 7" /></a></li>
						</ul>
						<div class="cl">&nbsp;</div>
					</div>
					<!-- End Products Slider -->
					<!-- Begin Home Boxes -->
					<div id="home-boxes">
						<!-- Begin Box -->
						<div class="box first">
							<div class="box-title">
								<img src="resources/css/images/box-img1.png" alt="First Box Image" />
								<h4>Donec imperdiet</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maece-nas et lectus aliquam nisi convallis pretium.</p>
								<p class="more"><a href="#" title="Read More">Leer m&aacutes</a></p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img2.png" alt="Second Box Image" />
								<h4>Donec imperdiet</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maece-nas et lectus aliquam nisi convallis pretium.</p>
								<p class="more"><a href="#" title="Read More">Leer m&aacutes</a></p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img3.png" alt="Third Box Image" />
								<h4>Donec imperdiet</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maece-nas et lectus aliquam nisi convallis pretium.</p>
								<p class="more"><a href="#" title="Read More">Leer m&aacutes</a></p>
							</div>
						</div>
						<!-- End Box -->
						<!-- Begin Box -->
						<div class="box">
							<div class="box-title">
								<img src="resources/css/images/box-img4.png" alt="Fourth Box Image" />
								<h4>Donec imperdiet</h4>
								<div class="cl">&nbsp;</div>
							</div>
							<div class="box-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maece-nas et lectus aliquam nisi convallis pretium.</p>
								<p class="more"><a href="#" title="Read More">Leer m&aacutes</a></p>
							</div>
						</div>
						<!-- End Box -->
						<div class="cl">&nbsp;</div>
					</div>
					<!-- End Home Boxes -->
				</div>
				<!-- End Main -->
				<!-- Begin Footer -->
				<%@ include file="../fragments/footer.jspf" %>
				<!-- End Footer -->
			</div>
			<!-- End Shell -->
		</div>
		<!-- End Inner -->
	</div>
	<!-- End Wrapper -->
</body>
</html>
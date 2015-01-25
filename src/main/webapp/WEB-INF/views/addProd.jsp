<%@ include file="../fragments/adminheader.jspf"%>

	<!-- Begin code of admin page X-->
	<section id="main" class="column">

		<article class="module width_3_quarter">
			<header>
				<h2>Añade un producto</h2>
			</header>

			<div class="form">
						<h1>Detalles del producto</h1>
						
						<form action="${prefix}addProduct" id="addproduct" method="post">
						
						<p class="contact"><label for="name">Nombre</label></p>
						<input id="name" name="name" placeholder="-Nombre-" required type="text">
						
						<p class="contact"><label for="tipo">Tipo</label></p>
						<input id="tipo" name="tipo" placeholder="-Tipo-" required type="text">
						
						<p class="contact"><label for="precio">Precio</label></p>
						<input id="precio" name="precio" placeholder="x.xx" required type="number">
						<br>
						<input class="buttom" name="submit" id="submit" value="Añadir Producto" type="submit">
						<input hidden="submit" name="csrf" value="${csrf}" />
					</form>
			</div>

		</article>
		<div class="clear"></div>

		<div class="spacer"></div>
	</section>
<!-- Ends code of admin page X-->
<%@ include file="../fragments/adminfooter.jspf"%>
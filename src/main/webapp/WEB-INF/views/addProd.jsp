<%@ include file="../fragments/adminheader.jspf"%>

<!-- Begin code of admin page X-->
<section id="main" class="column">

	<article class="module width_3_quarter">
		<header>
			<h2>Añade un producto</h2>
		</header>
					<form action="${prefix}addProduct" id="addproduct" class="contacto" method="post" enctype="multipart/form-data">
			
						<div>
							<label for="name">Nombre:</label>
							<br>
							<input id="name" name="name" required type="text">
						</div>
						<div>
							<label for="tipo">Tipo:</label>
							<br>
							<input id="tipo" name="tipo" required type="text">
						</div>
						<div>
							<label for="precio">Precio:</label>
							<br>
							<input id="precio" name="precio" required type="number">
						</div>
						<div>
							<label for="photo">Selecciona foto para el producto: </label>
							<br>
							<input type="file" name="photo"><br />
						</div>
						
						<input class="buttom" name="submit" id="submit" value="Añadir Producto" type="submit">
						<input hidden="submit" name="csrf" value="${csrf_token}" />
						
					</form>

	</article>
	<div class="clear"></div>

	<div class="spacer"></div>
</section>
<!-- Ends code of admin page X-->
<%@ include file="../fragments/adminfooter.jspf"%>
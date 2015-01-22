<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Perfil</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="${prefix}resources/css/images/favicon.ico" />
<link rel="stylesheet" href="${prefix}resources/css/style.css" type="text/css"media="all" />
<script src="${prefix}resources/js/jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${prefix}resources/js/jquery.jcarousel.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${prefix}resources/js/functions.js" type="text/javascript" charset="utf-8"></script>
<link href="${prefix}resources/js/jquery-ui-1.11.2/jquery-ui.min.css" rel="stylesheet">
<script src="${prefix}resources/js/jquery-ui-1.11.2/external/jquery/jquery.js"></script>
<script src="${prefix}resources/js/jquery-ui-1.11.2/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".tabs").tabs();
	});
	
	$(function() {
		$(".s").click(function() {
			var id = $(this).attr("id").substring("send_".length);
			console.log("sendin", id);
			sendPedido(id);
		});	
		$(".edt").click(function() {
			var id = $(this).attr("id").substring("edt_".length);
			$("input").attr("disabled", "disabled");
			$(this).parent().parent().find("input").removeAttr("disabled");
		});
		
		$(".editpedido").attr("disabled", "disabled");
	});
	
	function sendPedido(id){
		var tr = $("#r_"+id);
		$.post("editPedido", 
		{
			id : id,
			cantidad : tr.children().children()[0].value,
			prod_id : $("#productoid"+id).val()
		},
		
		function(data) {
			location.reload(true);//Forces reload from server
		});
	}
	
</script>

<style>
	table{
		
	}
	th, td{
		border: 2px solid black;
		text-align: center;
		padding: 10px;
	}
</style>

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
						<div class="tabs">
							<ul>
								<li><a href="#tabs-1">Usuario</a></li>
								<li><a href="#tabs-2">Pedidos</a></li>
							</ul>
							<div id="tabs-1">
								<br><h2>Usuario</h2><br>
								<h3>Hola ${usuario.nombre}! Aquí podrás modificar tu perfil.</h3><br>
								<form action="${prefix}editProfile" method="post">
									<br>
									<div class="form">
									<label>Nombre de usuario: </label><input text="submit" name="login" value="${usuario.login}"/><br>
									<br><label>Nombre: </label><input text="submit" name="nombre" value="${usuario.nombre}"/><br>
									<br><label>Apellido: </label><input text="submit" name="apellido" value="${usuario.apellido}"/><br>
									<br><label>Correo: </label><input text="submit" name="correo" value="${usuario.correo}" /><br>
									<br><label>Telefono: </label><input text="submit" name="telefono" value="${usuario.telefono}" /><br>
									<br><label>Dirección: </label><input text="submit" name="direccion" value="${usuario.direccion}" /><br>
									<input type="hidden" name="csrf" value="${csrf}" />
									<input type="hidden" name="id" value="${usuario.id}" />
									<input type="hidden" name="role" value="${usuario.role}" />
									<br><button type="submit" name="upload" value="ok">Actualizar</button>
									</div>
								</form>
								<br><br>
							</div>
							<div id="tabs-2">
								<br><h2>Pedidos</h2><br>
								<h3>Aquí podrás modificar la cantidad de artículos que deseas pedir.</h3><br><br>
								<c:choose>
								<c:when test="${not empty pedido}">
								
								<table>
										<thead>
											<tr>
												<th>ID del pedido</th>
												<th>Nombre del usuario</th>
												<th>Cantidad de articulos</th>
												<th>Total del pedido</th>
												<th>Descripcion del articulo</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${pedido}" var="p">
												<tr id="r_${p.id}">
													<td>${p.id}</td>
													<td>${p.usuario.nombre}</td>
													<td><input class="editpedido" text="submit" name="cantidad" value="${p.cantidad}"></input></td>
													<td>${p.precio}</td>
													<td>${p.producto.descripcion}</td>
													<td>
														<button class="s" id="send_${p.id}">Confirmar</button>
														<button class="edt" id="edt_${p.id}">
														<image src="${prefix}resources/css/images/icn_edit.png" alt="Edit"/></button>
													</td>
													<input hidden="submit" id="productoid${p.id}" value="${p.producto.id}"></input>
												</tr>
											</c:forEach>
										</tbody>
								</table> 
								
								</c:when>
								<c:when test="${empty pedido}">
									<p>No has realizado ningún pedido hasta el momento,
									visita nuestra tienda!</p><br><br><br><br>
									<br><br><br><br><br><br><br><br><br><br><br>
								</c:when>
								</c:choose>
							</div>
						</div>
						
						<!-- End Content -->
					<div class="cl">&nbsp;</div>
					<!-- Begin Footer -->
					<%@ include file="../fragments/footer.jspf"%>
					<!-- End Footer -->

					</html>
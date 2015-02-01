<%@ include file="../fragments/header.jspf"%>
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
			<!-- Begin Shell -->
			<div class="shell">
				<!-- Begin Main -->
				<div id="main">

						<!-- Begin Content -->
						<div class="tabs">
							<ul>
								<li><a href="#tabs-1">Editar datos</a></li>
								<li><a href="#tabs-2">Subir foto</a></li>
								<li><a href="#tabs-3">Pedidos</a></li>
							</ul>
							<div id="tabs-1">
								<br><h2>¡Hola ${usuario.nombre}! Aquí podrás modificar tu perfil.</h2><br>
								<form action="${prefix}editProfile" method="post">
									<br>
									<div class="form">
										<label>Nombre de usuario: </label><input text="submit" name="login" value="${e:forHtmlContent(usuario.login)}"/><br>
										<br><label>Nombre: </label><input text="submit" name="nombre" value="${e:forHtmlContent(usuario.nombre)}"/><br>
										<br><label>Apellido: </label><input text="submit" name="apellido" value="${e:forHtmlContent(usuario.apellido)}"/><br>
										<br><label>Correo: </label><input text="submit" name="correo" value="${e:forHtmlContent(usuario.correo)}" /><br>
										<br><label>Telefono: </label><input text="submit" name="telefono" value="${e:forHtmlContent(usuario.telefono)}" /><br>
										<br><label>Dirección: </label><input text="submit" name="direccion" value="${e:forHtmlContent(usuario.direccion)}" /><br>
										<input type="hidden" name="csrf" value="${csrf}" />
										<input type="hidden" name="id" value="${usuario.id}" />
										<input type="hidden" name="role" value="${usuario.role}" />
										<br><button type="submit" name="upload" value="ok">Actualizar</button>
									</div>
								</form>
								<br><br>
							</div>
							<div id="tabs-2">
								<br><h2>!Hola ${usuario.nombre}! Aquí podrás subir una foto de perfil.</h2><br>
								<form method="POST" enctype="multipart/form-data" action="user">
									Imágen a subir <input type="file" name="photo"><br />
									<input hidden="submit" name="id" value="${usuario.id}" />
									<button type="submit" name="upload" value="ok">Subir</button>
								</form>
								<br><br><br><br><br><br><br><br><br><br>
							</div>
							<div id="tabs-3">
								<br><h2>Aquí podrás modificar la cantidad de artículos que deseas pedir.</h2><br>
								<h3></h3><br><br>
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
													<td><input class="editpedido" type="number" text="submit" width="40px" name="cantidad" value="${p.cantidad}"></input></td>
													<td>${p.precio}</td>
													<td>${p.producto.descripcion}</td>
													<td>
														<button class="s" id="send_${p.id}">&#10004</button>
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
									<p>Lo sentimos ${usuario.nombre} No has realizado ningún pedido hasta el momento,
									visita nuestra <a href="${prefix}tienda" style="color:blue">tienda</a>!</p><br><br><br><br>
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
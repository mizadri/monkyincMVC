<%@ include file="../fragments/adminheader.jspf"%>

	<!-- Begin code of admin page X-->
	<script type="text/javascript">
	$(function() {
		$(".x").click(function() {
			var id = $(this).attr("id").substring("del_".length);
			console.log("deleting", id);
			delPedido(id);
		});
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
		
		$("input").attr("disabled", "disabled");
	});
	
	function delPedido(id) {
		$.post("delPedido", {id : id,	csrf : "${e:forJavaScript(csrf_token)}"},
				function(data) {
			$("#del_" + id).parent().parent().remove();
		}); 
	}
	function sendPedido(id) {
		var tr = $("#r_"+id);
		$.post("editPedido", 
		{
			id : id,
			cantidad : tr.children().children()[2].value,
			precio : tr.children().children()[3].value,
			csrf : "${e:forJavaScript(csrf_token)}"
	
		},
				function(data) {
		location.reload(true);//Foreces reload from server
		});
	}
</script>
	<section id="main" class="column">

		<article class="module width_3_quarter">
			<header>
				<h3 class="tabs_involved">Lista de Pedidos</h3>
				<ul class="tabs">
					<li><a href="#tab1">Pedidos</a></li>
				</ul>
			</header>

			<div class="tab_container">
				<div id="tab1" class="tab_content">
					<table class="tablesorter">
						<thead>
							<tr>								
								<th>Id</th>
								<th>Usuario</th>
								<th>Producto</th>
								<th>Cantidad</th>
								<th>Precio</th>							
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${pedidos}" var="p">
								<tr id="r_${p.id}">
										<td>${p.id}</td>
										<td><input name="usuario" value="${e:forHtmlContent(p.usuario.nombre)}" size="10" /></td>
										<td><input name="descripcion" value="${p.producto.descripcion}"/></td>
										<td><input type="number" name="cantidad" value="${p.cantidad}" size="10"/></td>
										<td><input type="number" name="precio" value="${p.precio}" size="10"/></td>
										<td><button class="s" id="send_${p.id}"> <img width="16px" height="16px"
										src="${prefix}resources/css/images/icn_alert_success.png" alt="Send"/></button>
										<button class="x" id="del_${p.id}"> <img width="16px" height="16px"
										src="${prefix}resources/css/images/icn_trash.png" alt="Trash"/></button>
										<button class="edt" id="edt_${p.id}"> <img width="16px" height="16px"
										src="${prefix}resources/css/images/icn_edit.png" alt="Edit"/></button></td>								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<!--end of #tab1 -->

			</div>
			<!--end of .tab_container -->

		</article>
		<div class="clear"></div>

		<div class="spacer"></div>
	</section>
<!-- Ends code of admin page X-->
<%@ include file="../fragments/adminfooter.jspf"%>
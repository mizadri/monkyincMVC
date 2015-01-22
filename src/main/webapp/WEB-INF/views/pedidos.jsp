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
	
	/*function delPedido(id) {
		$.post("delPedido", {id : id,	csrf : "${e:forJavaScript(csrf_token)}"},
				function(data) {
			$("#del_" + id).parent().parent().remove();
		}); 
	}*/
	function sendPedido(id) {
		var tr = $("#r_"+id);
		$.post("editPedido", 
		{
			id : id,
			usuario : tr.children().children()[0].value,
			descripcion : tr.children().children()[1].value,
			cantidad : tr.children().children()[2].value,
			precio : tr.children().children()[3].value,
	
		},
				function(data) {
// 			$("#edt_" + id).parent().parent().update();
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
					<!--<li><a href="#tab2">Comentarios</a></li> (replicar div de tab1)-->
				</ul>
			</header>

			<div class="tab_container">
				<div id="tab1" class="tab_content">
					<table class="tablesorter">
						<thead>
							<tr>
								
								<th>Id</th>
								<th>Usuario</th>
								<th>Categoria</th>
								<th>cantidad</th>
								<th>precio</th>
								
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${pedidos}" var="p">
								<tr id="r_${p.id}">
										<td>${p.id}</td>
										<td><input text="submit" name="usuario" value="${p.usuario.nombre}" size="10" /></td>
										<td><input text="submit" name="descripcion" value="${p.producto.descripcion}"/></td>
										<td><input text="submit" name="cantidad" value="${p.cantidad}" size="10"/></td>
										<td><input text="submit" name="precio" value="${p.precio}" size="10"/></td>
										
							
										<input hidden="submit" name="id" value="${p.id}" />
										<td><button class="s" id="send_${p.id}">&#10004</button>
										<button class="x" id="del_${p.id}"> <image
										src="${prefix}resources/css/images/icn_trash.png" alt="Trash"/></button>
										<button class="edt" id="edt_${p.id}"> <image  
										src="${prefix}resources/css/images/icn_edit.png" alt="Edit"/></button></td></tr>
									
									<!--  <td>${u.id}</td>
									<td>${e:forHtmlContent(u.login)}</td>
									<td>${u.role}</td>
									<td>${u.correo}</td>
									<td><input type="image" src="${prefix}resources/css/images/icn_edit.png" title="Edit"></input>
										<input class="x" id="del_${u.id}" type="image" src="${prefix}resources/css/images/icn_trash.png" title="Trash"></input></td>-->
								</tr>
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
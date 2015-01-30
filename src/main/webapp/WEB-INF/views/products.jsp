<%@ include file="../fragments/adminheader.jspf"%>

	<!-- Begin code of admin page X-->
	<script type="text/javascript">
	$(function() {
		$(".x").click(function() {
			var id = $(this).attr("id").substring("del_".length);
			console.log("deleting", id);
			delProduct(id);
		});
		$(".s").click(function() {
			var id = $(this).attr("id").substring("send_".length);
			console.log("sending", id);
			sendProduct(id);
		});	
		$(".edt").click(function() {
			var id = $(this).attr("id").substring("edt_".length);
			$("input").attr("disabled", "disabled");
			$(this).parent().parent().find("input").removeAttr("disabled");
		});
		
		$("input").attr("disabled", "disabled");
	});
	
	function delProduct(id) {
		$.post("delProduct", {id : id,	csrf : "${e:forJavaScript(csrf_token)}"},
				function(data) {
			$("#del_" + id).parent().parent().remove();
		});
	}
	function sendProduct(id) {
		var tr = $("#r_"+id);
		$.post("editProduct", 
		{
			id : id,
			tipo : tr.children().children()[0].value,
			descripcion : tr.children().children()[1].value,
			precio : tr.children().children()[2].value,
			csrf : "${e:forJavaScript(csrf_token)}"
		},
				function(data) {
// 			$("#edt_" + id).parent().parent().update();
		location.reload(true);//Forces reload from server
		});
	}
</script>
	<section id="main" class="column">

		<article class="module width_3_quarter">
			<header>
				<h3 class="tabs_involved">Lista de Productos</h3>
				<ul class="tabs">
					<li><a href="#tab1">Productos</a></li>
					<!--<li><a href="#tab2">Comentarios</a></li> (replicar div de tab1)-->
				</ul>
			</header>

			<div class="tab_container">
				<div id="tab1" class="tab_content">
					<table class="tablesorter">
						<thead>
							<tr>
								<th style="width:1%">Id</th>
								<th style="width:10%">Tipo</th>
								<th style="width:15%">Nombre</th>
								<th style="width:5%">Precio</th>
								<th style="width:10%">Acciones</th>
								<th>Foto</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${products}" var="p">
								<tr id="r_${p.id}">
									<td>${p.id}</td>
									<td><input text="submit" name="tipo" value="${p.tipo}" size="8" /></td>
									<td><input text="submit" name="descripcion" value="${p.descripcion}" /></td>
									<td><input text="submit" name="precio" value="${p.precio}" size="4" /></td>
									<input hidden="submit" name="csrf" value="${csrf}" />
									<td><button class="s" id="send_${p.id}">&#10004</button>
									<button class="x" id="del_${p.id}"> <image
									src="${prefix}resources/css/images/icn_trash.png" alt="Trash"/></button>
									<button class="edt" id="edt_${p.id}"> <image  
									src="${prefix}resources/css/images/icn_edit.png" alt="Edit"/></button></td>
									<td><img src="${prefix}product/photo?id=${p.id}" style="width:80px; height:80px;"/></td>
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
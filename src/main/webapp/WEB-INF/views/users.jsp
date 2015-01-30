<%@ include file="../fragments/adminheader.jspf"%>

	<!-- Begin code of admin page X-->
	<script type="text/javascript">
	$(function() {
		$(".x").click(function() {
			var id = $(this).attr("id").substring("del_".length);
			console.log("deleting", id);
			delUser(id);
		});
		$(".s").click(function() {
			var id = $(this).attr("id").substring("send_".length);
			console.log("sendin", id);
			sendUser(id);
		});	
		$(".edt").click(function() {
			var id = $(this).attr("id").substring("edt_".length);
			$("input").attr("disabled", "disabled");
			$(this).parent().parent().find("input").removeAttr("disabled");
		});
		
		$("input").attr("disabled", "disabled");
	});
	
	function delUser(id) {
		$.post("delUser", {id : id,	csrf : "${e:forJavaScript(csrf_token)}"},
				function(data) {
			$("#del_" + id).parent().parent().remove();
		});
	}
	function sendUser(id) {
		var tr = $("#r_"+id);
		$.post("editUser", 
		{
			id : id,
			role : tr.children().children()[0].value,
			login : tr.children().children()[1].value,
			nombre : tr.children().children()[2].value,
			apellido : tr.children().children()[3].value,
			correo : tr.children().children()[4].value,
			telefono : tr.children().children()[5].value,
			direccion : tr.children().children()[6].value,
			csrf : "${e:forJavaScript(csrf_token)}"
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
				<h3 class="tabs_involved">Lista de usuarios</h3>
				<ul class="tabs">
					<li><a href="#tab1">Usuarios</a></li>
					<!--<li><a href="#tab2">Comentarios</a></li> (replicar div de tab1)-->
				</ul>
			</header>

			<div class="tab_container">
				<div id="tab1" class="tab_content">
					<table class="tablesorter">
						<thead>
							<tr>
								
								<th>Id</th>
								<th>Rol</th>
								<th>Login</th>
								<th>Nombre</th>
								<th>Apellido</th>
								<th>Correo</th>
								<th>Telefono</th>
								<th>Direccion</th>
								<th>Acciones</th>
								<th>Foto</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${users}" var="u">
								<tr id="r_${u.id}">
									<td>${u.id}</td>
									<td><input text="submit" name="role" value="${u.role}" size="7" /></td>
									<td><input text="submit" name="login" value="${e:forHtmlContent(u.login)}" size="10"/></td>
									<td><input text="submit" name="nombre" value="${e:forHtmlContent(u.nombre)}" size="8"/></td>
									<td><input text="submit" name="apellido" value="${e:forHtmlContent(u.apellido)}" size="8"/></td>
									<td><input text="submit" name="correo" value="${e:forHtmlContent(u.correo)}" /></td>
									<td><input text="submit" name="telefono" value="${e:forHtmlContent(u.telefono)}" size="10" /></td>
									<td><input text="submit" name="direccion" value="${e:forHtmlContent(u.direccion)}" /></td>
									<input hidden="submit" name="id" value="${u.id}" />
									<input hidden="submit" name="csrf" value="${csrf}" />
									<td><button class="s" id="send_${u.id}">&#10004</button>
									<button class="x" id="del_${u.id}"> <image
									src="${prefix}resources/css/images/icn_trash.png" alt="Trash"/></button>
									<button class="edt" id="edt_${u.id}"> <image  
									src="${prefix}resources/css/images/icn_edit.png" alt="Edit"/></button></td>
									<td><img src="${prefix}user/photo?id=${u.id}" style="width:80px; height:80px;"/></td>
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
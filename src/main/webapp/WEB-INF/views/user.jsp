<%@ include file="../fragments/header.jspf" %>
<div id="principal">

<h1>Editar usuario</h1>

<h1>Usuarios del sistema</h1>
<table class="users">
<thead>
	<tr><td>id<td>login<td>rol<td>hash<td>salt</tr>
</thead>
<tbody>
	<c:forEach items="${us}" var="u">
		<tr><td>${u.id}<td>${e:forHtmlContent(u.login)}<td>${u.role}
		<td><button class="x" id="del_${u.id}">x</button></tr>
	</c:forEach>
</tbody>	
</table>

<form method="POST">
		Inspeccionando usuario ${u.nombre}:
		<br><br>
		<input text="submit" name="role" value="${u.role}" />
		<input text="submit" name="login" value="${u.login}" />
		<input text="submit" name="nombre" value="${u.nombre}" />
		<input text="submit" name="apellido" value="${u.apellido}" />
		<input text="submit" name="correo" value="${u.correo}" />
		<input text="submit" name="telefono" value="${u.telefono}" />
		<input text="submit" name="direccion" value="${u.direccion}" />
		<input hidden="submit" name="id" value="${u.id}" />
		<input hidden="submit" name="csrf" value="${csrf}" />
		<button type="submit" name="upload" value="ok">Actualizar</button>
</form>

</div>
<%@ include file="../fragments/footer.jspf" %>

<%@ include file="../fragments/header.jspf" %>
<div id="principal">

<h1>Editar usuario</h1>

<form method="POST">
		Inspeccionando usuario ${u.nombre}:
		<br><br>
		<input text="submit" name="role" value="${u.role}" size="10" />
		<input text="submit" name="login" value="${u.login}" size="12"/>
		<input text="submit" name="nombre" value="${u.nombre}" size="10"/>
		<input text="submit" name="apellido" value="${u.apellido}" size="10"/>
		<input text="submit" name="correo" value="${u.correo}" />
		<input text="submit" name="telefono" value="${u.telefono}" size="12" />
		<input text="submit" name="direccion" value="${u.direccion}" />
		<input hidden="submit" name="id" value="${u.id}" />
		<input hidden="submit" name="csrf" value="${csrf}" />
		<button type="submit" name="upload" value="ok">Actualizar</button>
</form>

</div>
<%@ include file="../fragments/footer.jspf" %>

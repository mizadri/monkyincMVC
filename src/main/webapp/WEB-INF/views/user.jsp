<%@ include file="../fragments/header.jspf" %>
<div id="principal">

<h1>Formulario para subir un fichero</h1>

<form method="POST">
		Inspeccionando usuario ${u.nombre}:
		
		<input text="submit" name="nombre" value="${u.nombre}" />
		<input text="submit" name="email" value="${u.correo}" />
		<input text="submit" name="apellido" value="${u.apellido}" />
		<input hidden="submit" name="id" value="${u.id}" />
		<input hidden="submit" name="csrf" value="${csrf}" />
		<button type="submit" name="upload" value="ok">Actualizar</button>
</form>

</div>
<%@ include file="../fragments/footer.jspf" %>

<%@ include file="../fragments/header.jspf" %>
<div id="principal">

<h1>Editar usuarios del sistema</h1>

<table class="users">
<thead>
	<tr><td>id<td>login<td>rol</tr>
</thead>
<tbody>
	<c:forEach items="${users}" var="u">
		<tr><td>${u.id}<td>${e:forHtmlContent(u.login)}<td>${u.role}
		<td><button class="x" id="del_${u.id}">x</button></tr>
	</c:forEach>
</tbody>	
</table>

</div>
<%@ include file="../fragments/footer.jspf" %>

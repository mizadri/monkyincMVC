<%@ include file="../fragments/adminheader.jspf"%>

	<section id="main" class="column">

		<h4 class="alert_info">¡Bienvenido al panel de
			adiministración!</h4>

		<article class="module width_full">
			<header>
				<h2>Aquí podrás añadir mensajes para que aparezcan en la página principal.</h2>
			</header>
			<div class="module_content">
				<article class="post-editor">
				<script type="text/javascript" src="${prefix}resources/js/tinymce/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
tinymce.init({
    selector: "textarea",
    plugins: [
        "advlist autolink lists link image charmap print preview anchor",
        "searchreplace visualblocks code fullscreen"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
});
</script>
					<form method="post" action="addPost">
						<p class="post"><label for="author">Nombre del autor:</label></p>
						<input id="author" name="author" placeholder="" required type="text">
						<p class="contact"><label for="content">Mensaje de información:</label></p>
					    <textarea name="content" style="width:100%" maxlength="255"></textarea>
					    <br>
					    <input type="hidden" name="csrf" value="${csrf_token}"/>
					    <input class="buttom" name="submit"
							id="submit" value="Guardar post" type="submit">
					</form>
					
				</article>
				<div class="clear"></div>
			</div>
		</article>
		
		<div class="clear"></div>
		</section>
	<!-- Begin Footer -->
	<%@ include file="../fragments/adminfooter.jspf"%>
	<!-- End Footer -->
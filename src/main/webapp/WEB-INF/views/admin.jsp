<!DOCTYPE html>
<html lang="en-ES">
<head>
<meta charset="utf-8" />
<title>Panel de administraci&oacuten</title>

<link rel="stylesheet" href="resources/css/layout.css" type="text/css"
	media="screen" />
<!--[if lt IE 9]>
	<link rel="stylesheet" href="resources/css/ie.css" type="text/css" media="screen" />
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
<script src="resources/js/jquery-1.5.2.min.js" type="text/javascript"></script>
<script src="resources/js/hideshow.js" type="text/javascript"></script>
<script src="resources/js/jquery.tablesorter.min.js"
	type="text/javascript"></script>
<script type="text/javascript" src="resources/js/jquery.equalHeight.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".tablesorter").tablesorter();
	});
	$(document).ready(function() {

		//When page loads...
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show(); //Activate first tab
		$(".tab_content:first").show(); //Show first tab content

		//On Click Event
		$("ul.tabs li").click(function() {

			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab
			$(".tab_content").hide(); //Hide all tab content

			var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
			$(activeTab).fadeIn(); //Fade in the active ID content
			return false;
		});

	});
</script>
<script type="text/javascript">
	$(function() {
		$('.column').equalHeight();
	});
</script>

</head>


<body>

	<header id="header">
		<hgroup>
			<h1 class="site_title">
				<a href="index.html">Administraci&oacuten</a>
			</h1>
			<h2 class="section_title">Panel de control</h2>
			<div class="btn_view_site">
				<a href="home.html">Ver sitio</a>
			</div>
		</hgroup>
	</header>
	<!-- end of header bar -->

	<section id="secondary_bar">
		<div class="user">
			<p>
				Administrador(<a href="#">3 Mensajes</a>)
			</p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
		<div class="breadcrumbs_container">
			<article class="breadcrumbs">
				<a href="home.html">Administraci&oacuten del sitio</a>
				<div class="breadcrumb_divider"></div>
				<a class="current">Panel de control</a>
			</article>
		</div>
	</section>
	<!-- end of secondary bar -->

	<aside id="sidebar" class="column">
		<form class="quick_search">
			<input type="text" value="Búsqueda rápida"
				onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
		</form>
		<hr />
		<h3>Art&iacuteculos</h3>
		<ul class="toggle">
			<li class="icn_new_article"><a href="#">Nuevo art&iacuteculo</a></li>
			<li class="icn_edit_article"><a href="#">Editar
					art&iacuteculos</a></li>
			<li class="icn_categories"><a href="#">Categorias</a></li>
			<li class="icn_tags"><a href="#">Etiquetas</a></li>
		</ul>
		<h3>Usuarios</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="#">A&ntildeadir usuario</a></li>
			<li class="icn_view_users"><a href="#">Ver usuario</a></li>
			<li class="icn_profile"><a href="#">Mi perfil</a></li>
		</ul>
		<h3>Admin</h3>
		<ul class="toggle">
			<li class="icn_settings"><a href="#">Opciones</a></li>
			<li class="icn_security"><a href="#">Seguridad</a></li>
			<li class="icn_jump_back"><a href="#">Salir</a></li>
		</ul>

		<footer>
			<hr />
			<p>
				<strong>Copyright &copy; 2014 Last4One </strong>
			</p>
			<p>
				Tema por <a href="http://www.medialoot.com">MediaLoot</a>
			</p>
		</footer>
	</aside>
	<!-- end of sidebar -->

	<section id="main" class="column">

		<h4 class="alert_info">&iexclBienvenido al panel de
			adiministraci&oacuten!</h4>

		<article class="module width_full">
			<header>
				<h3>Estado</h3>
			</header>
			<div class="module_content">
				<article class="stats_graph">
					<img
						src="http://chart.apis.google.com/chart?chxr=0,0,3000&chxt=y&chs=520x140&cht=lc&chco=76A4FB,80C65A&chd=s:Tdjpsvyvttmiihgmnrst,OTbdcfhhggcTUTTUadfk&chls=2|2&chma=40,20,20,30"
						width="520" height="140" alt="" />
				</article>

				<article class="stats_overview">
					<div class="overview_today">
						<p class="overview_day">Hoy</p>
						<p class="overview_count">1,876</p>
						<p class="overview_type">Hits</p>
						<p class="overview_count">2,103</p>
						<p class="overview_type">Vistas</p>
					</div>
					<div class="overview_previous">
						<p class="overview_day">Ayer</p>
						<p class="overview_count">1,646</p>
						<p class="overview_type">Hits</p>
						<p class="overview_count">2,054</p>
						<p class="overview_type">Vistas</p>
					</div>
				</article>
				<div class="clear"></div>
			</div>
		</article>
		<!-- end of stats article -->

		<article class="module width_3_quarter">
			<header>
				<h3 class="tabs_involved">Gestor de contenido</h3>
				<ul class="tabs">
					<li><a href="#tab1">Posts</a></li>
					<li><a href="#tab2">Comentarios</a></li>
				</ul>
			</header>

			<div class="tab_container">
				<div id="tab1" class="tab_content">
					<table class="tablesorter" cellspacing="0">
						<thead>
							<tr>
								<th></th>
								<th>Nombre</th>
								<th>Categor&iacutea</th>
								<th>Creado el</th>
								<th>Acciones</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox"></td>
								<td>Lorem Ipsum Dolor Sit Amet</td>
								<td>Articulos</td>
								<td>5th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>Ipsum Lorem Dolor Sit Amet</td>
								<td>Freebies</td>
								<td>6th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>Sit Amet Dolor Ipsum</td>
								<td>Tutorials</td>
								<td>10th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>Dolor Lorem Amet</td>
								<td>Articles</td>
								<td>16th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>Dolor Lorem Amet</td>
								<td>Articles</td>
								<td>16th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- end of #tab1 -->

				<div id="tab2" class="tab_content">
					<table class="tablesorter" cellspacing="0">
						<thead>
							<tr>
								<th></th>
								<th>Comentario</th>
								<th>Publicado por</th>
								<th>Creado el</th>
								<th>Acciones</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox"></td>
								<td>Lorem Ipsum Dolor Sit Amet</td>
								<td>Mark Corrigan</td>
								<td>5th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>Ipsum Lorem Dolor Sit Amet</td>
								<td>Jeremy Usbourne</td>
								<td>6th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>Sit Amet Dolor Ipsum</td>
								<td>Super Hans</td>
								<td>10th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>Dolor Lorem Amet</td>
								<td>Alan Johnson</td>
								<td>16th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>Dolor Lorem Amet</td>
								<td>Dobby</td>
								<td>16th April 2011</td>
								<td><input type="image"
									src="resources/css/images/icn_edit.png" title="Edit"><input
									type="image" src="resources/css/images/icn_trash.png"
									title="Trash"></td>
							</tr>
						</tbody>
					</table>

				</div>
				<!-- end of #tab2 -->

			</div>
			<!-- end of .tab_container -->

		</article>
		<!-- end of content manager article -->

		<article class="module width_quarter">
			<header>
				<h3>Mensajes</h3>
			</header>
			<div class="message_list">
				<div class="module_content">
					<div class="message">
						<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
							dolor.</p>
						<p>
							<strong>John Doe</strong>
						</p>
					</div>
					<div class="message">
						<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
							dolor.</p>
						<p>
							<strong>John Doe</strong>
						</p>
					</div>
					<div class="message">
						<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
							dolor.</p>
						<p>
							<strong>John Doe</strong>
						</p>
					</div>
					<div class="message">
						<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
							dolor.</p>
						<p>
							<strong>John Doe</strong>
						</p>
					</div>
					<div class="message">
						<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
							dolor.</p>
						<p>
							<strong>John Doe</strong>
						</p>
					</div>
				</div>
			</div>
			<footer>
				<form class="post_message">
					<input type="text" value="Mensaje"
						onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
					<input type="submit" class="btn_post_message" value="" />
				</form>
			</footer>
		</article>
		<!-- end of messages article -->

		<div class="clear"></div>

		<article class="module width_full">
			<header>
				<h3>Publicar un nuevo art&iacuteculo</h3>
			</header>
			<div class="module_content">
				<fieldset>
					<label>T&iacutetulo</label> <input type="text">
				</fieldset>
				<fieldset>
					<label>Contenido</label>
					<textarea rows="12"></textarea>
				</fieldset>
				<fieldset style="width: 48%; float: left; margin-right: 3%;">
					<!-- to make two field float next to one another, adjust values accordingly -->
					<label>Categor&iacutea</label> <select style="width: 92%;">
						<option>Art&iacuteculos</option>
						<option>Tutoriales</option>
					</select>
				</fieldset>
				<fieldset style="width: 48%; float: left;">
					<!-- to make two field float next to one another, adjust values accordingly -->
					<label>Etiquetas</label> <input type="text" style="width: 92%;">
				</fieldset>
				<div class="clear"></div>
			</div>
			<footer>
				<div class="submit_link">
					<select>
						<option>Borrador</option>
						<option>Publicado</option>
					</select> <input type="submit" value="Publicar" class="alt_btn"> <input
						type="submit" value="Reiniciar">
				</div>
			</footer>
		</article>
		<!-- end of post new article -->

		<h4 class="alert_warning">Un mensaje de alerta</h4>

		<h4 class="alert_error">Un mensaje de error</h4>

		<h4 class="alert_success">Un mensaje de &eacutexito</h4>

		<article class="module width_full">
			<header>
				<h3>Estilos b&aacutesicos</h3>
			</header>
			<div class="module_content">
				<h1>Cabecera 1</h1>
				<h2>Cabecera 2</h2>
				<h3>Cabecera 3</h3>
				<h4>Cabecera 4</h4>
				<p>Cum sociis natoque penatibus et magnis dis parturient montes,
					nascetur ridiculus mus. Cras mattis consectetur purus sit amet
					fermentum. Maecenas faucibus mollis interdum. Maecenas faucibus
					mollis interdum. Cras justo odio, dapibus ac facilisis in, egestas
					eget quam.</p>

				<p>
					Donec id elit non mi porta <a href="#">link text</a> gravida at
					eget metus. Donec ullamcorper nulla non metus auctor fringilla.
					Cras mattis consectetur purus sit amet fermentum. Aenean eu leo
					quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.
				</p>

				<ul>
					<li>Donec ullamcorper nulla non metus auctor fringilla.</li>
					<li>Cras mattis consectetur purus sit amet fermentum.</li>
					<li>Donec ullamcorper nulla non metus auctor fringilla.</li>
					<li>Cras mattis consectetur purus sit amet fermentum.</li>
				</ul>
			</div>
		</article>
		<!-- end of styles article -->
		<div class="spacer"></div>
	</section>


</body>

</html>
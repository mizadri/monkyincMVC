<%@ include file="../fragments/adminheader.jspf"%>

	<section id="main" class="column">

		<h4 class="alert_info">¡Bienvenido al panel de
			adiministración!</h4>

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
		
		<div class="clear"></div>
	<!-- Begin Footer -->
	<%@ include file="../fragments/adminfooter.jspf"%>
	<!-- End Footer -->
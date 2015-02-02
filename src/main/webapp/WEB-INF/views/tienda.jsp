<%@ include file="../fragments/header.jspf"%>
	<!-- Begin Wrapper -->
	<div id="wrapper">
	<!-- Begin Inner -->
	<div class="inner">
		<div class="shell">
			<!-- Begin Main -->
			<div id="main">
				<div id="sidebar">
					<ul>
						<!-- Begin Widget -->
						<li class="widget">
							<h2>Categorias</h2>
							<ul>
								<li><a href="${prefix}camisetas" title="Category 1">Camisetas</a></li>
								<li><a href="${prefix}gorras" title="Category 2">Gorras</a></li>
								<li class="last"><a href="${prefix}bolsas" title="Category 3">Bolsas</a></li>
							</ul>
						</li>
						<!-- End Widget -->
					</ul>
				</div>

				<div id="content">
					<!-- Begin Content -->
					<div id="products">

						<c:forEach items="${prods}" var="p">
							<div class="product">
								<input type="hidden" name="prodid" value="${p.id}"></input> <a
									href="${prefix}pedido/${p.id}"><img
									src="${prefix}product/photo?id=${p.id}"
									style="width:234px; height:270px;"
									alt="First TShirt Product"></a>
								<div class="pr-info">
									<h4>${p.descripcion}</h4>
									<span class="pr-price"><span>&#8364; </span>${p.precio}</span>
								</div>
							</div>
						</c:forEach>

						<br />
						<div class="cl">&nbsp;</div>
					</div>
					<!-- End Content -->
				</div>
				</div>
				<div class="cl">&nbsp;</div>

				<!-- End Main -->
				<%@ include file="../fragments/footer.jspf"%>

				</html>
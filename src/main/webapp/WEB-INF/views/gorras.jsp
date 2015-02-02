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
								<li><a href="${prefix}camisetas" title="Category 1">Playeras</a></li>
								<li><a href="${prefix}gorras" title="Category 2">Gorras</a></li>
								<li class="last"><a href="${prefix}bolsas" title="Category 3">Bolsas</a></li>
							</ul>
						</li>
						<!-- End Widget -->
						<!-- Begin Widget -->
						<li class="widget">
							<h2>Buscar</h2>
							<div id="search">
								<form action="#" method="get" accept-charset="utf-8">
									<label>Palabras clave</label> <input class="blink"
										name="keyword" type="text"> <label>Categoria</label> <select
										size="1" name="category">
											<option value="default">-- Seleccione --</option>
											<option value="category1">Playeras</option>
											<option value="category2">Chamarras</option>
											<option value="category3">Gorras</option>
									</select>
										<div class="price">
											<label>Precio</label> <select size="1" name="price">
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>
												<option value="60">60</option>
												<option value="70">70</option>
												<option value="80">80</option>
												<option value="90">90</option>
												<option value="100">100</option>
											</select> <label>to:</label> <select size="1" name="to">
												<option value="50">50</option>
												<option value="60">60</option>
												<option value="70">70</option>
												<option value="80">80</option>
												<option value="90">90</option>
												<option value="100">100</option>
												<option value="200">200</option>
											</select>
											<div class="cl">&nbsp;</div>
										</div> <span class="button"><input value="Buscar"
											type="submit"></span>
										<div class="cl">&nbsp;</div>
								</form>
								<ul class="options">
									<li><a href="#" title="Advanced search">Búsqueda
												avanzada</a></li>
										<li><a href="#" title="Contact Customer Support">Contactar
												con atención al cliente</a></li>
								</ul>
							</div>
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
									style="width:234px; height:238px;"
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
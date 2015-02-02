			<%@ include file="../fragments/header.jspf"%>
			<!-- End Header -->
			<!-- Begin Shell -->
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
										<label>Palabras clave</label> <input class="blink" name="keyword" type="text"> <label>Categoria</label>
											<select size="1" name="category">
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
											</div> <span class="button"><input value="Buscar" type="submit"></span>
											<div class="cl">&nbsp;</div>
									</form>
									<ul class="options">
										<li><a href="#" title="Contact Customer Support">Contactar con atenciOn al cliente</a></li>
									</ul>
								</div>
							</li>
							<!-- End Widget -->
						</ul>
					</div>

					<div id="content">
						<!-- Begin Content -->
						<div class="form">
						<h1>Detalles del producto</h1>
						<form action="${prefix}addPedido" method="post">
							<img src="${prefix}/product/photo?id=${p.id}" style="width:234px; height:238px;" />
							<br></br><label>Modelo: </label>   ${producto.descripcion}
							<br><br><label>Precio: </label>  &#8364 ${producto.precio}
							<br><br><label>Cantidad</label>
							<input type="hidden" name="producto" value="${producto.id}"></input>
							<input type="number" name="cantidad" required style="width:40px"></input><br><br>
							<span class="button"><input name="submit" id="submit" value="Pedir" type="submit"></a></span>
						</form>
						</div>
						<!-- End Content -->
					</div>
					<div class="cl">&nbsp;</div>
					
					<!-- Begin Footer -->
					<%@ include file="../fragments/footer.jspf"%>
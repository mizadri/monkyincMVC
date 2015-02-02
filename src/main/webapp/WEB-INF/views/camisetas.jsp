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
						<li class="widget">
								<h2>Atención al cliente</h2>
								<div id="search">
								<br>
								<ul class="options">
									<li><a href="support" title="Contact Customer Support">Contactar
											con atencion al cliente</a></li>
								</ul>
								<br>
								<!-- PayPal Logo -->
								<table border="0" cellpadding="10" cellspacing="0"
									align="center">
									<tbody>
										<tr>
											<td align="center"></td>
										</tr>
										<tr>
											<td align="center"><a
												href="https://www.paypal.com/es/webapps/mpp/paypal-popup"
												title="Cómo funciona PayPal"
												onclick="javascript:window.open('https://www.paypal.com/es/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img
													src="https://www.paypalobjects.com/webstatic/mktg/logo-center/logotipo_paypal_pagos_seguros.png"
													border="0" alt="Seguro con PayPal" /></a>
											<div style="text-align: center">
													<a href="https://www.paypal.com/es/webapps/mpp/why"
														target="_blank"><font size="2" face="Arial"
														color="#0079CD"><strong>Cómo funciona
																PayPal</strong></font></a>
												</div></td>
										</tr>
									</tbody>
								</table>
								<!-- PayPal Logo -->
								</div>
							</li>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/template/controlsesion.jsp" %>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html >
<html>
<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<%@ include file="/WEB-INF/jsp/template/sidemenu.jsp"%>
				</div>
				<div class="top_nav">
					<%@ include file="/WEB-INF/jsp/template/navmenu.jsp"%>
				</div>
				<div class="right_col" role="main">
					<div class="">
						<div class="page-title">
							<div class="title_left">
								<h3>
									Productos <small>registrados en el sistema.</small>
								</h3>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											Listado <small> de productos</small>
										</h2>
										<div class="clearfix"></div>
									</div>
									<a href="producto/agregar" class="btn btn-success navbar-right" type="button" ><i class="glyphicon glyphicon-plus-sign"></i> Nuevo</a>
									<div class="table-responsive">
									<table id="datatable" class="table table-striped table-bordered table-responsive">
										<thead>							
												<th>ID</th>
												<th>NOMBRE</th>
												<th>DESCRIPCION</th>
												<th>TIPO</th>
												<th>MATERIAL</th>
												<th>DIMENSIONES</th>
												<th>COLOR</th>
												<th>PESO</th>
												<th>FOTO</th>
												<th>STOCK</th>
												<th>PRECIO</th>
												<th>#</th>
											
										</thead>
										<tbody>
											<c:forEach items="${listaProducto}" var="producto">
												<tr>
													<td>${producto.getIdProducto()}</td>
													<td>${producto.getNombre()}</td>
													<td>${producto.getDescripcion()}</td>
													<td>${producto.getTipo()}</td>
													<td>${producto.getMaterial().getNombre()}</td>
													<td>${producto.getDimensiones()}</td>
													<td style="background-color: ${producto.getColor()};padding:5px"> Color</td>
													<td>${producto.getPeso()}</td>
													<td>${producto.getFoto()}</td>
													<td>${producto.getStock()}</td>
													<td>${producto.getPrecio()}</td>
													<td><a
														href="producto/editar?idProducto=${producto.getIdProducto()}">Editar</a>
														<a
														href="EliminarProducto.do?idProducto=${producto.getIdProducto()}">Eliminar</a>
													</td>
													<tr>
											</c:forEach>
							</tbody>
						</table>
						</div>
						</div>
						</div>
						</div>
					</div></div>
												
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/template/includejs.jsp"%>
</body>
</html>
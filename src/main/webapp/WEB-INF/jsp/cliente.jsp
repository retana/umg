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
									Clientes <small>registrados en el sistema.</small>
								</h3>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											Listado <small> de clientes</small>
										</h2>
										<div class="clearfix"></div>
									</div>
									
									<div class="table-responsive">
	<table id="datatable" class="table table-striped table-bordered">
		<thead>
			<th>#</th>
			<th>Nombre</th>
			<th>Departamento</th>
			<th>Profesión</th>
			<th>País</th>
			<th>Tipo Documento</th>
			<th>Número de Documento</th>
			<th>Tel. Residencia</th>
			<th>Tel. Celular</th>
			<th>Dirección</th>
			<th>Residencia</th>
			<th>Usuario</th>
		</thead>
		<tbody>
			<c:forEach items="${listaCliente}" var="cliente">
				<tr>
					<td>${cliente.getIdCliente()}</td>
					<td>${cliente.getNombreCompleto()}</td>
					<td>${cliente.getDepartamento().getNombre()}</td>
					<td>${cliente.getProfesion().getNombre()}</td>
					<td>${cliente.getPais().getNombre()}</td>
					<td>${cliente.getTipoDocumento().getNombre()}</td>
					<td>${cliente.getNumeroDocumento()}</td>
					<td>${cliente.getTelefonoResidencia()}</td>
					<td>${cliente.getTelefonoCelular()}</td>
					<td>${cliente.getDireccion()}</td>
					<td>${cliente.getResidencia()}</td>
					<td>${cliente.getUsuario().getCorreo()}</td>
					<td>
						<a href="cliente/editar?idCliente=${cliente.getIdCliente()}">Editar</a>
						<a href="cliente/eliminar.do?idCliente=${cliente.getIdCliente()}">Eliminar</a>
					</td>
				</tr>
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
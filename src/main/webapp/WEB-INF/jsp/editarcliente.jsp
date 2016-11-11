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
											Editar <small> Clientes</small>
										</h2>
										<div class="clearfix"></div>
									</div>
	<form action="../cliente/editar.do" method="post" class="form-horizontal form-label-left" novalidate>
		<input type="hidden" name="txtIdCliente" value="${cliente.getIdCliente()}">
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Nombre Completo  <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
                       <input value="${cliente.getNombreCompleto()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtNombre" placeholder="Nombre" required="required" type="text" value="${producto.getNombre()}">
                     </div>
		</div>
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Número de Documento <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <input value="${cliente.getNumeroDocumento()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtNumeroDocumento" placeholder="Nombre" required="required" type="text" >
             </div>
		</div>
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Tel. Residencia <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <input value="${cliente.getTelefonoResidencia()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtTelefonoResidencia" placeholder="Nombre" required="required" type="text" >
             </div>
		</div>
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Tel. Celular <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <input value="${cliente.getTelefonoCelular()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtTelefonoCelular" placeholder="Nombre" required="required" type="text" >
             </div>
		</div>
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Dirección <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <input value="${cliente.getDireccion()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtDireccion" placeholder="Nombre" required="required" type="text" >
             </div>
		</div>
		
		<input type="hidden" name="txtOldCorreo" value="${cliente.getUsuario().getCorreo()}">
		
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Correo <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <input value="${cliente.getUsuario().getCorreo()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="correo" placeholder="Nombre" required="required" type="text" >
             </div>
		</div>
		
		
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Tipo de Documento <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <select name="txtTipoDocumento" class="col-md-6 col-sm-6 col-xs-12">
					<c:forEach items="${tiposDeDocumentos}" var="tipo" >
						<c:if test="${ tipo.getIdTipoDocumento()==cliente.getTipoDocumento().getIdTipoDocumento()}">
							<option value="${tipo.getIdTipoDocumento()}" selected>${tipo.getNombre()}</option>
						</c:if>
						<c:if test="${ tipo.getIdTipoDocumento()!=cliente.getTipoDocumento().getIdTipoDocumento()}">
							<option value="${tipo.getIdTipoDocumento()}" selected>${tipo.getNombre()}</option>
						</c:if>
					</c:forEach>
					
				</select>
             </div>
		</div>
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">País <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <select name="txtPais">
					<c:forEach items="${paises}" var="pais" >
						<c:if test="${pais.getIdPais()==cliente.getPais().getIdPais()}">
							<option value="${pais.getIdPais()}" selected>${pais.getNombre()}</option>
						</c:if>
						<c:if test="${pais.getIdPais()!=cliente.getPais().getIdPais()}">
							<option value="${pais.getIdPais()}">${pais.getNombre()}</option>
						</c:if>
					</c:forEach>
				</select>
             </div>
		</div>
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Departamento <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <select name="txtDepartamento">
					<c:forEach items="${departamentos}" var="departamento" >
						<c:if test="${departamento.getIdDepartamento()==cliente.getDepartamento().getIdDepartamento()}">
							<option value="${departamento.getIdDepartamento()}" selected>${departamento.getNombre()}</option>
						</c:if>
						<c:if test="${departamento.getIdDepartamento()!=cliente.getDepartamento().getIdDepartamento()}">
							<option value="${departamento.getIdDepartamento()}" >${departamento.getNombre()}</option>
						</c:if>
					</c:forEach>
				</select>
             </div>
		</div>
		<div class="item form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Profesión <span class="required">*</span></label>
			<div class="col-md-6 col-sm-6 col-xs-12">
               <select name="txtProfesion">
					<c:forEach items="${profesiones}" var="profesion" >
						<c:if test="${prefesion.getIdProfesion()==cliente.getProfesion().getIdProfesion() }">
							<option value="${profesion.getIdProfesion()}" selected>${profesion.getNombre()}</option>
						</c:if>
						<c:if test="${prefesion.getIdProfesion()!=cliente.getProfesion().getIdProfesion() }">
							<option value="${profesion.getIdProfesion()}" >${profesion.getNombre()}</option>
						</c:if>
					</c:forEach>
				</select>
             </div>
		</div>
		
		
		
										<div class="ln_solid"></div>
											<div class="form-group">
						                        <div class="col-md-6 col-md-offset-3">
						                          <input id="send" type="submit" class="btn btn-success" value="Editar">
						                        </div>
						                      </div>
	</form>
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
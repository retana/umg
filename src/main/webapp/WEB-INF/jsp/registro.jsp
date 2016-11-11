<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
<body class="login">
	<div>
		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">

					<form action="registro.do" method="post">
						<h1>Registro</h1>
						<input class="form-control" type="text" name="txtNombre" placeholder="Nombre Completo">
						<input class="form-control" type="text" name="txtNumeroDocumento" placeholder="Numero Documento">
						
						<input class="form-control" type="text" name="txtTelefonoResidencia" placeholder="Tel. Residencia">
						<input class="form-control" type="text" name="txtTelefonoCelular" placeholder="Tel. Celular">
						<input class="form-control" type="text" name="txtDireccion" placeholder="Dirección">
						<input class="form-control" type="email" name="correo" placeholder="Correo">
						<input class="form-control" type="password" name="txtContrasena" placeholder="Contraseña"> 
						<select name="txtTipoDocumento" class="form-control">
							<option >Seleccione tipo de documento...</option>
							<c:forEach items="${tiposDeDocumentos}" var="tipo">
								<option value="${tipo.getIdTipoDocumento()}">${tipo.getNombre()}</option>
							</c:forEach>
						</select>  
						 <select name="txtPais" class="form-control">
						 	<option>Seleccione País...</option>
								<c:forEach items="${paises}" var="pais">
									<option value="${pais.getIdPais()}">${pais.getNombre()}</option>
								</c:forEach>
							 </select> 
						<select name="txtDepartamento" class="form-control">
							<option>Departamento...</option>
							<c:forEach items="${departamentos}" var="departamento">
								<option value="${departamento.getIdDepartamento()}">${departamento.getNombre()}</option>
							</c:forEach>
						</select> 
						<select name="txtProfesion" class="form-control">
							<option>Profesión...</option>
							<c:forEach items="${profesiones}" var="profesion">
								<option value="${profesion.getIdProfesion()}">${profesion.getNombre()}</option>
							</c:forEach>
						</select>  
						<hr/>
						<div>
								<input type="submit" class="btn btn-default submit"	value="Registro">
							</div>
						<div class="clearfix"></div>
							<div class="separator">
				                <p class="change_link">Regresar
				                  <a href="${contextPath}/" class="to_register"> Inicio</a>
				                </p>
				
				                <div class="clearfix"></div>
				                <br />
				
				                <div>
				                  <h1><i class="fa fa-shopping-bag"></i> Madeiro Sales</h1>
				                  <p>©2016 All Rights Reserved. Madeiro Sales! Venta de muebles. Privacy and Terms</p>
				                </div>
				              </div>
					</form>
				</section>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/template/includejs.jsp"%>
</body>
</html>
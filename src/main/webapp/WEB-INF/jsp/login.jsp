<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/jsp/template/head.jsp" %>
<body class="login">
	<div>
		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
						<form action="login.do" method="post">
							<h1>Login</h1>
							<input class="form-control" type="email" name="correo" placeholder="Correo" required="true">
							<input class="form-control"  type="password" name="contrasena" placeholder="Contraseña" required="true">
							<div>
								<input type="submit" class="btn btn-default submit"	value="Login">
								<a class="reset_pass" href="#">Olvidaste tus credenciales?</a>
							</div>
							<div class="clearfix"></div>
							<div class="separator">
				                <p class="change_link">Eres nuevo por acá?
				                  <a href="registro" class="to_register"> Crea una cuenta</a>
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
	<%@ include file="/WEB-INF/jsp/template/includejs.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="login.do" method="post">
		Correo:<input type="text" name="correo">
		Contraseņa: <input type="password" name="contrasena">
		<input type="submit" 	value="Login">
	</form>
	<a href="registro">Registrar Cuenta</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD Usuario</title>
</head>
<body>
	<h1>Students Data</h1>
<form:form action="usuario.do" method="POST" commandName="usuario">
	<table>
		<tr>
			<td>IDUsuario</td>
			<td><form:input path="idUsuario" /></td>
		</tr>
		<tr>
			<td>Rol</td>
			<td><form:select  path="rol" >
					<form:options items="${roles}"  />
				</form:select>
			</td>
		</tr>
		<tr>
			<td>Correo</td>
			<td><form:input path="correo" /></td>
		</tr>
		<tr>
			<td>Contrasena</td>
			<td><form:input path="contrasena" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>
<%@ page session="true" %>
<%
	HttpSession miSesion=request.getSession();
	Object user = miSesion.getAttribute("usuario");
	if(user==null){
			response.sendRedirect("/VentasOnlineUmg/login");
	}
%>

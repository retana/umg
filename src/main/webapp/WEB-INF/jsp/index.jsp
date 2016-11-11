<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html >
<html>
<%@ include file="/WEB-INF/jsp/template/head.jsp" %>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
				<c:if test="${usuario==null}">
					<%@ include file="/WEB-INF/jsp/template/sidemenuproducto.jsp" %>
				</c:if>
				<c:if test="${usuario!=null}">
					<%@ include file="/WEB-INF/jsp/template/sidemenu.jsp" %>
				</c:if>					
				</div>
				<div class="top_nav">
					<c:if test="${usuario!=null}">
						<%@ include file="/WEB-INF/jsp/template/navmenu.jsp" %>
					</c:if>
					<c:if test="${usuario==null}">
						<%@ include file="/WEB-INF/jsp/template/navmenuproducto.jsp" %>
					</c:if>
				</div>
				<div class="right_col" role="main">
					<%@ include file="/WEB-INF/jsp/template/contentproducto.jsp" %>
				</div>
			</div>		
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/template/includejs.jsp" %>
</body>
</html>
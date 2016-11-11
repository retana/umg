<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
 <div class="navbar nav_title" style="border: 0;">
              <a href="" class="site_title"><i class="fa fa-shopping-bag"></i> <span>Madeiro Sales</span></a>
            </div>
            <div class="clearfix"></div>
            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
              	
                <img src="<spring:url value="/resources/images/user.png"/>" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bienvenido,</span>
                <h2>${cliente.getNombreCompleto()}</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->
            <br />
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <c:if test="${usuario.getRol().getIdRol()==2}">
                	<!-- Menú cliente -->
	                <ul class="nav side-menu">
	                  <li>
	                  	<a href="${contextPath}/dashboard"><i class="fa fa-dashboard"></i> Dashboard</a>
	                  </li>
	                  <li>
	                  	<a href="${contextPath}/"><i class="fa fa-image"></i> Productos </a>
	                  </li>
	                  <li>
	                  	<a href="${contextPath}/compra"><i class="fa fa-history"></i> Historila de Compras</span></a>
	                  </li>
	                  <li><a><i class="fa fa-bar-chart-o"></i> Informes <span class="fa fa-chevron-down"></span></a>
	                    <ul class="nav child_menu">
	                      <li><a href="tables.html">Facturas</a></li>
	                      <li><a href="tables_dynamic.html">Productos Comprados</a></li>
	                    </ul>
	                  </li>
	                  <li>
	                  	<a><i class="fa fa-cart-arrow-down"></i> Carrito De Compras</span></a>
	                  </li>
	                </ul>
                </c:if>
                <c:if test="${usuario.getRol().getIdRol()==1}">
                	<!-- Menú Administrador-->
	                <ul class="nav side-menu">
	                  <li>
	                  	<a href="${contextPath}/dashboard"><i class="fa fa-dashboard"></i> Dashboard</a>
	                  </li>
	                  <li>
	                  	<a href="${contextPath}/producto"><i class="fa fa-image"></i> Productos </a>
	                  </li>
	                  <li>
	                  	<a href="${contextPath}/cliente"><i class="fa fa-user"></i> Clientes</a>
	                  </li>
	                  <li>
	                  	<a href="${contextPath}/usuario"><i class="fa fa-users"></i> Usuarios</a>
	                  </li>
	                  <li><a><i class="fa fa-bar-chart-o"></i> Informes <span class="fa fa-chevron-down"></span></a>
	                    <ul class="nav child_menu">
	                      <li><a href="tables.html">Clientes</a></li>
	                      <li><a href="tables_dynamic.html">Productos</a></li>
	                    </ul>
	                  </li>
	                </ul>
                </c:if>
              </div>
            </div>
            <!-- /sidebar menu -->
          </div>
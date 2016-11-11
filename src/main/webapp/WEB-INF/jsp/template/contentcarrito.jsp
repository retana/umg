<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/template/controlsesion.jsp" %>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html >
<div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Carrito de Compra</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Buscar Producto...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>
	
            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_content">
                    <div class="row">
                      
                      <div class="clearfix"></div>
                      	<c:forEach items="${listaProducto}" var="producto">
                      	<div class="col-md-4 col-sm-5 col-xs-9 profile_details">
							<div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>Categoria: ${producto.getMaterial().getNombre()}</i></h4>
                            <div class="left col-xs-7">
                              <h2>${producto.getNombre()}</h2>
                              <p><strong>Descripción: </strong> ${producto.getDescripcion()}</p>
                              <ul class="list-unstyled">
                                <li><i class="fa fa-cube"></i> <strong>Dimensiones:</strong> ${producto.getDimensiones()} </li>
                                <li><i class="fa fa-paint-brush"></i> <strong>Color:</strong> ${producto.getColor()} </li>
                                <li><i class="fa fa-money"></i> <strong>Precio:</strong> Q.${producto.getPrecio()} </li>
                                <li><i class="fa fa-calculator" aria-hidden="true"></i> <strong>Stock:</strong> ${producto.getStock()} Unidades </li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                              <img src="<spring:url value="/resources/muebles/${producto.getFoto()}"/>" class="img-circle img-responsive">
                            </div>
                          </div>
                          <div class="col-xs-12 bottom text-center">
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <p class="ratings">
                                <a>4.0</a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star-o"></span></a>
                              </p>
                            </div>
                            <c:if test="${usuario!=null || usuario.getRol().getIdRol()==1}">
	                           <div class="col-xs-12 col-sm-6 emphasis">
	                             <button type="button" class="btn btn-primary btn-xs">
	                               <i class="fa fa-credit-card"> </i> Comprar
	                             </button>
	                             <a type="button" class="btn btn-danger btn-xs" href="eliminarCarrito.do?idProducto=${producto.getIdProducto()}" >
	                               <i class="fa fa-remove" > </i> Eliminar
	                             </a>
	                           </div>
                            </c:if>
                          </div>
                        </div>
						</div>
						</c:forEach>                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
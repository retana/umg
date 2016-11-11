<!DOCTYPE html >
<html>
<%@ include file="/WEB-INF/jsp/template/controlsesion.jsp" %>
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
									Productos <small>registrados en el sistema.</small>
								</h3>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											Editar <small> Producto</small>
										</h2>
										<div class="clearfix"></div>
									</div>

									<form action="../EditarProducto.do" method="post" class="form-horizontal form-label-left" novalidate>
										<input type="hidden" name="txtIdProducto" value="${producto.getIdProducto()}">
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Nombre <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                          <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtNombre" placeholder="Nombre" required="required" type="text" value="${producto.getNombre()}">
						                        </div>
											</div>
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtDescripcion">Descripción <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                          <textarea id="textarea" class="form-control col-md-7 col-xs-12"  name="txtDescripcion" placeholder="Descripción" required="required" >${producto.getDescripcion()}</textarea>
						                        </div>
											</div> 
										
										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtTipo">Estado <span class="required">*</span></label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<c:if test="${producto.getTipo().equals('Activo')}">
													Activo <input type="radio" class="flat" name="txtTipo" id="name" value="Activo" checked="" required /> 
					                          		No Activo <input type="radio" class="flat" name="txtTipo" id="name" value="No Activo" required />
					                          	</c:if>
					                          	<c:if test="${producto.getTipo().equals('No Activo')}">
					                          			Activo <input type="radio" class="flat" name="txtTipo" id="name" value="Activo" required /> 
					                          			No Activo <input type="radio" class="flat" name="txtTipo" id="name" value="No Activo" checked=""  required />
					                          	</c:if>
					                        </div>
										</div>
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtMaterial">Material <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                          <select id="name" class="control-label col-md-3 col-sm-3 col-xs-12" name="txtMaterial" required>
														<c:forEach items="${listaMaterial}" var="material">
															<option value="${material.getIdMaterial()}">${material.getNombre()}</option>	
														</c:forEach>
													 </select>
						                        </div>
											</div>
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtDimensiones">Dimensiones <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input value="${producto.getDimensiones()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtDimensiones" placeholder="Dimensiones" required="required" type="text">
						                        </div>
											</div>
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtColor">Color <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtColor" placeholder="Color" required="required" type="color" value="${producto.getColor()}">
						                        </div>
											</div>
										
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtPeso">Peso <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input value="${producto.getPeso()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtPeso" placeholder="Peso" required="required" type="text">
						                        </div>
											</div>
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtStock">Stock <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input value="${producto.getStock()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtStock" placeholder="Stock" required="required" type="number">
						                        </div>
											</div>
										
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtPrecio">Precio <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input value="${producto.getPrecio()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtPrecio" placeholder="Precio" required="required" type="number">
						                        </div>
											</div>
										<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtFoto">Foto <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input value="${producto.getFoto()}" id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtFoto" placeholder="Precio" required="required" type="file">
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
					</div>
				</div>

			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/template/includejs.jsp"%>
</body>
</html>

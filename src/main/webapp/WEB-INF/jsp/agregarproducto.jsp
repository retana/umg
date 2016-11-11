<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
									Productos <small>registro.</small>
								</h3>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											Agregar<small> Producto</small>
										</h2>
										<div class="clearfix"></div>
									</div>
										<form action="../AgregarProducto.do" method="get"  class="form-horizontal form-label-left" novalidate>
											<span class="section">Datos de Producto</span>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtNombre">Nombre <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                          <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtNombre" placeholder="Nombre" required="required" type="text">
						                        </div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtDescripcion">Descripción <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                          <textarea id="textarea" class="form-control col-md-7 col-xs-12"  name="txtDescripcion" placeholder="Descripción" required="required" ></textarea>
						                        </div>
											</div> 
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtTipo">Estado <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													Activo <input type="radio" class="flat" name="txtTipo" id="name" value="Activo" checked="" required /> 
						                          	No Activo <input type="radio" class="flat" name="txtTipo" id="name" value="No Activo" required />
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
						                      		<input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtDimensiones" placeholder="Dimensiones" required="required" type="text">
						                        </div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtColor">Color <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtColor" placeholder="Color" required="required" type="color">
						                        </div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtPeso">Peso <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtPeso" placeholder="Peso" required="required" type="text">
						                        </div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtStock">Stock <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtStock" placeholder="Stock" required="required" type="number">
						                        </div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtPrecio">Precio <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtPrecio" placeholder="Precio" required="required" type="number">
						                        </div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtFoto">Foto <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
						                      		<input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="txtFoto" placeholder="Precio" required="required" type="file">
						                        </div>
											</div>
											<div class="ln_solid"></div>
											<div class="form-group">
						                        <div class="col-md-6 col-md-offset-3">
						                          <input id="send" type="submit" class="btn btn-success" value="Guardar">
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
	<script type="text/javascript">
	$(document).ready(function() {
        var handleDataTableButtons = function() {
          if ($("#datatable").length) {
            $("#datatable").DataTable({
              dom: "Bfrtip",
              buttons: [
                {
                  extend: "copy",
                  className: "btn-sm"
                },
                {
                  extend: "csv",
                  className: "btn-sm"
                },
                {
                  extend: "excel",
                  className: "btn-sm"
                },
                {
                  extend: "pdfHtml5",
                  className: "btn-sm"
                },
                {
                  extend: "print",
                  className: "btn-sm"
                },
              ],
              responsive: true
            });
          }
        };

        TableManageButtons = function() {
          "use strict";
          return {
            init: function() {
              handleDataTableButtons();
            }
          };
        }();

        
        TableManageButtons.init();
      });
	</script>
</body>
</html>



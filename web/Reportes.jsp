<%-- 
    Document   : rImporteTotal
    Created on : 13/07/2020, 19:26:15
    Author     : gasto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="tipo_contenido"  content="text/html;" http-equiv="content-type" charset="utf-8">
        <!--BOOTSTRAP CSS-->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!--Codigo CSS Propio-->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <!--DATATABLE CSS-->
        <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
        <link rel="stylesheet" type="text/css" href="DataTables/DataTables-1.10.21/css/dataTables.bootstrap4.css">  
        <link rel="stylesheet" type="text/css" href="DataTables/Buttons-1.6.2/css/buttons.jqueryui.min.css">  
        <link rel="stylesheet" type="text/css" href="DataTables/Buttons-1.6.2/css/buttons.jqueryui.min.css">
        <link rel="icon" href="img/LavarelaLogo100.ico" sizes="16x16">
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs=" crossorigin="anonymous"></script>
        <title>Reportes LAVARELA</title>
    </head>
        <body class="fondo">
        <!--Comienza el NAV-->
        <nav class="navbar color-secondary">
            <a class="navbar-brand" href="#">
              <img src="img/LavarelaLogo10.png" class="navbar-logo" alt="">
              <span class="navbar-title">LAVANDERIA LAVARELA</span>
            </a>
            <ul class="btn-user">
                <div class="dropdown dropleft" style="" >
                <button class="btn btn-outline-light dropdown-toggle btn-user" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <img src="img/user1.png" alt="65" width="65">
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">
                        Usuario Administrador
                    </a>
                    <a class="dropdown-item" href="#">
                        ${usuario.getNombreUsuario()}
                    </a>
                    <small id="emailHelp" class="form-text text-muted">
                    <a href="register.jsp">Registrar un nuevo Empleado!</a> <br>
                </small>
                  <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="/LAVARELA.110534/index.jsp">Cerrar Sesión</a>
                </div>
             </div>
            </ul>
        </nav>
        <!--Comienza el NAV-->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-menu">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="btn btn-outline-light navbar-menu-btn" href="inicio.jsp">Inicio</a>
                    </li>
                    <li class="nav-item active">
                        <a class="btn btn-outline-light navbar-menu-btn" href="/LAVARELA.110534/ListarRegistrosServlet">Registros <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light navbar-menu-btn" href="/LAVARELA.110534/ListarServiciosServlet">Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light navbar-menu-btn" href="/LAVARELA.110534/ListarGastosServlet">Gastos</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light navbar-menu-btn" href="/LAVARELA.110534/ListarClientesServlet">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light navbar-menu-btn" href="/LAVARELA.110534/Reportes.jsp">Reportes</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!--Fin de NAV-->
        
        <center>    
            <h1><span class="badge title-reports">REPORTES LAVARELA</span></h1>
                <div class="container-reports" style="align-content: center">
                    <!--Reporte Ingresos Anual-->
                    <div class="container-form">
                        <h2><span class="badge title-registers">REPORTES INGRESOS</span></h2>
                        <div class="container-form-reports">
                            <h4><span style="text-align: center" class="badge badge-primary sombra">Ingresos Anuales</span></h4>     
                            <form method="GET" action="/LAVARELA.110534/rIngresosAnualesServlet">
                                <label class="label-reports">Seleccione el año:</label>
                                <input type="number" name="txtAnio" value="${txtAnio}" required="" min="2000" max="2040" class="input-reports"><br>
                                <input class="btn btn-reports" style="margin-left: 1px; border: none" type="submit" name="btnIngresoAnual" value="Generar Reporte">
                            </form>
                         </div>
                        <!--Reporte Ingresos Mensual-->
                        <div class="container-form-reports">
                            <form method="GET" action="/LAVARELA.110534/rIngresosServlet">
                                <h4><span style="text-align: center" class="badge badge-primary sombra">Ingresos entre Fechas</span></h4>
                                <label class="label-reports">Seleccione la fecha:</label><br>
                                <label class="label-reports">Desde:</label><input class="input-reports" type="date" name="dtFechaDesde" value="${dtFechaDesde}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                                <label class="label-reports">Hasta:</label><input class="input-reports" type="date" name="dtFechaHasta" value="${dtFechaHasta}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                                <input class="btn btn-primary btn-reports" type="submit" name="btnIngresos" value="Generar Reporte">
                            </form>   
                        </div>
                    </div> 

                <!--Reporte Gastos Anual-->
                <div class="container-form">
                    <h2><span class="badge title-costs">REPORTES GASTOS</span></h2>
                    <div class="container-form-reports">
                            <form class="" method="GET" action="/LAVARELA.110534/rGastosAnualesServlet">
                                <h4><span class="badge title-costs">Gastos Anuales</span></h4>
                                <label class="label-reports">Seleccione el año:</label>
                                <input class="input-reports" type="number" name="txtAnio" value="${txtAnio}" required="" min="2000" max="2040" ><br>
                                <input class="btn btn-reports-costs" type="submit" name="btnGastoAnual" value="Generar Reporte">
                            </form>
                    </div>
                    <!--Reporte Gastos Mensual-->
                    <div class="container-form-reports">
                        <form class="" method="GET" action="/LAVARELA.110534/rGastosServlet">
                            <h4><span class="badge title-costs">Gastos entre Fechas</span></h4>
                            <label class="label-reports">Seleccione la fecha:</label><br>
                            <label class="label-reports">Desde:</label><input class="input-reports" type="date" name="dtFechaDesde" value="${dtFechaDesde}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                            <label class="label-reports">Hasta:</label><input class="input-reports" type="date" name="dtFechaHasta" value="${dtFechaHasta}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                            <input class="btn btn-reports-costs" type="submit" name="btnGastos" value="Gastos entre Fechas">
                        </form>
                    </div>
                </div>


                <!--Reporte Servicios Anual-->
                <div class="container-form">
                    <h2><span class="badge title-services">REPORTES SERVICIOS</span></h2>
                    <div class="container-form-reports">
                        <h4><span class="badge title-services">Servicios utilizados Anuales</span></h4>
                        <form method="GET" action="/LAVARELA.110534/rServiciosAnualServlet">
                            <label class="label-reports">Seleccione el año:</label>
                            <input class="input-reports" type="number" name="txtAnio" value="${txtAnio}" required="" min="2000" max="2040"><br>
                            <input class="btn btn-reports-services" type="submit" name="btnGastoAnual" value="Generar Reporte">
                        </form>
                    </div>
                    <!--Reporte Gastos Mensual-->
                    <div class="container-form-reports">
                        <form method="GET" action="/LAVARELA.110534/rServiciosServlet">
                            <h4><span class="badge title-services">Servicios utilizados entre Fechas</span></h4>
                            <label class="label-reports">Seleccione la fecha:</label><br>
                            <label class="label-reports">Desde:</label><input class="input-reports" type="date" name="dtFechaDesde" value="${dtFechaDesde}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                            <label class="label-reports">Hasta:</label><input class="input-reports" type="date" name="dtFechaHasta" value="${dtFechaHasta}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                            <input class="btn btn-reports-services" type="submit" name="btnGastos" value="Servicios entre Fechas">
                        </form>
                    </div>
                </div>        
            </div>
        </center> 
            
            <center>
                <!-- Footer -->
                <footer class="page-footer footer-lavarela">
                      <div class="col-md-12 py-1">
                          <!-- Facebook -->
                          <a href="https://www.facebook.com/lavanderialavarela/" class="fb-ic">
                            <i  class="fab fa-facebook-f mr-md-5 fa-2x icon-footer"> </i>
                          </a>
                          <!--Instagram-->
                          <a href="https://www.instagram.com/lavanderia_lavarela_malagueno/" class="ins-ic">
                            <i class="fab fa-instagram mr-md-5 fa-2x icon-footer"> </i>
                          </a>
                          <!--Instagram-->
                          <a href="https://api.whatsapp.com/send?phone=+54 351 6378321&text=" class="ins-ic">
                              <i class="fab fa-whatsapp mr-md-5 fa-2x icon-footer"> </i>
                          </a>
                      </div>
                  <!-- Copyright -->
                  <div class="footer-copyright ">© 2020 Copyright:
                      <a class="" > ZAPATA GASTÓN-110534</a>
                  </div>
                  <!-- Copyright -->
                </footer>
                 <!-- Footer -->   
            </center>
        <!--Jquery, Popper, Bootstrap-->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js.js"></script>
        <script src="js/bootstrap.min.js"></script>
    <!--Datatables JS--> 
        <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
        <script type="text/javascript" src="DataTables/DataTables-1.10.21/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="DataTables/DataTables-1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <!-- Para usar botones en DATATABLES JS -->  
        <script src="DataTables/Buttons-1.6.2/js/dataTables.buttons.min.js"></script>  
        <script src="DataTables/JSZip-2.5.0/jszip.min.js"></script>   
        <script src="DataTables/pdfmake-0.1.36/pdfmake.min.js"></script>    
        <script src="DataTables/pdfmake-0.1.36/vfs_fonts.js"></script>
        <script src="DataTables/Buttons-1.6.2/js/buttons.html5.min.js"></script>
        <script src="DataTables/Buttons-1.6.2/js/buttons.print.min.js"></script>
        <script src="DataTables/Buttons-1.6.2/js/buttons.colVis.min.js"></script>
    <!--Codigo JS Propio-->   
        <script type="text/javascript" src="js/main.js"></script> 
</html>

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
        <nav class="navbar navbar-light p-1 celeste"  >
            <a class="navbar-brand" href="#">
              <img src="img/LavarelaLogo10.png" width="75" height="70" class="d-inline-block align-middle" alt="">
              <span class="sombra mifuente">LAVANDERIA LAVARELA</span>
            </a>
            <ul>
                <div class="dropdown align-middle dropleft" style="" >
                <button class=" btn btn-outline-light dropdown-toggle " style=" border: none" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <img src="img/user1.png" alt="80" width="80">
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">
                        Usuario Empleado
                    </a>
                    <a class="dropdown-item" href="#">
                        ${usuario.getNombreUsuario()}
                    </a>
                    <small id="emailHelp" class="form-text text-muted">
                    
                </small>
                  <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="/LAVARELA.110534/index.jsp">Cerrar Sesión</a>
                </div>
             </div>
            </ul>
        </nav>
        <!--Comienza el NAV-->
        <nav class="navbar navbar-expand-lg navbar-light bg-dark verdeAqua sombra">
            <a class="btn btn-outline-light" style="border: none" href="inicio.jsp">Inicio</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="btn btn-outline-light" style="margin-left: 1px; border: none" href="/LAVARELA.110534/ListarRegistrosServlet">Registros <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light" style="margin-left: 1px; border: none" href="/LAVARELA.110534/ListarServiciosServlet">Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light" style="margin-left: 1px; border: none" href="/LAVARELA.110534/ListarGastosServlet">Gastos</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light" style="margin-left: 1px; border: none" href="/LAVARELA.110534/ListarClientesServlet">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light" style="margin-left: 1px; border: none" href="/LAVARELA.110534/Reportes.jsp">Reportes</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!--Fin de NAV-->
            <center> 
            <body>    
            <div class="container-fluid">
                <div style="height:15px"></div>
                <h1><span style="text-align: center; background-color: #91c6bf; color: white" class="badge sombra">REPORTES LAVARELA</span></h1>
                <br>
                <br>
                <div class=" container-fluid row" style="align-content: center">
                    
                <!--Reporte Ingresos Anual-->
                <div class="col-lg-4" style="border:double; background-color: #91c6bf; border-radius: 10px; border-color:#1F515B">
                    
                    <h2><span style="text-align: center" class="badge badge-primary sombra">REPORTES INGRESOS</span></h2>
                    <div style="height:10px"></div>
                    <div style="text-align: left">
                        <div class="borderReport">
                    <h4><span style="text-align: center" class="badge badge-primary sombra">Ingresos Anuales</span></h4>     
                <form class="" method="GET" action="/LAVARELA.110534/rIngresosAnualesServlet">
                    <label>Seleccione el año:</label>
                    <input type="number" name="txtAnio" value="${txtAnio}" required="" min="2000" max="2040" class="form-horizontal col-3 "><br>
                <input class="btn btn-primary btn-sm sombra" style="margin-left: 1px; border: none" type="submit" name="btnIngresoAnual" value="Generar Reporte">
                </form>
                
                        </div>
                <!--Reporte Ingresos Mensual-->
                <br>
                <div class="borderReport">
                <form class="" method="GET" action="/LAVARELA.110534/rIngresosServlet">
                    <h4><span style="text-align: center" class="badge badge-primary sombra">Ingresos entre Fechas</span></h4>
                    <label>Seleccione la fecha:</label><br>
                    <label>Desde:</label><input type="date" name="dtFechaDesde" value="${dtFechaDesde}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                    <label>Hasta:</label><input type="date" name="dtFechaHasta" value="${dtFechaHasta}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                    <input class="btn btn-primary btn-sm sombra" style="margin-left: 1px; border: none" type="submit" name="btnIngresos" value="Generar Reporte">
                </form>   
                </div>
                </div>
                <br>
                </div> 
                </body>
                
                <!--Reporte Gastos Anual-->
                <div class="col-lg-4" style="border:double; background-color: #91c6bf; border-radius: 10px; border-color:#1F515B">
                    <h2><span class="badge badge-primary azul sombra">REPORTES GASTOS</span></h2>
                    <div style="height:10px"></div>
                    <div style="text-align: left">
                        <div class="borderReport">
                            <h4><span class="badge badge-primary azul sombra">Gastos Anuales</span></h4>
                <form class="" method="GET" action="/LAVARELA.110534/rGastosAnualesServlet">
                    <label>Seleccione el año:</label>
                    <input type="number" name="txtAnio" value="${txtAnio}" required="" min="2000" max="2040" class="form-horizontal col-3 "><br>
                <input class="btn btn-primary azul btn-sm sombra" style="margin-left: 1px; border: none" type="submit" name="btnGastoAnual" value="Generar Reporte">
                </form>
                        </div>
                <br>
     
                <!--Reporte Gastos Mensual-->
                <form class="" method="GET" action="/LAVARELA.110534/rGastosServlet">
                    <div class="borderReport">
                        <h4><span class="badge badge-primary azul sombra">Gastos entre Fechas</span></h4>
                    <label>Seleccione la fecha:</label><br>
                    <label>Desde:</label><input type="date" name="dtFechaDesde" value="${dtFechaDesde}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                    <label>Hasta:</label><input type="date" name="dtFechaHasta" value="${dtFechaHasta}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                <input class="btn btn-primary azul btn-sm" style="margin-left: 1px; border: none" type="submit" name="btnGastos" value="Gastos entre Fechas">
                </form>
                    </div>
                </div>
                <br>
                </div>
                
                
                <!--Reporte Servicios Anual-->
                <div class="col-lg-4" style="border:double; background-color: #91c6bf; border-radius: 10px; border-color:#1F515B">
                    <h2><span class="badge badge-info sombra">REPORTES SERVICIOS</span></h2>
                    <div style="height:10px"></div>
                    <div style="text-align: left">
                        <div class="borderReport">
                            <h4><span class="badge badge-info sombra">Servicios utilizados Anuales</span></h4>
                <form class="" method="GET" action="/LAVARELA.110534/rServiciosAnualServlet">
                    <label>Seleccione el año:</label>
                    <input type="number" name="txtAnio" value="${txtAnio}" required="" min="2000" max="2040" class="form-horizontal col-3 "><br>
                <input class="btn btn-info btn-sm sombra" style="margin-left: 1px; border: none" type="submit" name="btnGastoAnual" value="Generar Reporte">
                </form>
                        </div>
                <br>
                <!--Reporte Gastos Mensual-->
                <form class="" method="GET" action="/LAVARELA.110534/rServiciosServlet">
                    <div class="borderReport">
                        <h4><span class="badge badge-info sombra">Servicios utilizados entre Fechas</span></h4>
                    <label>Seleccione la fecha:</label><br>
                    <label>Desde:</label><input type="date" name="dtFechaDesde" value="${dtFechaDesde}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                    <label>Hasta:</label><input type="date" name="dtFechaHasta" value="${dtFechaHasta}" onkeydown="return false" required="" min="2020-01-01" max="2040-12-31"><br>
                <input class="btn btn-info btn-sm" style="margin-left: 1px; border: none" type="submit" name="btnGastos" value="Servicios entre Fechas">
                </form>
                    </div>
                </div>
                </div>        
                
            </div>
            </div>
            </center> 
        
            
            <center>
            <div style="height:95px"></div>
            <!-- Footer -->
            <footer class="page-footer font-small cyan darken-3 celeste">
             <div style="height:18px"></div>
              <div class="col-md-12 py-1">
                  <!-- Facebook -->
                  <a href="https://www.facebook.com/lavanderialavarela/" class="fb-ic">
                    <i  class="fab fa-facebook-f white-text mr-md-5 mr-3 fa-2x"> </i>
                  </a>
                  <!--Instagram-->
                  <a href="https://www.instagram.com/lavanderia_lavarela_malagueno/" class="ins-ic">
                    <i class="fab fa-instagram white-text mr-md-5 mr-3 fa-2x"> </i>
                  </a>
                  <!--Instagram-->
                  <a href="https://api.whatsapp.com/send?phone=+54 351 6378321&text=" class="ins-ic">
                    <i class="fab fa-whatsapp white-text mr-md-5 mr-3 fa-2x"> </i>
                  </a>
              </div>
          <!-- Copyright -->
          <div class="footer-copyright letraVerdeAqua text-center mr-md-5 py-2">© 2020 Copyright:
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

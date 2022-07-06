<%-- 
    Document   : altaGasto
    Created on : 28/05/2020, 17:19:02
    Author     : gasto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
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
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs=" crossorigin="anonymous"></script>
        <title>Alta Gasto</title>
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
            
            <div class="container-new-costs" >
                <h1><span class="badge title-new" >NUEVO GASTO</span></h1>         
                <form class="modal-body" method="POST" action="/LAVARELA.110534/AgregarGastoServlet">
                    <input class="input-new" type="text" name="txtIdGasto" hidden="" value="${idGasto}" placeholder="Descripción"/>
                    <label><span style="color: white">Ingrese el nombre del gasto</span></label>
                    <input class="input-new" type="text" name="txtDescripcion" value="${descripcion}" placeholder="Descripción"  required=""/>
                    <br>
                    <label><span style="color: white">Ingrese el importe</span></label>
                    <input class="input-new" type="number" name="txtImporte" value="${importe}" placeholder="Importe" required="" min="0" max="99999" step="any"/>
                    <br>
                    <label><span style="color: white">Cómo se pago?</span></label>
                    <select class="input-new" name ="idFormaPago" placeholder="idFormaPago" />
                        <c:forEach items="${Listado}" var="x">
                            <option value="${x.idFormaPago}">${x.formaPago}</option>
                        </c:forEach>
                    </select>   
                    <br>
                    <center><button type="submit" class="btn btn-add">Agregar</button></center>
                </form>
            </div>
                    
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
    </body>
            <!--Jquery, Popper, Bootstrap-->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js.js"></script>
        <script src="js/bootstrap.min.js"></script>
    <!--Datatables JS--> 
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

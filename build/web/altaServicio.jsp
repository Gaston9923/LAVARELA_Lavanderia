

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Agregar nuevo servicio LAVARELA</title>
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
        
    
        <div style="height:40px"></div>
        <div class="container col-sm-4 p-5" style="border:double; background-color: #17A2B8; border-radius: 10px; border-color:#17A2B8; opacity: 0.9">
        <h1 class="text-center"><span class="badge badge-info sombra align-text-top">NUEVO SERVICIO</span></h1>
        <div style="height:16px"></div>

        <form class="form-horizontal col-sm-14" method="POST" action="/LAVARELA.110534/AgregarServicioServlet">
            <input type="text" name="txtIdServicio" hidden="" value="${idServicio}" class="" />
            <span class="sombra" style="color: white">Nombre del Servicio</span>
            <input type="text" name="txtServicio" value="${servicio}" required="" maxlength="30" placeholder="Servicio" class="form-control col-md-14"/>
            <br>
            <span class="sombra" style="color: white">Indique el precio del Servicio</span>
            <input type="number" name="txtPrecio" value="${precio}" placeholder="Precio" required="" min="0" step="any" class="form-control col-md-14"/>
            <br>
            <center><button type="submit" class="btn btn-light sombra" >Agregar</button></center>
        </form>
        </div>
    
    </body>
        <div style="height:100px"></div>
        <center>
            <!-- Footer -->
            <footer class="page-footer font-small cyan darken-3 celeste MiFooter" >
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
    
        <script src="js/jquery-3.4.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</html>

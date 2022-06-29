<%-- 
    Document   : listadoRegistros
    Created on : 10/06/2020, 21:01:15
    Author     : gasto
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>

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

        <title>Registros LAVARELA</title>
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
            

        <!--TABLA DE REGISTROS-->

        <div style="height:40px"></div>          
        <div class="container-fluid col-sm-10" style="background-color: white">
            <button type="button" class="btn btn-info sombra float-right" style="text-align: right; vertical-align: top">
                Fichas de Hoy: <span class="badge badge-light"> ${fichas}</span>
                </button>
            <h1 class="text-center"> <span class="badge badge-primary sombra">TABLA DE REGISTROS</span></h1>
            <div class="">
                <div class="">
                    <a class="btn verdeManzana" href="/LAVARELA.110534/AgregarRegistroServlet">Nuevo Registro</a>         
                        <form method="GET" action="/LAVARELA.110534/FiltrarRegistroServlet">
                            <div class="container row col-lg-14">
                            <input class="col-lg-1" type="date" name="dtFechaDesde" required="" value="${dtFechaDesde}">
                            <input class="col-lg-1" type="date" name="dtFechaHasta" required="" value="${dtFechaHasta}">
                            <input class="btn btn-dark" type="submit" name="btnFiltrar" value="Filtrar">
                            </div>
                            
                        </form> 
                    <table id="tablaRegistros" class="table table-striped table-hover table-bordered">
                        
                        <div style="height:4px"></div>
                        <thead class="theadR" >
                            <tr>
                                <th scope="col" class="text-center border-dark sombra">N°Registro</th>
                                <th scope="col" class="text-center border-dark sombra">Usuario</th>
                                <th scope="col" class="text-center border-dark sombra">Cliente</th>
                                <th scope="col" class="text-center border-dark sombra">Nro. Servicios</th>  
                                <th scope="col" class="text-center border-dark sombra">Estado Pago</th>
                                <th scope="col" class="text-center border-dark sombra">Estado Servicio</th>
                                <th scope="col" class="text-center border-dark sombra">Fecha</th>
                                <th scope="col" class="text-center border-dark sombra">Acciones</th>
                            </tr>    
                        </thead>
                        <tbody >
                            <c:forEach items="${listadoR}" var="i">
                                <tr class="text-center">
                                    <td scope="row">N°${i.idRegistro}<a title="Ver detalles del registro N°${i.idRegistro} " class="btn btn-info btn-sm" href="/LAVARELA.110534/ListarDetallesRegistroServlet?idRegistro=${i.idRegistro}"></i>
                                            <img src="img/detalle5.png" width="17" height="18" class="d-inline-block align-middle " style="color: white" alt="">
                                        </a>
                                    </td>
                                    <td scope="row" >${i.nombreUsuario}</td>
                                    <td scope="row" >${i.cliente}</td>
                                    <td scope="row" >${i.cantidadServ}</td>
                                    <td scope="row" ><span class="badge badge-primary azul">${i.estadoPago}</span></td>
                                    <td scope="row" >
                                        <form method="GET" action="">
                                        ${i.estadoServ}
                                        <a class="" title="Servicio Completado" href="/LAVARELA.110534/ActualizarEstadoServlet?idRegistro=${i.idRegistro}"><i class="fas fa-check-square"></i></a>
                                        <form method="GET" action="">   
                                            <a class="" title="Servicio Incompleto" href="/LAVARELA.110534/ActualizarEstadoIncompletoServlet?idRegistro=${i.idRegistro}"><i style="color: red" class="fas fa-times-circle"></i></i></a>
                                        </form>
                                        </form>   
                                    </td>
                                    <td scope="row" >${i.fecha}</td>      
                                    <td scope="row" >
                                        <div class='text-center'>
                                            <div classs='btn-group'>
                                                <a class="btn btn-primary azul btn-sm" title="Editar Registro Nro° ${i.idRegistro}" href="/LAVARELA.110534/AgregarRegistroServlet?idRegistro=${i.idRegistro}"><i class='fas fa-pencil-alt' aria-hidden='true'></i></a>
                                                <a id="btnEliminar" class="btn btn-danger btn-sm" title="Eliminar registro Nro° ${i.idRegistro} " onclick="eliminar(${i.idRegistro})" href="#"><i class='fa fa-trash' aria-hidden='true'></i></a>
                                                <a class="btn btn-info btn-sm" title="Agregar Servicio" onclick="" href="/LAVARELA.110534/AgregarDetalleRegistroServlet?idRegistro=${i.idRegistro}"><i class="fa fa-plus-circle" aria-hidden="true"></i> Servicio</a>
                                            </div>
                                        </div>
                                    </td>              
                                </tr>
                            </c:forEach>
                        </tbody>          
                    </table>
                </div>  
            </div>
        </div>
    </body>
        <!--TABLA DE REGISTROS-->
    <center>
        <div style="height:70px"></div>
        <!-- Footer -->
        <footer class=" page-footer font-small cyan darken-3 celeste MiFooter" >
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
</body>
<script>

    function eliminar(idRegistro) {

        if (confirm("Esta seguro que desea eliminar el registro "+idRegistro+"?")) {
            window.location = "/LAVARELA.110534/EliminarRegistroServlet?idRegistro=" + idRegistro;
        }
    }

</script>

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

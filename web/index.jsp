
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lavanderia LAVARELA!</title>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="icon" href="img/LavarelaLogo100.ico" sizes="16x16">
    </head>
      
    <body class="container-login">
            <!-- Default form login -->
            <form method="POST" class="text-center p-5" style="border:double ; border-radius: 10px; border-color:black; background-color:white;" action="/LAVARELA.110534/LoginServlet">
                <h2 class="text-center"><span class="badge badge-primary">BIENVENIDO A LAVARELA</span></h2>
                <p class=" h3 mb-4">INICIO SESIÓN</p>
                <img src="img/LogoLavarela.png" width="140" >
                <p class="h5 mb-4">Ingresa tu Usuario y Contraseña!</p>


                <!-- Email -->
                <input type="email" 
                           id="email" 
                           class="form-control col-md-12"  
                           name="txtUsuario" 
                           aria-describedby="emailHelp" 
                           placeholder="Usuario"
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]){8,20}"
                           title="Debe contener al entre 8 y 20 caracteres, sólo números o letras"
                           required="Debe ingresar su usuario!"
                           />
                <br>
                <!-- Password -->
                <div class="form-group ">
                    <input type="password" 
                           id="psw" 
                           class="form-control col-md-12" 
                           name="txtPass"
                           placeholder="Contraseña"
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]){8,20}"
                           title="Debe contener al menos un número, una letra mayúscula, una letra minúscula y más de 8 caracteres"
                           required=""
                           />

                </div>

                <div class="d-flex justify-content-around">
                    <div>
                        <!-- Recordarme -->
                    </div>
                </div>

                <!-- Sign in button -->
                <button type="submit" class="btn btn-primary">Ingresar</button>
            </form>
<!-- Default form login -->
        </div>      
            <script src="js/jquery-3.4.1.slim.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
        </body>
</html>

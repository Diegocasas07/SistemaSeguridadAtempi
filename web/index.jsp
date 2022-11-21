<%-- 
    Document   : index
    Created on : 12 nov 2022, 16:33:36
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10" >
                <div class="card-body ">
                    <form class="form-sign" action="Validarusuario" method="POST">

                        <div class="form-group text-center">
                            <img src="img/logo-grey-sticky (1).png" alt="70" width="170"/>
                            <label>Bienvenido al Sistema</label>

                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="txtusuario" class="form-control" >

                        </div>
                        <div class="form-group">

                            <label>Contraseña</label>
                            <input type="password" name="txtcontrasena" class="form-control" >
                        </div>
                        <br>
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>
       <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
        
        
    </body>
</html>

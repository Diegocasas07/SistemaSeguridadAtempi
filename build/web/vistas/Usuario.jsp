<%-- 
    Document   : RegistroUsuario
    Created on : 12 nov 2022, 22:25:55
    Author     : Diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilomenu.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Registro Usuario</title>
    </head>
    <body>
        <header>
            <div class="dropdown">
                <button style="border: none" class="btn btn-outline-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    ${usuario.getNombre()}
                </button>
                <ul class="dropdown-menu dropdown-menu-dark text-center">
                    <li><a class="dropdown-item active" href="#">
                            <img src="img/Usuarios-removebg-preview.png" alt="80" width="80"/>

                        </a></li>
                    <li><a class="dropdown-item" href="#">${usuario.getUsuario()}</a></li>
                    <li><a class="dropdown-item" href="#">${usuario.getUsuario()}@atempi.com.co</a></li>
                    <div class="dropdown-divider"></div>
                    <form action="Validarusuario" method="post">

                        <li><button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button></li>

                    </form>
                </ul>
            </div>
            <div class="contenedor">
                <img src="img/logo-grey-sticky (1).png" style="width: 90px ; height: 40px;"/>
                <nav>
                    <a href="Controlusuario?menu=Principal">Inicio</a>  
                    <a href="Controlusuario?menu=RegistroUsuario&accion=Listar">Registro Usuario</a> 
                    <a href="Controlusuario?menu=RegistroEmpleado&accion=Listare">Registro Empleado</a> 
                    <a href="Controlusuario?menu=Dotacion">Dotacion</a>
                    <a href="Controlusuario?menu=Bodega&accion=Listarp">Bodega</a> 
                   


                </nav>

            </div>

        </header>

        <div class="d-flex" >
            <div class="card col-sm-8">

                <div class="card-body">
                    
                      <form action="Controlusuario?menu=Usuario&accion=default" method="Post">
                            <div class="form-group">

                                <label>Cedula</label>
                                <input type="text"  name="txtcedulaemp" class="form-control"placeholder="Documento de Identificacion"><br>
                                <button type="submit" name="accion" value="BuscarEmpleado" class="btn btn-outline-info">Buscar</button>
                            </div>
                        </form>

                    <form action="Controlusuario?menu=RegistroUsuario" method="post">

                      
                        <div class="form-group">

                            <label>Nombre Completo</label>
                            <input type="text"  value="${buscaem.getPrimer_nombre()} ${buscaem.getSegundo_nombre()} ${buscaem.getPrimer_apellido()} ${buscaem.getSegundo_apellido()}" name="txtnombrecomp" class="form-control"placeholder="Nombre Completo">
                        </div>
                        <div class="form-group">

                            <label>Estado</label>
                            <input type="text"  name="txtestadous" class="form-control"placeholder="1/0">
                        </div>
                        <div class="form-group">

                            <label>Usuario</label>
                            <input type="text" value="${usuarioedit.getUsuario()} ${buscaem.getPrimer_nombre()}${buscaem.getSegundo_nombre()}${buscaem.getPrimer_apellido()}${buscaem.getSegundo_apellido()}"name="txtusuarious" readonly="readonly" class="form-control" placeholder="@atempi.com.co">

                        </div>
                        <div class="form-group">

                            <label>Contraseña</label>
                            <input type="text"  name="txtcontrasenaus" class="form-control"placeholder="Contraseña">
                        </div>
                        <div class="form-group">

                            <label>Cargo</label>
                            <input type="textbox"  name="txtcargous" class="form-control" placeholder="Cargo">

                        </div>
                        <br>                        
                        <input type="submit" name="accion" value="Regresar" class="btn btn-danger">
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">


                    </form>
                </div>


            </div>





        </div> 






        <script src="js/menujsp.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>

    </body>
</body>
</html>

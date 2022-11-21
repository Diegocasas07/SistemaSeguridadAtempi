<%-- 
    Document   : Dotacion
    Created on : 12 nov 2022, 22:26:38
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

        <style>
            
            
            @media print{
                
                .datos1,.btn, .accion, .encabezado{
                    
                    display: none;
                }
                
            }
            
        </style>
        
        <title>Registro Usuario</title>
    </head>
    <body>
        <header class="encabezado">
            <div class="dropdown">
                <button style="border: none" class="btn btn-outline-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    ${usuario.getNombre()}
                </button>
                <ul class="dropdown-menu dropdown-menu-dark text-center">
                    <li><a class="dropdown-item active" href="#">
                            <img src="img/Usuarios-removebg-preview.png" alt="80" width="80"/>

                        </a></li>
                    <li><a class="dropdown-item" href="#">${usuario.getUsuario()}</a></li>
                    <li><a class="dropdown-item" href="#">Usuario@gmail.com</a></li>
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
                    <a href="Controlusuario?menu=Dotacion&accion=default">Dotacion</a>
                    <a href="Controlusuario?menu=Bodega&accion=Listarpr">Bodega</a> 



                </nav>

        </header>
    <body>


    </div>



    <div class="d-flex">

        <div class="clo-sm-5 datos1">
            <div class="card">

                <form action="Controlusuario?menu=Dotacion" method="Post">

                    <div class="card-body"  style="width: 55rem;">

                        <div class="form-group">

                            <label>Datos del Empleado</label>

                        </div>

                        <div class="form-group d-flex">    
                            <div class="col-sm-6 d-flex">

                                <input type="text" name="dniempleadoa" class="form-control" placeholder="Cedula">
                                <button type="submit" name="accion" value="BuscarEmpleado" class="btn btn-outline-info">Buscar</button>

                            </div>

                            <div class="col-sm-6">

                                <input type="text" value="${buscaem.getPrimer_nombre()} ${buscaem.getSegundo_nombre()} ${buscaem.getPrimer_apellido()} ${buscaem.getSegundo_apellido()}"  name="txtnombreempleado" class="form-control">
                            </div>

                        </div>

                        <div class="form-group">

                            <label>Datos Prenda</label>

                        </div>
                        <div class="form-group d-flex">

                            <div class="col-sm-6 d-flex">

                                <input type="text" name="txtcodigoprenda"  class="form-control" placeholder="Codigo Prenda">
                                <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info btn-xs">Buscar</button>

                            </div>

                            <div class="col-sm-4">

                                <input type="text" name="txtnproducto" value="${productob.getPrenda()}" class="form-control">
                            </div>

                        </div><br>
                        <div class="form-group  d-flex">



                            <div class="col-sm-5 d-flex ">

                                <input type="text" name="txtdescripcion" class="form-control" placeholder="Descripcion">


                            </div>

                            <div class="col-sm-3">

                                <input type="number" name="txtcantida" value="1" class="form-control"placeholder="Cantida">
                            </div>


                            <div class="col-sm-3">

                                <input type="text" name="txtstockdisponible" value="${productob.getStock()}" class="form-control"placeholder="Stock">
                            </div>
                            <div class="form-group">

                                <button type="submit" name="accion" value="Agregar" class="btn btn-outline-info ">Agregar Producto </button>

                            </div>

                        </div>


                    </div>
                </form>



            </div>




        </div>
        <div class="col-sm-7">

            <div class="card">
                <div class="card-body ">

                    <div class="d-flex col-sm-6 ml-auto">
                        <label>N°Serie </label>
                        <input type="text" name="txtnumeroserie" value="${nserie}" class="form-control">

                    </div>
                    <br>
                    <table class="table table-hover">

                        <thead>
                            <tr>

                                <th>N°</th>    

                                <th>Descripcion</th>    
                                <th>Cantidad</th>      
                                <th class="accion">ACCIONES</th>  


                            </tr>

                        </thead>
                        <tbody>

                            <c:forEach var="list" items="${lista}">
                                <tr>
                                    <td>${list.getItem()}</td>

                                    <td>${list.getDescripcion()}</td>
                                    <td>${list.getCantidad()}</td>




                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>

                </div>

                <div class="card-footer d-flex">

                    <div class="col-sm-6">
                        <a href="Controlusuario?menu=Dotacion&accion=GenerarDotacion" onclick="print()" class="btn btn-success">Generar Dotacion</a>

                        <input type="submit" name="accion" value="Cancelar " class="btn btn-danger">

                    </div>

                </div>

            </div>
        </div>



    </div>
    <script src="js/menujsp.js"></script>
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

   

</body>
</html>

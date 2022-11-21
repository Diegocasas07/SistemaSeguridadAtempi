<%-- 
    Document   : RegistroEmpleado
    Created on : 18/11/2022, 12:51:39 p. m.
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

        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <div class="dropdown">
                <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                    <a href="Controlusuario?menu=Dotacion&accion=default">Dotacion</a>
                    <a href="Controlusuario?menu=Bodega&accion=Listarpr">Bodega</a> 
                   


                </nav>

            </div>

        </header>

        <div class="d-flex">

            <div class="card col-sm-6">

                <div class="card-body">


                    <form action="Controlusuario?menu=RegistroEmpleado" method="post">

                        <div class="form-group">

                            <label>Cedula</label>
                            <input type="text" value="${emplead.getDni()}" name="txtcedula" class="form-control">

                        </div>
                        <div class="form-group">

                            <label>Placa</label>
                            <input type="text" value="${emplead.getPlaca()}" name="txtplaca" class="form-control">
                        </div>    
                        <div class="form-group">

                            <label>Primer Nombre</label>
                            <input type="text" value="${emplead.getPrimer_nombre}" name="txtpnombre" class="form-control">

                        </div>    
                        <div class="form-group">

                            <label>Segundo Nombre</label>
                            <input type="text" value="${emplead.getSegundo_nombre()}" name="txtsnombre" class="form-control">
                        </div>
                        <div class="form-group">

                            <label>Primer Apellido</label>
                            <input type="text" value="${emplead.getPrimer_apellido()}" name="txtpapellido" class="form-control">
                        </div>
                        <div class="form-group">

                            <label>Segundo Apellido</label>
                            <input type="text" value="${emplead.getSegundo_apellido()}" name="txtsapellido" class="form-control">

                        </div>
                        <div class="form-group">

                            <label>Genero</label>
                            <input type="text" value="${emplead.getGenero()}" name="txtgenero" class="form-control">
                        </div>
                        <div class="form-group">

                            <label>Celular</label>
                            <input type="text" value="${emplead.getCelular()}"  name="txtcelular" class="form-control">
                        </div>
                        <div class="form-group">

                            <label>Puesto</label>
                            <input type="text" value="${emplead.getPuesto()}"  name="txtpuesto" class="form-control">
                        </div>                      
                        <div class="form-group">

                            <label>Correo</label>
                            <input type="text" value="${emplead.getCorreo()}"  name="txtcorreo" class="form-control">
                        </div>
                       
                      
                        <div class="form-group">

                            <label>Direcion</label>
                            <input type="text" value="${emplead.getDireccion()}" name="txtdireccion" class="form-control">
                        </div>                   
                       
                        <div class="form-group">

                            <label>Persona de Contacto</label>
                            <input type="text" value="${emplead.getPersona_contacto()}" name="txtpcontacto" class="form-control">

                        </div>
                        <div class="form-group">

                            <label>Parentesco</label>
                            <input type="text" value="${emplead.getParentesco()}" name="txtparentesco" class="form-control">
                        </div>
                        <div class="form-group">

                            <label>Numero de Cotacto</label>
                            <input type="text" value="${emplead.getNumero_contacto()}" name="txtncontacto" class="form-control">
                        </div>

                        <input type="submit" name="accion" value="Nuevo" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>                        
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Cedula</th>
                            <th>Placa</th>
                            <th>Primer Nombre</th>
                            <th>Segundo Nombre</th>
                            <th>Primer Apellido</th>
                            <th>Segundo Apellido</th>
                            <th>Genero</th>
                            <th>Celular</th>
                            <th>Puesto</th>                           
                            <th>Correo</th>                            
                            <th>Direccion</th>                            
                            <th>Persona  Contacto</th>
                            <th>Parentesco</th>
                            <th>Numero Contacto</th>
                            <th>ACCIONES</th>
                        </tr>  

                    </thead>

                    <tbody>

                        <c:forEach var="em" items="${emplea}">


                            <tr>

                                <td>${em.getDni()}</td>
                                <td>${em.getPlaca()}</td>
                                <td>${em.getPrimer_nombre()}</td>
                                <td>${em.getSegundo_nombre()}</td>
                                <td>${em.getPrimer_apellido()}</td>
                                <td>${em.getSegundo_apellido()}</td>
                                <td>${em.getGenero()}</td>
                                <td>${em.getCelular()}</td>
                                <td>${em.getPuesto()}</td>                              
                                <td>${em.getCorreo()}</td>                               
                                <td>${em.getDireccion()}</td>                               
                                <td>${em.getPersona_contacto()}</td>
                                <td>${em.getParentesco()}</td>
                                <td>${em.getNumero_contacto()}</td>

                                <td>

                                    <a class="btn btn-warning" href="Controlusuario?menu=RegistroEmpleado&accion=Editar&dniemple=${em.getDni()}">Editar</a>

                                </td>

                                <td>

                                    <a id="Eliminarp" class="btn btn-danger" href="Controlusuario?menu=RegistroEmpleado&accion=Eliminar&cod_prenda=${em.getDni()}">Eliminar</a>

                                </td>


                            </tr>
                        </c:forEach>

                    </tbody>
                </table>

            </div>

        </div>




        <script src="js/menujsp.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>

    </body>
</html>

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

                    <form action="Controlusuario?menu=RegistroEmpleado" method="post">
                        
                        <div class="form-group">

                            <label>Cedula</label>
                            <input type="text"  name="txtcedula" class="form-control"placeholder="Cedula">

                        </div>
                        <div class="form-group">

                            <label>Placa</label>
                            <input type="text" value="${usuarioedit.getEstado()}" name="txtplaca" class="form-control"placeholder="Placa">
                        </div>
                        <div class="form-group">

                            <label>Primer Nombre</label>
                            <input type="text" name="txtpnombre" class="form-control"placeholder="Primer Nombre">

                        </div>
                        <div class="form-group">

                            <label>Segundo Nombre</label>
                            <input type="text"  name="txtsnombre" class="form-control"placeholder="Segundo Nombre">
                        </div>
                        <div class="form-group">

                            <label>Primer Apellido</label>
                            <input type="text"  name="txtpapellido" class="form-control" placeholder="Primer Apellido">

                        </div>

                        <div class="form-group">

                            <label>Segundo Apellido</label>
                            <input type="text"  name="txtsapellido" class="form-control" placeholder="Segundo Apellido">

                        </div>
                        <div class="form-group">

                            <label>Genero</label>
                            <input type="text"  name="txtgenero" class="form-control"placeholder="Genero">
                        </div>

                        <div class="form-group">

                            <label>Celular</label>
                            <input type="text"  name="txtCelular" class="form-control"placeholder="Celular">
                        </div>

                        <div class="form-group">

                            <label>Puesto</label>
                            <input type="text"  name="txtpuesto" class="form-control"placeholder="Puesto">
                        </div>

                       
                        <div class="form-group">

                            <label>Correo</label>
                            <input type="text"  name="txtcorreo" class="form-control"placeholder="Correo">
                        </div>
                       

                        <div class="form-group">

                            <label>Direccion</label>
                            <input type="text" value="${usuarioedit.getEstado()}" name="txtdireccion" class="form-control"placeholder="Direccion">
                        </div>

                       

   
                        <div class="form-group">

                            <label>Persona de Contacto</label>
                            <input type="text" name="txtpcontacto" class="form-control"placeholder="Persona de Contacto">
                        </div>
                        <div class="form-group">

                            <label>Parentesco</label>
                            <input type="text"  name="txtparentesco" class="form-control"placeholder="Parentesco">
                        </div>
                        <div class="form-group">

                            <label>Numero de Contacto</label>
                            <input type="text" name="txtncontacto" class="form-control"placeholder="Parentesco">
                        </div>

                        <br>
                         <input type="submit" name="accion" value="Regresar" class="btn btn-danger">
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                       
                        
                    </form>
                </div>
                
            </div>
            
        </div>
    </body>
</html>

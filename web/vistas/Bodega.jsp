

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

            </div>
            <br> 
            <body>
                <div class="d-flex" >

                    <div class="card col-sm-6">

                        <div class="card-body">

                            <form action="Controlusuario?menu=Bodega" method="Post">

                                <div class="form-group">

                                    <label>Codigo Producto</label>
                                    <input type="text"value="${productoe.getCod_prenda()}" name="txtcodigop" class="form-control" placeholder="Codigo Producto">

                                </div>
                                <div class="form-group">

                                    <label>Prenda</label>
                                    <input  type="text" value="${productoe.getPrenda()}" name="txtprenda" class="form-control" placeholder="Prenda">

                                </div>
                                <div class="form-group">

                                    <label>Stock</label>
                                    <input type="number" value="${productoe.getStock()}" name="txtstock" class="form-control"placeholder="Stock">

                                </div>

                                <div class="form-group">

                                    <label>Talla</label>
                                    <input type="text" value="${productoe.getTalla()}" name="txttalla" class="form-control"placeholder="Talla">

                                </div>
                                <div class="form-group">

                                    <label>Observaciones</label>
                                    <input  type="text" value="${productoe.getObservaciones()}" name="txtobservacion" class="form-control" placeholder="Observaciones">

                                </div><br>
                                <input type="submit" name="accion" value="Nuevo" class="btn btn-info">
                                <input type="submit" name="accion" value="Actualizar" class="btn btn-success">

                        

                        </div>


                    </div>

                    <div class="col-sm-8">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Codigo Producto</th>
                                    <th>Prenda</th>
                                    <th>Stock</th>
                                    <th>Talla</th>
                                    <th>Observaciones</th>
                                    <th>ACCIONES</th>

                                </tr>
                            </thead>

                            <tbody>
                                <c:forEach var="pr" items="${productos}">


                                    <tr>

                                        <td>${pr.getCod_prenda()}</td>
                                        <td>${pr.getPrenda()}</td>
                                        <td>${pr.getStock()}</td>
                                        <td>${pr.getTalla()}</td>
                                        <td>${pr.getObservaciones()}</td>
                                        <td>

                                            <a class="btn btn-warning" href="Controlusuario?menu=Bodega&accion=Editar&codp=${pr.getCod_prenda()}">Editar</a>

                                        </td>

                                        <td>
                                            <input id="Eliminarp" type="submit" name="accion" value="Eliminar" href="Controlusuario?menu=Bodega&accion=Eliminar&codp=${pr.getCod_prenda()}" class="btn btn-success">
                                            <a  class="btn btn-danger" href="Controlusuario?menu=Bodega&accion=Eliminar&codp=${pr.getCod_prenda()}">Eliminar</a>

                                        </td>


                                    </tr>
                                </c:forEach>


                            </tbody>
                        </table>



                    </div>
                </form>
                </div>
                </div>


                <script src="js/menujsp.js"></script>
                <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
                <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

                <script>
                   
                        
                         Swal.fire({
                                title: '¿Está seguro?',
                                text: "¡No podrá revertir esto!",
                                icon: 'Advertencia',
                                showCancelButton: true,
                                confirmButtonColor: '#3085d6',
                                cancelButtonColor: '#d33',
                                confirmButtonText: 'Si, Eliminado!'
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    Swal.fire(
                                            'Deleted!',
                                            'Your file has been deleted.',
                                            'success'
                                            )
                                    
                                    this.submit();
                                }
                            });


                    });

                    
                </script>

            </body>
</html>

<%-- 
    Document   : Principal
    Created on : 12 nov 2022, 16:33:28
    Author     : Diego
--%>

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
                <button style="border: none" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
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

        <main>

            <div class="imagen-princpial">
                <div class="contenedor">

                    <h3 class="titulo">Seguridad Atempi Ltda.</h3>
                    <p class="descripcion">
                        Lideres en la implemetacion de soluciones de seguridad integral
                        desde 1974.
                    </p>

                    <button  role="button" class="boton"><i class="fas fa-info-circle"></i>Bienvenido</button>
                </div>
            </div> 

            <div class="recomendaciones-atempi contenedor">
                <div class="contenedor-titulo-controles">

                    <h3>Recomendaciones</h3>
                    <div class="indicadores"></div>
                </div>

                <div class="contenedor-principal">

                    <button role="button" id="flecha-izquierda" class="flecha-izquierda" ><i class="fas fa-angle-left"></i></button>

                    <div class="contenedor-carrusel">

                        <div class="carrusel">
                            <div class="pagina-recomendacion">
                                <a href="https://www.atempi.co/beneficios-atempi/wp-login.php"><img src="img/Bienestar-atempi.jpg" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/como-se-liquida-la-nomina.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="https://app.oasiscom.com/Account/Login"><img src="img/login.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/formato.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/login.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/login.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/formato.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/login.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/formato.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/login.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="imagenes/formato.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="imag/login.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/formato.png" alt="alt"/></a>

                            </div>
                            <div class="pagina-recomendacion">
                                <a href="#"><img src="img/login.png" alt="alt"/></a>

                            </div>


                        </div>

                    </div>
                    <button role="button" id="flecha-derecha" class="flecha-derecha" ><i class="fas fa-angle-right"></i></button>     
                </div>
            </div>
        </main>
                    
                      
                    
        <script src="js/menujsp.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>

    </body>
</html>

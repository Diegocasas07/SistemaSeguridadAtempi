/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Datos.GenerarSerie;
import Modelo.Dotacion;
import Modelo.DotacionDAO;
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.Producto;
import Modelo.ProductoDAO;
import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Diego
 */
public class Controlusuario extends HttpServlet {

    Usuario us = new Usuario();
    UsuarioDAO usudao = new UsuarioDAO();
    Empleado em = new Empleado();
    EmpleadoDAO edao = new EmpleadoDAO();
    Producto pr = new Producto();
    ProductoDAO pdao = new ProductoDAO();
    Dotacion d = new Dotacion();
    List<Dotacion> listad = new ArrayList<>();
    DotacionDAO ddao = new DotacionDAO();
    int item;
    int codprod;
    String descripcion;
    int cantidad;
    String numeroserie;
    int id_us;
    int id_em;
    int codp;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");

        if (menu.equals("Principal")) {

            request.getRequestDispatcher("vistas/Principal.jsp").forward(request, response);

        }
        if (menu.equals("Inicio")) {

            request.getRequestDispatcher("vistas/Principial.jsp").forward(request, response);

        }
        if (menu.equals("RegistroUsuario")) {

            try {
                switch (accion) {
                   
                    case "Nuevo":

                        request.getRequestDispatcher("vistas/Usuario.jsp").forward(request, response);

                        break;
                        
                         case "Regresar":

                        request.getRequestDispatcher("Controlusuario?menu=RegistroUsuario&accion=Listar").forward(request, response);

                        break;

                    case "BuscarEmpleado":

                        int idem = Integer.parseInt(request.getParameter("txtcedulaemp"));
                        em = edao.listardni(idem);
                        request.setAttribute("buscaem", em);
                        
                       

                        break;

                    case "Listar":

                        List lista = usudao.listar();
                        request.setAttribute("usuarios", lista);
                        break;

                    case "Agregar":

                        String nombres = request.getParameter("txtnombrecomp");
                        int estados = Integer.parseInt(request.getParameter("txtestadous"));
                        String usuarios = request.getParameter("txtusuarious");
                        String contrasenas = request.getParameter("txtcontrasenaus");
                        String cargos = request.getParameter("txtcargous");
                        us.setNombre(nombres);
                        us.setEstado(estados);
                        us.setUsuario(usuarios);
                        us.setContrasena(contrasenas);
                        us.setCargo(cargos);
                        usudao.agregar(us);

                        request.getRequestDispatcher("Controlusuario?menu=RegistroUsuario&accion=Listar").forward(request, response);

                        break;

                    case "Editar":

                        id_us = Integer.parseInt(request.getParameter("idu"));
                        Usuario usua = usudao.listarid(id_us);
                        request.setAttribute("usuarioedit", usua);
                        request.getRequestDispatcher("Controlusuario?menu=RegistroUsuario&accion=Listar").forward(request, response);

                        break;
                    case "Actualizar":

                        String nombres1 = request.getParameter("txtnombrecomp");
                        int estados1 = Integer.parseInt(request.getParameter("txtestadous"));
                        String usuarios1 = request.getParameter("txtusuarious");
                        String contrasenas1 = request.getParameter("txtcontrasenaus");
                        String cargos1 = request.getParameter("txtcargous");
                        us.setNombre(nombres1);
                        us.setEstado(estados1);
                        us.setUsuario(usuarios1);
                        us.setContrasena(contrasenas1);
                        us.setCargo(cargos1);
                        us.setId_usuario(id_us);
                        usudao.actualizar(us);

                        request.getRequestDispatcher("Controlusuario?menu=RegistroUsuario&accion=Listar").forward(request, response);

                        break;
                    
                    case "Eliminar":
 
                        
                        id_us = Integer.parseInt(request.getParameter("idu"));
                        usudao.eliminar(id_us);

                        request.getRequestDispatcher("Controlusuario?menu=RegistroUsuario&accion=Listar").forward(request, response);

                        break;

                    default:

                        throw new AssertionError();
                }

                request.getRequestDispatcher("vistas/RegistroUsuario.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(Controlusuario.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        if (menu.equals("RegistroEmpleado")) {

            switch (accion) {
                
                case"Nuevo":
                    
                     request.getRequestDispatcher("vistas/Empleado.jsp").forward(request, response);
                    break;
                
                case "Listare":

                    List lista = edao.listarempleado();
                    request.setAttribute("emplea", lista);

                    break;

                case "Agregar":
                   
                    try {
                        
                    int dni = Integer.parseInt(request.getParameter("txtcedula"));
                    int plac = Integer.parseInt(request.getParameter("txtplaca"));
                    String pnom = request.getParameter("txtpnombre");
                    String snom = request.getParameter("txtsnombre");
                    String pape = request.getParameter("txtpapellido");
                    String sape = request.getParameter("txtsapellido");
                    String gen = request.getParameter("txtgenero");
                    int cel = Integer.parseInt(request.getParameter("txtcelular"));
                    String puest = request.getParameter("txtpuesto");
                    String correo = request.getParameter("txtcorreo");
                    String dir = request.getParameter("txtdireccion");
                    String personac = request.getParameter("txtpcontacto");
                    String parentes = request.getParameter("txtparentesco");
                    int ncontacto = Integer.parseInt(request.getParameter("txtncontacto"));
                    em.setDni(dni);
                    em.setPlaca(plac);
                    em.setPrimer_nombre(pnom);
                    em.setSegundo_nombre(snom);
                    em.setPrimer_apellido(pape);
                    em.setSegundo_apellido(sape);
                    em.setGenero(gen);
                    em.setCelular(cel);
                    em.setPuesto(puest);
                    em.setCorreo(correo);
                    em.setDireccion(dir);
                    em.setPersona_contacto(personac);
                    em.setParentesco(parentes);
                    em.setNumero_contacto(ncontacto);
                    edao.agregare(em);
                    request.getRequestDispatcher("Controlusuario?menu=RegistroEmpleado&accion=Listare").forward(request, response);

                } catch (Exception e) {
                
                }
              
                    
                    break;
                    
                     case "Editar":

                        id_em = Integer.parseInt(request.getParameter("dniemple"));
                        Empleado emplead = edao.listardni(id_em);
                        request.setAttribute("emplead", emplead);
                        request.getRequestDispatcher("Controlusuario?menu=RegistroEmpleado&accion=Listare").forward(request, response);

                        break;
                    
                    
                case "Actualizar":
                    
                     int dni1 = Integer.parseInt(request.getParameter("txtcedula"));
                    int plac1 = Integer.parseInt(request.getParameter("txtplaca"));
                    String pnom1 = request.getParameter("txtpnombre");
                    String snom1 = request.getParameter("txtsnombre");
                    String pape1 = request.getParameter("txtpapellido");
                    String sape1 = request.getParameter("txtsapellido");
                    String gen1 = request.getParameter("txtgenero");
                    int cel1 = Integer.parseInt(request.getParameter("txtcelular"));
                    String puest1 = request.getParameter("txtpuesto");
                    String correo1 = request.getParameter("txtcorreo");
                    String dir1 = request.getParameter("txtdireccion");
                    String personac1 = request.getParameter("txtpcontacto");
                    String parentes1 = request.getParameter("txtparentesco");
                    int ncontacto1 = Integer.parseInt(request.getParameter("txtncontacto"));
                    em.setDni(dni1);
                    em.setPlaca(plac1);
                    em.setPrimer_nombre(pnom1);
                    em.setSegundo_nombre(snom1);
                    em.setPrimer_apellido(pape1);
                    em.setSegundo_apellido(sape1);
                    em.setGenero(gen1);
                    em.setCelular(cel1);
                    em.setPuesto(puest1);
                    em.setCorreo(correo1);
                    em.setDireccion(dir1);
                    em.setPersona_contacto(personac1);
                    em.setParentesco(parentes1);
                    em.setNumero_contacto(ncontacto1);
                    break;
                    
                    
                      case "Eliminar":
 
                        
                        id_em = Integer.parseInt(request.getParameter("dniemple"));
                        edao.eliminar(id_em);

                        request.getRequestDispatcher("Controlusuario?menu=RegistroEmpleado&accion=Listare").forward(request, response);

                        break;

                default:
                    request.getRequestDispatcher("Controlusuario?menu=RegistroEmpleado&accion=Listare").forward(request, response);
            }

            request.getRequestDispatcher("vistas/RegistroEmpleado.jsp").forward(request, response);

        }
        if (menu.equals("Dotacion")) {

            switch (accion) {

                case "BuscarEmpleado":

                    int idem = Integer.parseInt(request.getParameter("dniempleadoa"));
                    em = edao.listardni(idem);
                    request.setAttribute("buscaem", em);

                    break;

                case "BuscarProducto":

                    int idp = Integer.parseInt(request.getParameter("txtcodigoprenda"));
                    pr = pdao.listarcod(idp);
                    request.setAttribute("productob", pr);
                    request.setAttribute("buscaem", em);
                    request.setAttribute("lista", listad);

                    break;

                case "Agregar":
                    request.setAttribute("buscaem", em);
                    item = item + 1;
                    codprod = pr.getCod_prenda();
                    descripcion = request.getParameter("txtnproducto");
                    cantidad = Integer.parseInt(request.getParameter("txtcantida"));
                    d = new Dotacion();
                    d.setDni_empleado(item);
                    d.setId_producto(codprod);
                    d.setDescripcion(descripcion);
                    d.setCantidad(cantidad);
                    listad.add(d);
                    request.setAttribute("lista", listad);

                    break;

                case "Generarentrega":
                    d.setDni_empleado(em.getDni());
                    d.setId_producto(pr.getCod_prenda());
                    d.setNumero_serie(numeroserie);
                    d.setCantidad(cantidad);
                    d.setDescripcion(descripcion);
                    ddao.guardardotacion(d);
                    break;

                default:

                    numeroserie = ddao.generarserie();
                    if (numeroserie == null) {
                        numeroserie = "00000001";
                        request.setAttribute("nserie", numeroserie);

                    } else {
                        int incrementar = Integer.parseInt(numeroserie);
                        GenerarSerie gs = new GenerarSerie();
                        numeroserie = gs.Numeroserie(incrementar);
                        request.setAttribute("nserie", numeroserie);
                    }

                    request.getRequestDispatcher("vistas/Dotacion.jsp").forward(request, response);
            }

            request.getRequestDispatcher("vistas/Dotacion.jsp").forward(request, response);

        }
        if (menu.equals("Bodega")) {

            switch (accion) {

                case "Nuevo":
                    request.getRequestDispatcher("vistas/RegistroBodega.jsp").forward(request, response);

                    break;
                    
                case "Regresar":
                    request.getRequestDispatcher("Controlusuario?menu=Bodega&accion=Listarpr").forward(request, response);
                    break;

                case "Listarpr":

                    List lista = pdao.listarp();
                    request.setAttribute("productos", lista);

                    break;

                case "Agregar":

                    int codpr = Integer.parseInt(request.getParameter("txtcodigop"));
                    String prenda = request.getParameter("txtprenda");
                    int st = Integer.parseInt(request.getParameter("txtstock"));
                    String ta = request.getParameter("txttalla");
                    String ob = request.getParameter("txtobservacion");
                    pr.setCod_prenda(codpr);
                    pr.setPrenda(prenda);
                    pr.setStock(st);
                    pr.setTalla(ta);
                    pr.setObservaciones(ob);
                    pdao.Agregarp(pr);

                    request.getRequestDispatcher("Controlusuario?menu=Bodega&accion=Listarpr").forward(request, response);

                    break;

                case "Editar":
                    codp = Integer.parseInt(request.getParameter("codp"));
                    Producto pro = pdao.listarcod(codp);
                    request.setAttribute("productoe", pro);
                    request.getRequestDispatcher("Controlusuario?menu=Bodega&accion=Listarpr").forward(request, response);

                    break;
                case "Actualizar":

                    String prenda1 = request.getParameter("txtprenda");
                    int st1 = Integer.parseInt(request.getParameter("txtstock"));
                    String ta1 = request.getParameter("txttalla");
                    String ob1 = request.getParameter("txtobservacion");
                    pr.setCod_prenda(codp);
                    pr.setPrenda(prenda1);
                    pr.setStock(st1);
                    pr.setTalla(ta1);
                    pr.setObservaciones(ob1);
                    pdao.Actualizarp(pr);

                    request.getRequestDispatcher("Controlusuario?menu=Bodega&accion=Listarpr").forward(request, response);

                    break;

                case "Eliminar":

                    codp = Integer.parseInt(request.getParameter("codp"));
                    pdao.Eliminar(codp);
                    request.getRequestDispatcher("Controlusuario?menu=Bodega&accion=Listarpr").forward(request, response);

                    break;

                default:
                    throw new AssertionError();
            }

            request.getRequestDispatcher("vistas/Bodega.jsp").forward(request, response);

        }
   

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

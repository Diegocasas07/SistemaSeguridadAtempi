/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Datos.Conexion;
import com.mysql.cj.Messages;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diego
 */
public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;


    
    
    //Operaciones Crud
    public List listarempleado() {

        String sql = "select * from Empleado";
        List<Empleado> lista = new ArrayList<>();

        try {
             con = cn.conectar();
            ps = con.prepareStatement(sql);
             rs = ps.executeQuery();
            while (rs.next()) {
                Empleado emp = new Empleado();

                emp.setDni(rs.getInt(1));
                emp.setPlaca(rs.getInt(2));
                emp.setPrimer_nombre(rs.getString(3));
                emp.setSegundo_nombre(rs.getString(4));
                emp.setPrimer_apellido(rs.getString(5));
                emp.setSegundo_apellido(rs.getString(6));
                emp.setGenero(rs.getString(7));
                emp.setCelular(rs.getInt(8));
                emp.setPuesto(rs.getString(9));          
                emp.setCorreo(rs.getString(10));             
                emp.setDireccion(rs.getString(11));                
                emp.setPersona_contacto(rs.getString(12));
                emp.setParentesco(rs.getString(13));
                emp.setNumero_contacto(rs.getInt(14));
                lista.add(emp);

            }
        } catch (Exception e) {
        }
        return lista;

    }

    public int agregare(Empleado em) {

        String sql = "insert into Empleado (dni,placa,primer_nombre,segundo_nombre,primer_apelllido,segundo_apellido,genero,celular,puesto,correo,direccion,,persona_contacto,parentesco,numero_contacto) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, em.getDni());
            ps.setInt(2, em.getPlaca());
            ps.setString(3, em.getPrimer_nombre());
            ps.setString(4, em.getSegundo_nombre());
            ps.setString(5, em.getPrimer_apellido());
            ps.setString(6, em.getSegundo_apellido());
            ps.setString(7, em.getGenero());
            ps.setInt(8, em.getCelular());
            ps.setString(9, em.getPuesto());          
            ps.setString(10, em.getCorreo());            
            ps.setString(11, em.getDireccion());
            ps.setString(12, em.getPersona_contacto());
            ps.setString(13, em.getParentesco());
            ps.setInt(14, em.getNumero_contacto());
            ps.executeUpdate();

        } catch (Exception e) {
        }

        return r;
    }

    public Empleado listardni(int dni) {

        Empleado emp = new Empleado();
        String sql = "select * from Empleado where dni =" + dni;
        try {

            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {

                emp.setDni(rs.getInt(1));
                emp.setPlaca(rs.getInt(2));
                emp.setPrimer_nombre(rs.getString(3));
                emp.setSegundo_nombre(rs.getString(4));
                emp.setPrimer_apellido(rs.getString(5));
                emp.setSegundo_apellido(rs.getString(6));
                emp.setGenero(rs.getString(7));
                emp.setCelular(rs.getInt(8));
                emp.setPuesto(rs.getString(9));               
                emp.setCorreo(rs.getString(10));               
                 emp.setDireccion(rs.getString(11));                
                emp.setPersona_contacto(rs.getString(12));
                emp.setParentesco(rs.getString(13));
                emp.setNumero_contacto(rs.getInt(14));
                
                

            }

        } catch (Exception e) {
        }
        return emp;
    }

    public int actualizar(Empleado em) {

        String sql = "update  Empleado set  placa=?,primer_nombre=?,segundo_nombre=?,primer_apelllido=?,segundo_apellido=?,genero=?,celular=?,puesto=?,estado_civil=?,correo=?,direccion=?,persona_contacto=?,parentesco=?,numero_contacto=? wheere dni=?";

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            
            ps.setInt(1, em.getPlaca());
            ps.setString(2, em.getPrimer_nombre());
            ps.setString(3, em.getSegundo_nombre());
            ps.setString(4, em.getPrimer_apellido());
            ps.setString(5, em.getSegundo_apellido());
            ps.setString(6, em.getGenero());
            ps.setInt(7, em.getCelular());
            ps.setString(8, em.getPuesto());            
            ps.setString(9, em.getCorreo());           
            ps.setString(10, em.getDireccion());        
            ps.setString(11, em.getPersona_contacto());
            ps.setString(12, em.getParentesco());
            ps.setInt(13, em.getNumero_contacto());
            ps.setInt(14, em.getDni());
            ps.executeUpdate();

        } catch (Exception e) {
        }

        return r;
    }

    public void eliminar(int dni) {

        String sql = "delete from Empleado where dni=" + dni;

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

}

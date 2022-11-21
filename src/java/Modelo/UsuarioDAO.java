package Modelo;

import Datos.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Usuario validar(String usuario, String contrasena) {

        Usuario us = new Usuario();
        String sql = "select * from Usuario where usuario=? and contrasena=?";
        try {

            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();

            while (rs.next()) {

                us.setId_usuario(rs.getInt("id_usuario"));
                us.setUsuario(rs.getString("usuario"));
                us.setContrasena(rs.getString("contrasena"));
                us.setNombre(rs.getString("nombre"));

            }
        } catch (Exception e) {

        }
        return us;

    }

    //Operaciones Crud
    public List listar() {

        String sql = "select * from Usuario";
        List<Usuario> lista = new ArrayList<>();

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario us = new Usuario();
                
                us.setId_usuario(rs.getInt(1));
                us.setNombre(rs.getString(2));
                us.setEstado(rs.getInt(3));
                us.setUsuario(rs.getString(4));
                us.setContrasena(rs.getString(5));
                us.setCargo(rs.getString(6));

                lista.add(us);

            }
        } catch (Exception e) {
        }
        return lista;

    }

    public int agregar(Usuario u) throws SQLException {

        String sql = "insert into Usuario (nombre,estado,usuario,contrasena,cargo) values (?,?,?,?,?)";

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, u.getNombre());
            ps.setInt(2, u.getEstado());
            ps.setString(3, u.getUsuario());
            ps.setString(4, u.getContrasena());
            ps.setString(5, u.getCargo());
            ps.executeUpdate();

        } catch (Exception e) {
        }
        return r;
    }

    public Usuario listarid(int id_usuario) {

        Usuario usu = new Usuario();
        String sql = "select * from Usuario  where id_usuario =" + id_usuario;

        try {

            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                
            usu.setNombre(rs.getString(2));
            usu.setEstado(rs.getInt(3));
            usu.setUsuario(rs.getString(4));
            usu.setContrasena(rs.getString(5));
            usu.setCargo(rs.getString(6));
            
                
            }

        } catch (Exception e) {
        }
        
        return usu;

    }

    
    public int actualizar(Usuario u) {

        String sql = "update Usuario set nombre=?,estado=?,usuario=?,contrasena=?,cargo=? where id_usuario=?";

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, u.getNombre());
            ps.setInt(2, u.getEstado());
            ps.setString(3, u.getUsuario());
            ps.setString(4, u.getContrasena());
            ps.setString(5, u.getCargo());
            ps.setInt(6, u.getId_usuario());
            ps.executeUpdate();

        } catch (Exception e) {

        }
        return r;

    }

    public void eliminar(int id_usuar) {

        String sql = "delete from Usuario where id_usuario=" + id_usuar;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }
}

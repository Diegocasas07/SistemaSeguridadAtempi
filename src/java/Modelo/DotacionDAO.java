package Modelo;

import Datos.Conexion;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class DotacionDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public String generarserie() {

        String numeros = "";
        String sql = "select max(nserie) from Dotacion";
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {

                numeros = rs.getString(1);

            }

        } catch (Exception e) {
        }
        return numeros;
    }

    public String idprendas() {
        String iddotacion = "";
        String sql = "select max(id_dotacion) from Dotacion";
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                iddotacion = rs.getString(1);

            }
        } catch (Exception e) {
        }
        return iddotacion;
    }

    public int guardardotacion(Dotacion d) {
        String sql = "insert into Dotacion (dni_empleado,nserie,cantidad,descripcion)values (?,?,?,?,?)";
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, d.getDni_empleado());
            ps.setInt(2, d.getId_producto());
            ps.setString(3, d.getNumero_serie());
            ps.setString(4, d.getDescripcion());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;

    }
}

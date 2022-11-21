
package Modelo;

import Datos.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diego
 */
public class ProductoDAO {
    
     Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    //Operaciones CRUD
    
    
    public List listarp(){
        
        String sql = "select * from Producto";
        List<Producto> lista = new ArrayList<>();

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                
                p.setCod_prenda(rs.getInt(1));
                p.setPrenda(rs.getString(2));
                p.setStock(rs.getInt(3));
                p.setTalla(rs.getString(4));
                p.setObservaciones(rs.getString(5));   
                lista.add(p);

            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    
    
    public int Agregarp (Producto pr){
        
        String sql="insert into Producto (cod_prenda,prenda,stock,talla,observaciones) values(?,?,?,?,?)";
        try {
            
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.setInt(1, pr.getCod_prenda());
            ps.setString(2, pr.getPrenda());
            ps.setInt(3, pr.getStock());
            ps.setString(4, pr.getTalla());
            ps.setString(5, pr.getObservaciones());
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
        
    }
    
    
     public Producto listarcod(int cod_prenda) {

        Producto pr = new Producto();
        String sql = "select * from Producto  where cod_prenda =" + cod_prenda;

        try {

            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                
            pr.setCod_prenda(rs.getInt(1));
            pr.setPrenda(rs.getString(2));
            pr.setStock(rs.getInt(3));
            pr.setTalla(rs.getString(4));
            pr.setObservaciones(rs.getString(5));
            
                
            }

        } catch (Exception e) {
        }
        
        return pr;

    }
    
    
    public int Actualizarp(Producto pro){
        
        
         String sql="update Producto set  prenda=?,stock=?,talla=?,observaciones=? where cod_prenda=?";
        try {
            
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            
            ps.setString(1, pro.getPrenda());
            ps.setInt(2, pro.getStock());
            ps.setString(3, pro.getTalla());
            ps.setString(4, pro.getObservaciones());
            ps.setInt(5, pro.getCod_prenda());
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    
    
    public void Eliminar(int id){
        
        
        String sql="delete from Producto where cod_prenda="+id;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    
    
    
}

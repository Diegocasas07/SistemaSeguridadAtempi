/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Diego
 */
public class Conexion {
    
    String bd="Atempi";
    String url="jdbc:mysql://localhost:3306/";
    String user="root";
    String password="";
    String driver="com.mysql.cj.jdbc.Driver";
    Connection con;
    
    public Conexion(){
        
    }
    
    public Connection conectar(){
        
        try {
            Class.forName(driver);
            con=DriverManager.getConnection(url+bd,user,password);
            System.out.println("Se conecto exitosamente a la base de datos " +bd);
            
        } catch (ClassNotFoundException |SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("No se conecto  a la base de datos " +bd);
        }
        return con;
    }
    
    public void desconectar(){
        
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[]args){
        
        Conexion conexion = new Conexion();
        conexion.conectar();
    }
    
}

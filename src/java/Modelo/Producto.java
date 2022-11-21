/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Diego
 */
public class Producto {

    public Producto() {
    }
    
    
    int cod_prenda ;
    String prenda;
    int stock;
    String talla;
    String observaciones;

    public Producto(int cod_prenda, String prenda, int stock, String talla, String observaciones) {
        this.cod_prenda = cod_prenda;
        this.prenda = prenda;
        this.stock = stock;
        this.talla = talla;
        this.observaciones = observaciones;
    }

    public int getCod_prenda() {
        return cod_prenda;
    }

    public void setCod_prenda(int cod_prenda) {
        this.cod_prenda = cod_prenda;
    }

    public String getPrenda() {
        return prenda;
    }

    public void setPrenda(String prenda) {
        this.prenda = prenda;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    

    
}

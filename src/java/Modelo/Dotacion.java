package Modelo;

public class Dotacion {

    int id_dotacion;
    int item;
    int dni_empleado;
    int id_producto;
    String numero_serie;
    int cantidad;
    String descripcion;

    public Dotacion(int id_dotacion, int item, int dni_empleado, int id_producto, String numero_serie, int cantidad, String descripcion) {
        this.id_dotacion = id_dotacion;
        this.item = item;
        this.dni_empleado = dni_empleado;
        this.id_producto = id_producto;
        this.numero_serie = numero_serie;
        this.cantidad = cantidad;
        this.descripcion = descripcion;
    }

    public int getId_dotacion() {
        return id_dotacion;
    }

    public void setId_dotacion(int id_dotacion) {
        this.id_dotacion = id_dotacion;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getDni_empleado() {
        return dni_empleado;
    }

    public void setDni_empleado(int dni_empleado) {
        this.dni_empleado = dni_empleado;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNumero_serie() {
        return numero_serie;
    }

    public void setNumero_serie(String numero_serie) {
        this.numero_serie = numero_serie;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Dotacion() {
    }

}

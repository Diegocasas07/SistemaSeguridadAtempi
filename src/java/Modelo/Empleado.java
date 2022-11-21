/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;



/**
 *
 * @author Diego
 */
public class Empleado {
    
    public Empleado(){
        
    }
    
    int dni;
    int placa;
    String primer_nombre;
    String segundo_nombre;
    String primer_apellido;
    String segundo_apellido;
    String genero;
    int celular;
    String puesto;  
    String Correo;    
    String direccion;
    String persona_contacto;
    String parentesco;
    int numero_contacto;

    public Empleado(int dni, int placa, String primer_nombre, String segundo_nombre, String primer_apellido, String segundo_apellido, String genero, int celular, String puesto, String Correo, String direccion, String persona_contacto, String parentesco, int numero_contacto) {
        this.dni = dni;
        this.placa = placa;
        this.primer_nombre = primer_nombre;
        this.segundo_nombre = segundo_nombre;
        this.primer_apellido = primer_apellido;
        this.segundo_apellido = segundo_apellido;
        this.genero = genero;
        this.celular = celular;
        this.puesto = puesto;
        this.Correo = Correo;
        this.direccion = direccion;
        this.persona_contacto = persona_contacto;
        this.parentesco = parentesco;
        this.numero_contacto = numero_contacto;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getPlaca() {
        return placa;
    }

    public void setPlaca(int placa) {
        this.placa = placa;
    }

    public String getPrimer_nombre() {
        return primer_nombre;
    }

    public void setPrimer_nombre(String primer_nombre) {
        this.primer_nombre = primer_nombre;
    }

    public String getSegundo_nombre() {
        return segundo_nombre;
    }

    public void setSegundo_nombre(String segundo_nombre) {
        this.segundo_nombre = segundo_nombre;
    }

    public String getPrimer_apellido() {
        return primer_apellido;
    }

    public void setPrimer_apellido(String primer_apellido) {
        this.primer_apellido = primer_apellido;
    }

    public String getSegundo_apellido() {
        return segundo_apellido;
    }

    public void setSegundo_apellido(String segundo_apellido) {
        this.segundo_apellido = segundo_apellido;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }



    public String getPersona_contacto() {
        return persona_contacto;
    }

    public void setPersona_contacto(String persona_contacto) {
        this.persona_contacto = persona_contacto;
    }

    public String getParentesco() {
        return parentesco;
    }

    public void setParentesco(String parentesco) {
        this.parentesco = parentesco;
    }

    public int getNumero_contacto() {
        return numero_contacto;
    }

    public void setNumero_contacto(int numero_contacto) {
        this.numero_contacto = numero_contacto;
    }

    
  
    
    
    
    
}

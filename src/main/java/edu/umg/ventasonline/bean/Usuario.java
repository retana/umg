package edu.umg.ventasonline.bean;
// Generated Oct 10, 2016 8:05:33 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;

/**
 * Usuario generated by hbm2java
 */
public class Usuario  implements java.io.Serializable {


     private BigDecimal idUsuario;
     private Rol rol;
     private String correo;
     private String contrasena;

    public Usuario() {
    }

	
    public Usuario(BigDecimal idUsuario) {
        this.idUsuario = idUsuario;
    }
    public Usuario(BigDecimal idUsuario, Rol rol, String correo, String contrasena) {
       this.idUsuario = idUsuario;
       this.rol = rol;
       this.correo = correo;
       this.contrasena = contrasena;
    }
   
    public BigDecimal getIdUsuario() {
        return this.idUsuario;
    }
    
    public void setIdUsuario(BigDecimal idUsuario) {
        this.idUsuario = idUsuario;
    }
    public Rol getRol() {
        return this.rol;
    }
    
    public void setRol(Rol rol) {
        this.rol = rol;
    }
    public String getCorreo() {
        return this.correo;
    }
    
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    public String getContrasena() {
        return this.contrasena;
    }
    
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }




}



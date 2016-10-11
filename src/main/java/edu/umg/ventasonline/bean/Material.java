package edu.umg.ventasonline.bean;
// Generated Oct 10, 2016 8:05:33 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Material generated by hbm2java
 */
public class Material  implements java.io.Serializable {


     private BigDecimal idMaterial;
     private String nombre;
     private Set productos = new HashSet(0);

    public Material() {
    }

	
    public Material(BigDecimal idMaterial) {
        this.idMaterial = idMaterial;
    }
    public Material(BigDecimal idMaterial, String nombre, Set productos) {
       this.idMaterial = idMaterial;
       this.nombre = nombre;
       this.productos = productos;
    }
   
    public BigDecimal getIdMaterial() {
        return this.idMaterial;
    }
    
    public void setIdMaterial(BigDecimal idMaterial) {
        this.idMaterial = idMaterial;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Set getProductos() {
        return this.productos;
    }
    
    public void setProductos(Set productos) {
        this.productos = productos;
    }




}



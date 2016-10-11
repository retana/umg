package edu.umg.ventasonline.bean;
// Generated Oct 10, 2016 8:05:33 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Producto generated by hbm2java
 */
public class Producto  implements java.io.Serializable {


     private BigDecimal idProducto;
     private Material material;
     private String nombre;
     private String descripcion;
     private String tipo;
     private String dimensiones;
     private String color;
     private String peso;
     private String foto;
     private BigDecimal stock;
     private BigDecimal precio;
     private Set facturaDs = new HashSet(0);

    public Producto() {
    }

	
    public Producto(BigDecimal idProducto) {
        this.idProducto = idProducto;
    }
    public Producto(BigDecimal idProducto, Material material, String nombre, String descripcion, String tipo, String dimensiones, String color, String peso, String foto, BigDecimal stock, BigDecimal precio, Set facturaDs) {
       this.idProducto = idProducto;
       this.material = material;
       this.nombre = nombre;
       this.descripcion = descripcion;
       this.tipo = tipo;
       this.dimensiones = dimensiones;
       this.color = color;
       this.peso = peso;
       this.foto = foto;
       this.stock = stock;
       this.precio = precio;
       this.facturaDs = facturaDs;
    }
   
    public BigDecimal getIdProducto() {
        return this.idProducto;
    }
    
    public void setIdProducto(BigDecimal idProducto) {
        this.idProducto = idProducto;
    }
    public Material getMaterial() {
        return this.material;
    }
    
    public void setMaterial(Material material) {
        this.material = material;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getDimensiones() {
        return this.dimensiones;
    }
    
    public void setDimensiones(String dimensiones) {
        this.dimensiones = dimensiones;
    }
    public String getColor() {
        return this.color;
    }
    
    public void setColor(String color) {
        this.color = color;
    }
    public String getPeso() {
        return this.peso;
    }
    
    public void setPeso(String peso) {
        this.peso = peso;
    }
    public String getFoto() {
        return this.foto;
    }
    
    public void setFoto(String foto) {
        this.foto = foto;
    }
    public BigDecimal getStock() {
        return this.stock;
    }
    
    public void setStock(BigDecimal stock) {
        this.stock = stock;
    }
    public BigDecimal getPrecio() {
        return this.precio;
    }
    
    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }
    public Set getFacturaDs() {
        return this.facturaDs;
    }
    
    public void setFacturaDs(Set facturaDs) {
        this.facturaDs = facturaDs;
    }




}


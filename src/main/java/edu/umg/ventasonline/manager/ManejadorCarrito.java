package edu.umg.ventasonline.manager;

import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import edu.umg.ventasonline.bean.Producto;
import edu.umg.ventasonline.db.HibernateUtil;

public class ManejadorCarrito {
	
	private List<Producto> lista=null;
	private static ManejadorCarrito instancia;
	public static ManejadorCarrito getInstancia(){
		return (instancia==null)?new ManejadorCarrito():instancia;
	}
	public ManejadorCarrito(){
		lista=new ArrayList<>();
	}
	public void agregar(Integer id){
		lista.add((Producto)HibernateUtil.getInstancia().find(id, Producto.class));
	}
	public void eliminar(Integer id){
		lista.remove((Producto)HibernateUtil.getInstancia().find(id, Producto.class));
	}
	public List<Producto> listar(){
		return this.lista;
	}
	
}

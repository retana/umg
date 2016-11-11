package edu.umg.ventasonline.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.umg.ventasonline.bean.Material;
import edu.umg.ventasonline.bean.Producto;
import edu.umg.ventasonline.db.HibernateUtil;

@Controller
public class ProductoController {
	private List<Producto> lista=new ArrayList<Producto>();
	@RequestMapping(value="logout.do")
	public String doLogout(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		lista.removeAll(lista);
		req.setAttribute("listaProducto", HibernateUtil.getInstancia().sendQuery("From Producto"));
		req.removeAttribute("usuario");
		req.getSession().invalidate();
		return "index";
	}
	@RequestMapping(value="/")
	public String inicio(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaProducto", HibernateUtil.getInstancia().sendQuery("From Producto"));
		return "index";
	}
	@RequestMapping("producto")
	public String lista(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaProducto", HibernateUtil.getInstancia().sendQuery("From Producto"));
		return "producto";
	}
	@RequestMapping("/carrito")
	public String doListCarrito(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaProducto", lista);
		return "carrito";
	}
	@RequestMapping("agregarCarrito.do")
	public String doAddCarrito(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		Producto p=(Producto)HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("idProducto")), Producto.class);
		boolean bandera=false;
		for (Producto producto : lista) {
			if((producto.getIdProducto()==p.getIdProducto())){
				bandera=true;
			}
		}
		if(bandera==false){
			lista.add(p);
		}
		req.setAttribute("listaProducto", lista);
		return "carrito";
	}
	@RequestMapping("eliminarCarrito.do")
	public String doRemoveCarrito(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		lista.remove((Producto)HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("idProducto")), Producto.class));
		
		req.setAttribute("listaProducto", lista);
		return "carrito";
	}
	@RequestMapping("/producto/agregar")
	public String paginaAgregar(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaMaterial", HibernateUtil.getInstancia().sendQuery("From Material"));
		return "agregarproducto";
	}

	@RequestMapping("AgregarProducto.do")
	public String agregar(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaProducto", HibernateUtil.getInstancia().sendQuery("From Producto"));
		HibernateUtil.getInstancia().add(
				new Producto(
						null,
						(Material)(HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("txtMaterial")),Material.class)),
						req.getParameter("txtNombre"),
						req.getParameter("txtDescripcion"),
						req.getParameter("txtTipo"),
						req.getParameter("txtDimensiones"),
						req.getParameter("txtColor"),
						req.getParameter("txtPeso"),
						req.getParameter("txtFoto"),
						Integer.parseInt(req.getParameter("txtStock")),
						Double.parseDouble(req.getParameter("txtPrecio"))
				)
				);
		res.sendRedirect("producto");
		return "producto";
	}
	@RequestMapping("EliminarProducto.do")
	public String eliminar(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaProducto", HibernateUtil.getInstancia().sendQuery("From Producto"));
		HibernateUtil.getInstancia().remove(HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("idProducto")), Producto.class));
		res.sendRedirect("producto");
		return "producto";
	}
	@RequestMapping("producto/editar")
	public String editarPage(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaMaterial", HibernateUtil.getInstancia().sendQuery("From Material"));
		req.setAttribute("producto", HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("idProducto")), Producto.class));
		return "editarproducto";
	}
	@RequestMapping("EditarProducto.do")
	public String editar(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaProducto", HibernateUtil.getInstancia().sendQuery("From Producto"));
		HibernateUtil.getInstancia().add(
				new Producto(
						Integer.parseInt(req.getParameter("txtIdProducto")),
						(Material)(HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("txtMaterial")),Material.class)),
						req.getParameter("txtNombre"),
						req.getParameter("txtDescripcion"),
						req.getParameter("txtTipo"),
						req.getParameter("txtDimensiones"),
						req.getParameter("txtColor"),
						req.getParameter("txtPeso"),
						req.getParameter("txtFoto"),
						Integer.parseInt(req.getParameter("txtStock")),
						Double.parseDouble(req.getParameter("txtPrecio"))
				)
				);
		res.sendRedirect("producto");
		return "producto";
	}
}

package edu.umg.ventasonline.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.umg.ventasonline.bean.Cliente;
import edu.umg.ventasonline.bean.Departamento;
import edu.umg.ventasonline.bean.Pais;
import edu.umg.ventasonline.bean.Profesion;
import edu.umg.ventasonline.bean.TipoDocumento;
import edu.umg.ventasonline.bean.Usuario;
import edu.umg.ventasonline.db.HibernateUtil;

@Controller
public class ClienteController {
	
	@RequestMapping("/cliente")
	public String doList(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("listaCliente", HibernateUtil.getInstancia().sendQuery("From Cliente"));
		return "cliente";
	}
	@RequestMapping(value="/cliente/editar",method=RequestMethod.GET)
	public String editar(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("cliente", HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("idCliente")), Cliente.class));	
		req.setAttribute("tiposDeDocumentos", HibernateUtil.getInstancia().sendQuery("From TipoDocumento"));
		req.setAttribute("paises", HibernateUtil.getInstancia().sendQuery("From Pais"));
		req.setAttribute("departamentos", HibernateUtil.getInstancia().sendQuery("From Departamento"));
		req.setAttribute("profesiones", HibernateUtil.getInstancia().sendQuery("From Profesion"));

		return "editarcliente";
	}
	@RequestMapping(value="/editar.do",method=RequestMethod.GET)
	public String doEditar(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		Usuario usr=(Usuario) HibernateUtil.getInstancia().sendQuery("From Usuario Where correo='"+req.getParameter("txtOldCorreo")+"'").get(0);
		Cliente cliente=new Cliente(
					Integer.parseInt(req.getParameter("txtIdCliente")),
					(Departamento)HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("txtDepartamento")), Departamento.class),
					(Profesion)HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("txtProfesion")), Profesion.class),
					(Pais)HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("txtPais")),Pais.class),
					(TipoDocumento)HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("txtTipoDocumento")),TipoDocumento.class),
					req.getParameter("txtNumeroDocumento"),
					req.getParameter("txtNombre"),
					req.getParameter("txtTelefonoResidencia"),
					req.getParameter("txtTelefonoCelular"),
					req.getParameter("txtDireccion"),
					req.getParameter("txtDireccion"),
					usr
				);
		HibernateUtil.getInstancia().add(cliente);
		res.sendRedirect("/cliente");
		return "cliente";
	}
	@RequestMapping(value="/cliente/eliminar.do",method=RequestMethod.GET)
	public String doEliminar(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		HibernateUtil.getInstancia().remove(HibernateUtil.getInstancia().find(Integer.parseInt(req.getParameter("idCliente")), Cliente.class));
		res.sendRedirect("/cliente");
		return "cliente";
	}
}

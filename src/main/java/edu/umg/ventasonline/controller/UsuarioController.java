package edu.umg.ventasonline.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.umg.ventasonline.bean.Cliente;
import edu.umg.ventasonline.bean.Departamento;
import edu.umg.ventasonline.bean.Pais;
import edu.umg.ventasonline.bean.Profesion;
import edu.umg.ventasonline.bean.Rol;
import edu.umg.ventasonline.bean.TipoDocumento;
import edu.umg.ventasonline.bean.Usuario;
import edu.umg.ventasonline.db.HibernateUtil;

@Controller
public class UsuarioController {
	@RequestMapping(value="/login")
	public String dologin(){
		return "login";
	}
	@RequestMapping(value="/dashboard")
	public String doDashboard(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("clientesRegistrados",HibernateUtil.getInstancia().sendQuery("From Cliente").size() );
		req.setAttribute("productosRegistrados",HibernateUtil.getInstancia().sendQuery("From Producto").size() );
		return "dashboard";
	}
	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public String doLogin(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		req.setAttribute("clientesRegistrados",HibernateUtil.getInstancia().sendQuery("From Cliente").size() );
		req.setAttribute("productosRegistrados",HibernateUtil.getInstancia().sendQuery("From Producto").size() );
		List lista=HibernateUtil.getInstancia().autenticarUsuario(req.getParameter("correo"),req.getParameter("contrasena"));
		if(!lista.isEmpty() || lista.size()>0){
			Usuario usr=(Usuario)lista.get(0);
			Cliente cliente=(Cliente) HibernateUtil.getInstancia().sendQuery("From Cliente c Where c.usuario.idUsuario="+usr.getIdUsuario()).get(0);
			HttpSession sesion=req.getSession(true);
			sesion.setAttribute("cliente",cliente);
			sesion.setAttribute("usuario", usr);
			return "dashboard";
		}else{
			System.out.println("El usuario no existe");
			return "login";
		}
	}
	@RequestMapping(value="/registro")
	public String doRegistro(HttpServletRequest req)throws Exception,ServletException{
		req.setAttribute("tiposDeDocumentos", HibernateUtil.getInstancia().sendQuery("From TipoDocumento"));
		req.setAttribute("paises", HibernateUtil.getInstancia().sendQuery("From Pais"));
		req.setAttribute("departamentos", HibernateUtil.getInstancia().sendQuery("From Departamento"));
		req.setAttribute("profesiones", HibernateUtil.getInstancia().sendQuery("From Profesion"));
		return "registro";
	}
	@RequestMapping(value="/registro.do")
	public String doRegistro(HttpServletRequest req,HttpServletResponse res)throws Exception,ServletException{
		
		Usuario usr=new Usuario(null,(Rol)HibernateUtil.getInstancia().find(Integer.parseInt("2"), Rol.class),req.getParameter("correo"),req.getParameter("txtContrasena"));
		
		HibernateUtil.getInstancia().add(usr);
		Cliente cliente=new Cliente(
				null,
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
		return "registro";
	}
	
	@RequestMapping(value="/usuario.do",method=RequestMethod.POST)
	public String doActions(@ModelAttribute Usuario usuario,BindingResult result,@RequestParam String action,Map<String,Object> map){
		Usuario usuarioResult=new Usuario();
		switch(action.toLowerCase()){
			case "add":
				HibernateUtil.getInstancia().add(usuario);
				usuarioResult=usuario;
				break;
			case "edit":
				HibernateUtil.getInstancia().add(usuario);
				usuarioResult=usuario;
				break;
			case "delete":
				HibernateUtil.getInstancia().remove(HibernateUtil.getInstancia().find(usuario.getIdUsuario(),Usuario.class));
				break;	
		}
		map.put("usuario",usuarioResult);
		map.put("listaUsuario",HibernateUtil.getInstancia().sendQuery("From Usuario"));
		return "usuario";
	}
}

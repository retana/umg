package edu.umg.ventasonline.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.umg.ventasonline.bean.Usuario;
import edu.umg.ventasonline.db.HibernateUtil;

@Controller
public class PruebaController {
	@RequestMapping(value="/")
	public String inicio(Map<String, Object> map){
		Usuario usuario=new Usuario();
		map.put("usuario",usuario);
		map.put("roles",HibernateUtil.getInstancia().sendQuery("From Rol"));
		map.put("listaUsuario",HibernateUtil.getInstancia().sendQuery("From Usuario"));
		return "usuario";
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

package edu.umg.ventasonline.db;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author retana
 */
public class HibernateUtil {
    private static HibernateUtil instancia;
    public static HibernateUtil getInstancia(){
        return (instancia==null)?new HibernateUtil():instancia;
    }
    private static final SessionFactory sessionFactory;
    
    static {
        try {
            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.
            sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
       
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public void add(Object obj){
        Session sesion=sessionFactory.openSession();
        sesion.beginTransaction();
        sesion.saveOrUpdate(obj);
        sesion.getTransaction().commit();
        sesion.close();
    }
    public void remove(Object obj){
        Session sesion=sessionFactory.openSession();
        sesion.beginTransaction();
        sesion.delete(obj);
        sesion.getTransaction().commit();
        sesion.close();
    }
    public Object find(String id,Class<?> classs){
        Session sesion=sessionFactory.openSession();
        sesion.beginTransaction();
        Object obj=sesion.get(classs, id);
        sesion.getTransaction().commit();
        sesion.close();
        return obj;
    }
    public Object find(Integer id,Class<?> classs){
        Session sesion=sessionFactory.openSession();
        sesion.beginTransaction();
        Object obj=sesion.get(classs,id);
        sesion.getTransaction().commit();
        sesion.close();
        return obj;
    }
    public List<Object> sendQuery(String consulta){
        List<Object> resultado=new ArrayList<>();
        Session sesion=sessionFactory.openSession();
        sesion.beginTransaction();
        resultado=sesion.createQuery(consulta).list() ;
        sesion.getTransaction().commit();
        sesion.close();
        return resultado;
    }
    public List<Object> sendSQLQuery(String consulta){
        List<Object> resultado=new ArrayList<>();
        Session sesion=sessionFactory.openSession();
        sesion.beginTransaction();
        resultado=sesion.createSQLQuery(consulta).list() ;
        sesion.getTransaction().commit();
        sesion.close();
        return resultado;
    }
    public List<Object> autenticarUsuario(String email,String password){
    	List<Object> resultado=new ArrayList();
        Session sesion=sessionFactory.openSession();
        resultado=(List<Object>)sesion.createQuery("From Usuario Where correo='"+email+"' and contrasena=CREAR_HASH('"+password+"')").list();
        sesion.close();
        return resultado;
    }
    
}
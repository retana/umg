import edu.umg.ventasonline.bean.Usuario;
import edu.umg.ventasonline.db.HibernateUtil;

public class Main {
	public static void main(String args[]){
		for (Object obj:HibernateUtil.getInstancia().autenticarUsuario("inforetana@gmail.com", "123")) {
			Usuario u=(Usuario) obj;
			System.out.println(u.getCorreo());
		}	
	}
}

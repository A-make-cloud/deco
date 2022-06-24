package controleur;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Client;
import model.ClientDAO;
import model.Database;



/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		Database.Connect();
		boolean messageinscriptionok=false;
		if(request.getParameter("binscription")!=null ) {
			
			String nom=request.getParameter("inom");
			String prenom=request.getParameter("iprenom");
			String adresse=request.getParameter("iadresse");
			String email=request.getParameter("iemail");
			String password=request.getParameter("ipassword");
			
			ClientDAO clientdao=new ClientDAO();
			Client cl=new Client(nom,prenom,adresse,email,password);
			clientdao.save(cl);
			System.out.println("INSCRIPTION OK");
			messageinscriptionok=true;
			
		}
		request.setAttribute("messageinscriptionok", messageinscriptionok);
			
		boolean connected=false;
		boolean messageconnexionno=false;
		if(request.getParameter("bconnexion")!=null ) {
			String email=request.getParameter("cemail");
			String password=request.getParameter("cpassword");
			ClientDAO clientdao=new ClientDAO();
			Client cl=clientdao.connexion(email, password);
			if(cl==null) {
				System.out.println("CONNEXION NO");
				messageconnexionno=true;
			}else {
				System.out.println("CONNEXION OK");
				HttpSession session = request.getSession( true );
		        session.setAttribute( "id_Client", cl.getId() );
		        session.setAttribute( "usernom", cl.getNom() );
		        session.setAttribute( "userprenom", cl.getPrenom() );
		        session.setAttribute( "useradresse", cl.getAdresse() );
		        session.setAttribute( "useremail", cl.getEmail() );
		        session.setAttribute( "isConnected", true );
				connected=true;
				response.sendRedirect("Index");  
			}
		}
		request.setAttribute("messageconnexionno", messageconnexionno);
		
		if(connected==false) {
		request.getRequestDispatcher( "/connexion.jsp" ).forward( request, response );
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}

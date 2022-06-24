package controleur;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Avis;
import model.AvisDAO;
import model.Categorie;
import model.CategorieDAO;
import model.Client;
import model.ClientDAO;
import model.Commentaire;
import model.CommentaireDAO;
import model.Database;
import model.Produit;
import model.ProduitDAO;


/**
 * Servlet implementation class Ajout_comments
 */
@WebServlet("/Ajout_comments")
public class Ajout_comments extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajout_comments() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		//AFFICHER LES AVIS:
		Database.Connect();
		AvisDAO avisdao=new AvisDAO();
		ArrayList<Avis> avi = new ArrayList<Avis>();
		
		avi=avisdao.getAll();
		request.setAttribute("avi", avi);
		
		//Poste par  par client
		CommentaireDAO commentsdao=new CommentaireDAO();
		ArrayList<Commentaire> comclie=new ArrayList<Commentaire>();
		comclie=commentsdao.getAllComments();
		
		request.setAttribute("comclie", comclie);
		
		//POSTER LES AVIS:
		
		
		boolean commentaireok=false;
		if(request.getParameter("bcomment")!=null ) {
			HttpSession session = request.getSession( true );
		
	    	int id_Client= (int)session.getAttribute("id_Client");
	    	session.setAttribute( "id_Client", id_Client);
			String contenu=request.getParameter("contenu");
			int id_Avis=Integer.valueOf(request.getParameter("id_Avis"));
			
			CommentaireDAO commentairedao=new CommentaireDAO();
			Commentaire co=new Commentaire(id_Client,contenu,id_Avis);
			commentairedao.save_site(co);
			
			System.out.println("ADD comment ok  OK");
			commentaireok=true;
			
		}
		CommentaireDAO commentairedao=new CommentaireDAO();
		ArrayList<Commentaire> com=new ArrayList<Commentaire>();
		com=commentairedao.getAll();
		
		
		request.setAttribute("com", com);
		request.setAttribute("commentaireok", commentaireok);
		
	
		
		request.getRequestDispatcher( "/commentaires.jsp" ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

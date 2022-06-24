package controleur;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Categorie;
import model.CategorieDAO;
import model.Commande;
import model.CommandeDAO;
import model.Database;
import model.Panier;



/**
 * Servlet implementation class Commandeok
 */
@WebServlet("/Commandeok")
public class Commandeok extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Commandeok() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Database.Connect();
		HttpSession session = request.getSession( true );
		if(session.getAttribute("isConnected")==null) {
			session.setAttribute( "isConnected", false );
		}
		
		
		
		
		if((Panier) session.getAttribute("panier")==null) {
			Panier panier_temp=new Panier();
			session.setAttribute( "panier", panier_temp );
		}
		
		
		CommandeDAO commandedao = new CommandeDAO();
		ArrayList<Commande> cdme =new ArrayList<Commande>();
		cdme=commandedao.getAll();
		
		request.setAttribute("cdme", cdme);
		
		CategorieDAO categoriedao=new CategorieDAO();
		
		ArrayList<Categorie> cats = new ArrayList<Categorie>();
		
		
		cats=categoriedao.getAll();
		request.setAttribute("cats", cats);
		
		request.getRequestDispatcher( "/Commandeok.jsp" ).forward( request, response );
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

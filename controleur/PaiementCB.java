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

import model.Categorie;
import model.CategorieDAO;
import model.Commande;
import model.CommandeDAO;
import model.Commentaire;
import model.CommentaireDAO;
import model.Database;
import model.Detail;
import model.DetailDAO;
import model.Panier;
import model.PanierDetails;
import model.Produit;

/**
 * Servlet implementation class PaiementCB
 */
@WebServlet("/PaiementCB")
public class PaiementCB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaiementCB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	Database.Connect();

		
		
		boolean paiementCBok=false;
		if(request.getParameter("bcart")!=null ) {
			HttpSession session = request.getSession( true );
			Panier panier=(Panier) session.getAttribute("panier");
	
			int id_Client= (int)session.getAttribute("id_Client");
	    	session.setAttribute( "id_Client", id_Client);
			String adresse =request.getParameter("adresse");
			String telephone=request.getParameter("telephone");
			String email=request.getParameter("email");
			String mode=request.getParameter("mode");
			String idtransaction=request.getParameter("idtransaction");
			String numero=request.getParameter("numero");
			String mois=request.getParameter("mois");
			String annee=request.getParameter("annee");
			String crypto=request.getParameter("crypto");
			String montant=request.getParameter("montant");
			String dateP=request.getParameter("dateP");
			String client=request.getParameter("client");
			String facture=request.getParameter("facture");
//			int id_Client=Integer.valueOf(request.getParameter("id_Client"));
		int id_Facture=Integer.valueOf(request.getParameter("id_Facture"));
			
			CommandeDAO commandedao=new CommandeDAO();
			Commande co=new Commande(adresse,telephone,email,mode,idtransaction,numero,mois,annee,crypto,montant,dateP,id_Client,id_Facture);
			commandedao.save_paiement(co);
			System.out.println("ADD paiem CB ok  OK");
			paiementCBok=true;
			
		}
	
		
		
		request.setAttribute("paiementCBok", paiementCBok);
		request.getRequestDispatcher( "/cart.jsp" ).forward( request, response );
		
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

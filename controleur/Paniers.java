package controleur;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Commande;
import model.CommandeDAO;
import model.Database;
import model.Detail;
import model.DetailDAO;
import model.Panier;
import model.PanierDetails;

/**
 * Servlet implementation class Paniers
 */
@WebServlet("/Paniers")
public class Paniers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Paniers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Database.Connect();
		
		boolean commandeok=false;
		
//		SUPPRIMER UN PRODUIT => PANIER
		if(request.getParameter("delete")!=null ) {
			HttpSession session = request.getSession( true );
			int idproduit=Integer.valueOf(request.getParameter("delete"));
			Panier panier=(Panier) session.getAttribute("panier");
			panier.delete(idproduit);
			session.setAttribute( "panier", panier );
		}
		
		
		
		//VALIDER LA COMMANDE
		if(request.getParameter("valider")!=null ) {
			HttpSession session = request.getSession( true );
			
			CommandeDAO commandedao=new CommandeDAO();
			DetailDAO detaildao=new DetailDAO();
			
			Panier panier=(Panier) session.getAttribute("panier");
			
			int idclient= (int)session.getAttribute("id_Client");
			double total=panier.total();
			long millis=System.currentTimeMillis();  
	        Date date=new Date(millis);

	        
	        //ENREGISTREMENT DE LA COMMANDE et RECUPERATION DE L'ID
	        Commande commande=new Commande(total,date,idclient);
	        int commandeid=commandedao.save(commande);
	        
	        //ENREGISTREMENT DES DETAILS DE LA COMMANDE
	        for(PanierDetails pd:panier.articles) {
	        	Detail d = new Detail();
	        	d.setQuantite(pd.getQte());
	        	d.setId_Commande(commandeid);
	        	d.setPrix(pd.getProduit().getPrix());
	        	d.setId_Produit(pd.getProduit().getId());
	        	detaildao.save(d);
	        }
	    //   panier.vider();
	        
	      		
			session.setAttribute( "panier", panier );
			commandeok=true;
			response.sendRedirect("Commandeok"); 
		}	
	
		
		if(!commandeok) {
		request.getRequestDispatcher( "/paniers.jsp" ).forward( request, response );
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

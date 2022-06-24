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
import model.Database;
import model.Panier;
import model.PanierDetails;
import model.Produit;
import model.ProduitDAO;

/**
 * Servlet implementation class Details
 */
@WebServlet("/Details")
public class Details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Details() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Database.Connect();
		ProduitDAO produitdao= new ProduitDAO();
		ArrayList<Produit> prods= new ArrayList<Produit>();
		prods=produitdao.getAll();
		
		int id=Integer.valueOf(request.getParameter("id"));
		Produit cprod=produitdao.getById(id);
		
		int prodcat=cprod.getId_Categorie();
		CategorieDAO categoriedao= new CategorieDAO();
		
		Categorie cat=categoriedao.getById(id);
		
		
		//AFFICHER PRODUIT DANS PAGE DETAILS
		prods=produitdao.getAllByCat(prodcat);
		
		request.setAttribute("cprod", cprod);
		request.setAttribute("prods", prods);
		request.setAttribute("cattitre", cat.getTitre());
		
		//AJOUTER AU PANIER
		if(request.getParameter("padd")!=null) {
			HttpSession session=request.getSession(true);
			int qte=Integer.valueOf(request.getParameter("pqte"));
			PanierDetails panieradd= new PanierDetails(cprod,qte);
			
			Panier panier=(Panier)session.getAttribute("panier");
			panier.ajouter(panieradd);
			request.setAttribute("panier", panier);
			request.setAttribute("pqte", qte);
			
			System.out.println((Panier) session.getAttribute("panier"));
		}
		
		
		request.getRequestDispatcher("/details.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

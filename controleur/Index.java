package controleur;

import java.io.IOException;
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
import model.Database;
import model.Produit;
import model.ProduitDAO;

/**
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//MENU LI
		Database.Connect();
		CategorieDAO categoriedao=new CategorieDAO();
		ArrayList<Categorie> cats= new ArrayList<Categorie>();
		cats=categoriedao.getAll();
		
		request.setAttribute("cats", cats);
		
	
		ProduitDAO produitdao = new ProduitDAO();
		ArrayList<Produit> prods= new ArrayList<Produit>();
		prods=produitdao.getAll();
		
		request.setAttribute("prods", prods);
		
		//AFFICHER LES AVIS:
		AvisDAO avisdao = new AvisDAO();
		ArrayList<Avis> avi=new ArrayList<Avis>();
		avi=avisdao.getAll();
		
		System.out.println("cb ok ok");

			
			request.setAttribute("avi", avi);
	
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package controleur;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CategorieDAO;
import model.Database;
import model.Produit;
import model.ProduitDAO;



/**
 * Servlet implementation class Index
 */
@WebServlet("/Produits")
public class Produits extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Produits() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Database.Connect();
		CategorieDAO categoriedao=new CategorieDAO();
		ProduitDAO produitdao=new ProduitDAO();
		
		ArrayList<Produit> prods = new ArrayList<Produit>();
		
		int id=Integer.valueOf(request.getParameter("id"));
		
		prods=produitdao.getAllByCat(id);
		String titre=categoriedao.getById(id).getTitre();
			
		request.setAttribute("titre", titre);
		request.setAttribute("prods", prods);
		
		request.getRequestDispatcher( "/produits.jsp" ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher( "/produits.jsp" ).forward( request, response );
	}

}

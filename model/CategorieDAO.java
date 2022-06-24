package model;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;





public class CategorieDAO {
	
	public void save(Categorie obj) {
		
			try {
				
				if(obj.getId() != 0) {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE categories set titre=? WHERE id=?");
					preparedStatement.setString(1,obj.getTitre());
					preparedStatement.setInt(2,obj.getId());
		            preparedStatement.executeUpdate();
				}else {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO categories (titre) VALUES(?)");
					preparedStatement.setString(1,obj.getTitre());
		            preparedStatement.executeUpdate();
				}
				System.out.println("SAVED OK");
				
			} catch (Exception ex) {
	        	ex.printStackTrace();
	        	System.out.println("SAVED NO");
	        }
		
	}
	

  
	
	public int getCountProduitsById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
		prepareStatement("SELECT COUNT(*) as nbr FROM produits WHERE id_Categorie=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				resultat.next();

				int nbr = resultat.getInt( "nbr" );
				System.out.println(nbr);
				return nbr;
				
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return 0;
        }
	}
	
	
	public Categorie getById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM categories WHERE id=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				
				Categorie u = new Categorie();
				while(resultat.next()) {
					u.setId(resultat.getInt( "id" ));
					u.setTitre(resultat.getString( "titre" ));
				}
				return u;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	
	public ArrayList<Categorie> getAll() {
		ArrayList<Categorie> list = new ArrayList<Categorie>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM categories");
				
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Categorie o = new Categorie();
					o.setId(resultat.getInt( "id" ));
					o.setTitre(resultat.getString( "titre" ));
					list.add(o);
				}
				
				
				return list;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	public void deleteById(int id) {
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM categories WHERE id=?");
				preparedStatement.setInt(1,id);
				
				preparedStatement.executeUpdate();
				
				System.out.println("DELETED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("DELETED NO");
        }
	}
	
	
	
}

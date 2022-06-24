package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class AvisDAO {
	
	public void save(Avis obj) {
		
			try {
				
				if(obj.getId() != 0) {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE avis set satisfaction=? WHERE id=?");
					preparedStatement.setString(1,obj.getSatisfaction());
					preparedStatement.setInt(2,obj.getId());
		            preparedStatement.executeUpdate();
				}else {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO avis (satisfaction) VALUES(?)");
					preparedStatement.setString(1,obj.getSatisfaction());
		            preparedStatement.executeUpdate();
				}
				System.out.println("SAVED OK");
				
			} catch (Exception ex) {
	        	ex.printStackTrace();
	        	System.out.println("SAVED NO");
	        }
		
	}
	
	public int getCountCommentairesById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
		prepareStatement("SELECT COUNT(*) as nbr FROM commentaire WHERE id_Avis=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				resultat.next();

				int nbr = resultat.getInt( "nbr" );
				return nbr;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return 0;
        }
	}
	
	
	public Avis getById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM avis WHERE id=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				
				Avis u = new Avis();
				while(resultat.next()) {
					u.setId(resultat.getInt( "id" ));
					u.setSatisfaction(resultat.getString( "satisfaction" ));
				}
				return u;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	
	public ArrayList<Avis> getAll() {
		ArrayList<Avis> list = new ArrayList<Avis>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM avis");
				
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Avis o = new Avis();
					o.setId(resultat.getInt( "id" ));
					o.setSatisfaction(resultat.getString( "satisfaction" ));
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
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM avis WHERE id=?");
				preparedStatement.setInt(1,id);
				
				preparedStatement.executeUpdate();
				
				System.out.println("DELETED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("DELETED NO");
        }
	}
}

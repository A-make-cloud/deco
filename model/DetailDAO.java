package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DetailDAO {
	public void save(Detail obj) {
		
				try {
					
					if(obj.getId() != 0) {
						PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE details set quantite=?,prix=?,id_Commande=?,id_Produit=? WHERE id=?");
						preparedStatement.setInt(1,obj.getQuantite());
						preparedStatement.setDouble(2,obj.getPrix());
						preparedStatement.setInt(3,obj.getId_Commande());
						preparedStatement.setInt(4,obj.getId_Produit());
						preparedStatement.setInt(5,obj.getId());
			            preparedStatement.executeUpdate();
					}else {
						PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO details (quantite,prix,id_Commande,id_Produit) VALUES(?,?,?,?)");
						preparedStatement.setInt(1,obj.getQuantite());
						preparedStatement.setDouble(2,obj.getPrix());
						preparedStatement.setInt(3,obj.getId_Commande());
						preparedStatement.setInt(4,obj.getId_Produit());
			            preparedStatement.executeUpdate();
					}
					System.out.println("SAVED OK");
					
				} catch (Exception ex) {
		        	ex.printStackTrace();
		        	System.out.println("SAVED NO");
		        }
			
		}
		
		public Detail getById(int id) {
			try {
			
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM details WHERE id=?");
					preparedStatement.setInt(1,id);
					
					ResultSet resultat=preparedStatement.executeQuery();
					
					Detail u = new Detail();
					while(resultat.next()) {
						u.setId(resultat.getInt( "id" ));
						u.setId(resultat.getInt( "id" ));
						u.setQuantite(resultat.getInt( "quantite" ));
						u.setPrix(resultat.getDouble( "prix" ));
						u.setId_Commande(resultat.getInt( "id_Commande" ));
						u.setId_Produit(resultat.getInt( "id_Produit" ));
					}
					return u;
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	return null;
		    }
		}
		
		
		
		
		
		public ArrayList<Detail> getAllByCommande(int commandeid) {
			ArrayList<Detail> list = new ArrayList<Detail>();
			try {
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM details WHERE id_Commande=?");
					preparedStatement.setInt(1,commandeid);
					ResultSet resultat=preparedStatement.executeQuery();
		
					while(resultat.next()) {
						Detail u = new Detail();
						u.setId(resultat.getInt( "id" ));
						u.setQuantite(resultat.getInt( "quantite" ));
						u.setPrix(resultat.getDouble( "prix" ));
						u.setId_Commande(resultat.getInt( "id_Commande" ));
						u.setId_Produit(resultat.getInt( "id_Produit" ));
						list.add(u);
					}
					
					
					return list;
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	return null;
		    }
		}
		
		
		
		public void deleteById(int id) {
			try {
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM details WHERE id=?");
					preparedStatement.setInt(1,id);
					
					preparedStatement.executeUpdate();
					
					System.out.println("DELETED OK");
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	System.out.println("DELETED NO");
		    }
		}	
}

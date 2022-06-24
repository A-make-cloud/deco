package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CommentaireDAO {
	//AVIS ajoute dans l ADMIN	
		public int save(Commentaire obj) {
				int newid=0;
				try {
					
					if(obj.getId() != 0) {
						PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE commentaires set contenu=?,date=?,id_Client=?,id_Avis=? WHERE id=?");
						preparedStatement.setString(1,obj.getContenu());
						preparedStatement.setDate(2,obj.getDate());
						preparedStatement.setInt(3,obj.getId_Client());
						preparedStatement.setInt(4,obj.getId_Avis());
						preparedStatement.setInt(5,obj.getId());
			            preparedStatement.executeUpdate();
			            newid=obj.getId_Client();
					}else {
						PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO commentaires (contenu,date,id_Client,id_Avis) VALUES(?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
						preparedStatement.setString(1,obj.getContenu());
						preparedStatement.setDate(2,obj.getDate());
						preparedStatement.setInt(3,obj.getId_Client());
						preparedStatement.setInt(4,obj.getId_Avis());
			            preparedStatement.executeUpdate();
			            
			            ResultSet resultat = preparedStatement.getGeneratedKeys();
			            resultat.next();
			            newid= resultat.getInt(1) ;
			         
			            
					}
					System.out.println("SAVED OK");
				} catch (Exception ex) {
		        	ex.printStackTrace();
		        	System.out.println("SAVED NO");
		        }
				return newid;
			
		}
		
//AVIS POSTE SUR LE SITE	
	
		
		public void save_site(Commentaire obj) {
			
			try {
				
				if(obj.getId() != 0) {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE comments set id_Client=?,contenu=?,id_Avis=? WHERE id=?");
					//preparedStatement.setString(1,obj.getClient());
					preparedStatement.setInt(1,obj.getId_Client());
					preparedStatement.setString(2,obj.getContenu());
//					preparedStatement.setString(3,obj.getId_Avis());
					preparedStatement.setInt(3,obj.getId_Avis());
					preparedStatement.setInt(4,obj.getId());
		            preparedStatement.executeUpdate();
				}else {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO comments (id_Client,contenu,id_Avis) VALUES(?,?,?)", Statement.RETURN_GENERATED_KEYS);
					//preparedStatement.setString(1,obj.getClient());
					preparedStatement.setInt(1,obj.getId_Client());
					preparedStatement.setString(2,obj.getContenu());
//					preparedStatement.setString(3,obj.getId_Avis());
					preparedStatement.setInt(3,obj.getId_Avis());
		            preparedStatement.executeUpdate();
				}
				System.out.println("SAVED commentaire site OK");
				
			} catch (Exception ex) {
	        	ex.printStackTrace();
	        	System.out.println("SAVED commentaires site NO");
	        }
		
	}
		//AVIS POSTE SUR LE SITE AFFICHAGE		
		public ArrayList<Commentaire> getAllComments() {
			ArrayList<Commentaire> list = new ArrayList<Commentaire>();
			try {
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM comments ORDER BY id "+ "DESC LIMIT 3");
					
					ResultSet resultat=preparedStatement.executeQuery();
		
					while(resultat.next()) {
						Commentaire u = new Commentaire();
						u.setId(resultat.getInt( "id" ));
						u.setContenu(resultat.getString( "contenu" ));
//						u.setDate(resultat.getDate( "date" ));
						u.setId_Client(resultat.getInt( "id_Client" ));
						u.setId_Avis(resultat.getInt( "id_Avis" ));
					
						list.add(u);
					}
					
					
					return list;
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	return null;
		    }
		}
		//autre commentaires  AFFICHAGE	
		public Commentaire getById(int id) {
			try {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM commentaires WHERE id=?");
					preparedStatement.setInt(1,id);
					
					ResultSet resultat=preparedStatement.executeQuery();
					
					Commentaire u = new Commentaire();
					while(resultat.next()) {
						u.setId(resultat.getInt( "id" ));
						u.setContenu(resultat.getString( "contenu" ));
						u.setDate(resultat.getDate( "date" ));
						u.setId_Client(resultat.getInt( "id_Client" ));
						u.setId_Avis(resultat.getInt( "id_Avis" ));
					}
					return u;
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	return null;
		    }
		}
		
		
		public ArrayList<Commentaire> getAll() {
			ArrayList<Commentaire> list = new ArrayList<Commentaire>();
			try {
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM commentaires");
					
					ResultSet resultat=preparedStatement.executeQuery();
		
					while(resultat.next()) {
						Commentaire u = new Commentaire();
						u.setId(resultat.getInt( "id" ));
						u.setContenu(resultat.getString( "contenu" ));
						u.setDate(resultat.getDate( "date" ));
						u.setId_Client(resultat.getInt( "id_Client" ));
						u.setId_Avis(resultat.getInt( "id_Avis" ));
					
						list.add(u);
					}
					
					
					return list;
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	return null;
		    }
		}
		
		
		public ArrayList<Commentaire> getAllByAvis(int idavis) {
			ArrayList<Commentaire> list = new ArrayList<Commentaire>();
			try {
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM commentaires WHERE id_Avis=?");
					preparedStatement.setInt(1,idavis);
					ResultSet resultat=preparedStatement.executeQuery();
		
					while(resultat.next()) {
						Commentaire u = new Commentaire();
						u.setId(resultat.getInt( "id" ));
						u.setContenu(resultat.getString( "contenu" ));
						u.setDate(resultat.getDate( "date" ));
						u.setId_Client(resultat.getInt( "id_Client" ));
						u.setId_Avis(resultat.getInt( "id_Avis" ));
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
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM commentaires WHERE id=?");
					preparedStatement.setInt(1,id);
					
					preparedStatement.executeUpdate();
					
					System.out.println("DELETED OK");
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	System.out.println("DELETED NO");
		    }
		}	
}

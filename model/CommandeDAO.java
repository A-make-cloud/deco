package model;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CommandeDAO {
	/*
		public int save(Commande obj) {
				int newid=0;
				
				try {
					
					if(obj.getId() != 0) {
						PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE commandes set total=?,date=?,etat=?,transactionID=?,trackingNbr=?,id_Client=? WHERE id=?");
						preparedStatement.setDouble(1,obj.getTotal());
						preparedStatement.setDate(2,obj.getDate());
						preparedStatement.setInt(3,obj.getEtat());
						preparedStatement.setString(4,obj.getTransactionID());
						preparedStatement.setString(5,obj.getTrackingNbr());
						preparedStatement.setInt(6,obj.getId_Client());
						preparedStatement.setInt(7,obj.getId());
			            preparedStatement.executeUpdate();
			            newid=obj.getId_Client();
					}else {
						PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO commandes (total,date,etat,transactionID,trackingNbr,id_Client) VALUES(?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
						preparedStatement.setDouble(1,obj.getTotal());
						preparedStatement.setDate(2,obj.getDate());
						preparedStatement.setInt(3,obj.getEtat());
						preparedStatement.setString(4,obj.getTransactionID());
						preparedStatement.setString(5,obj.getTrackingNbr());
						preparedStatement.setInt(6,obj.getId_Client());
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
		
		*/
	
	public int save(Commande obj) {
		int newid=0;
	
		try {
			
			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE commandes set total=?,date=?,etat=?,transactionID=?,trackingNbr=?,id_Client=? WHERE id=? ");
				preparedStatement.setDouble(1,obj.getTotal());
				preparedStatement.setDate(2,obj.getDate());
				preparedStatement.setString(3,obj.getEtat());
				preparedStatement.setString(4,obj.getTransactionID());
				preparedStatement.setString(5,obj.getTrackingNbr());
				preparedStatement.setInt(6,obj.getId_Client());
				preparedStatement.setInt(7,obj.getId());
	            preparedStatement.executeUpdate();
	            newid=obj.getId_Client();
	            
	            System.out.println("update ok livraison  OK");
			}else {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO commandes (total,date) VALUES(?,?)", Statement.RETURN_GENERATED_KEYS);
				preparedStatement.setDouble(1,obj.getTotal());
				preparedStatement.setDate(2,obj.getDate());
				preparedStatement.setString(3,obj.getEtat());
				preparedStatement.setString(4,obj.getTransactionID());
				preparedStatement.setString(5,obj.getTrackingNbr());
				preparedStatement.setInt(6,obj.getId_Client());
//		
//				preparedStatement.setInt(3,obj.getId_Client());
			    preparedStatement.executeUpdate();
	            
	            ResultSet resultat = preparedStatement.getGeneratedKeys();
	            resultat.next();
	            newid= resultat.getInt(1) ;
	           // newid=obj.getId_Client();
	           
	            
			}
			System.out.println("SAVED OK");
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("SAVED commandes NO");
        }
		return newid;
	
}
		
		public Commande getById(int id) {
			try {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM commandes WHERE id=?");
					preparedStatement.setInt(1,id);
					
					ResultSet resultat=preparedStatement.executeQuery();
					
					Commande u = new Commande();
					while(resultat.next()) {
						u.setId(resultat.getInt( "id" ));
						u.setTotal(resultat.getDouble( "total" ));
						u.setDate(resultat.getDate( "date" ));
						u.setEtat(resultat.getString( "etat" ));
						u.setTransactionID(resultat.getString( "transactionID" ));
						u.setTrackingNbr(resultat.getString( "trackingNbr" ));
						u.setId_Client(resultat.getInt( "id_Client" ));
				
					}
					return u;
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	return null;
		    }
		}
		
		
		public ArrayList<Commande> getAll() {
			ArrayList<Commande> list = new ArrayList<Commande>();
			try {
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM commandes");
					
					ResultSet resultat=preparedStatement.executeQuery();
		
					while(resultat.next()) {
						Commande u = new Commande();
						u.setId(resultat.getInt( "id" ));
						u.setTotal(resultat.getDouble( "total" ));
						u.setDate(resultat.getDate( "date" ));
						u.setEtat(resultat.getString( "etat" ));
						u.setTransactionID(resultat.getString( "transactionID" ));
						u.setTrackingNbr(resultat.getString( "trackingNbr" ));
						u.setId_Client(resultat.getInt( "id_Client" ));
					
						list.add(u);
					}
					
					
					return list;
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	return null;
		    }
		}
		
		
		public ArrayList<Commande> getAllByInscription(int idclient) {
			ArrayList<Commande> list = new ArrayList<Commande>();
			try {
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM commandes WHERE id_Client=?");
					preparedStatement.setInt(1,idclient);
					ResultSet resultat=preparedStatement.executeQuery();
		
					while(resultat.next()) {
						Commande u = new Commande();
						u.setId(resultat.getInt( "id" ));
						u.setTotal(resultat.getDouble( "total" ));
						u.setDate(resultat.getDate( "date" ));
						u.setEtat(resultat.getString( "etat" ));
						u.setTransactionID(resultat.getString( "transactionID" ));
						u.setTrackingNbr(resultat.getString( "trackingNbr" ));
						u.setId_Client(resultat.getInt( "id_Client" ));
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
				
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM commandes WHERE id=?");
					preparedStatement.setInt(1,id);
					
					preparedStatement.executeUpdate();
					
					System.out.println("DELETED OK");
				
			} catch (Exception ex) {
		    	ex.printStackTrace();
		    	System.out.println("DELETED NO");
		    }
			
		}
		
//		public Commande save_paiement(String adresse,String telephone,String email,String idtransaction,String mode,String numero,String mois,String annee,String Lcrypto, String id_Client, String id_Facture) {
	
		
			public void  save_paiement(Commande obj) {
				int newid=0;	
					try {
									
					if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE  paiements set adresse=?,telephone=?,email=?,mode=?,idtransaction=?,numero=?,mois=?,annee=?,crypto=?,montant=?,dateP=?,id_Client=?,id_Facture=? WHERE id=?");
				preparedStatement.setString(1,obj.getAdresse());
				preparedStatement.setString(2,obj.getTelephone());
				preparedStatement.setString(3,obj.getEmail());
				preparedStatement.setString(4,obj.getMode());
				preparedStatement.setString(5,obj.getIdtransaction());
				preparedStatement.setString(6,obj.getNumero());
				preparedStatement.setString(7,obj.getMois());
				preparedStatement.setString(8,obj.getAnnee());
				preparedStatement.setString(9,obj.getCrypto());
				preparedStatement.setString(10,obj.getDateP());
				preparedStatement.setString(11,obj.getMontant());
				preparedStatement.setInt(12,obj.getId_Client());
				preparedStatement.setInt(13,obj.getId_Facture());
				ResultSet resultat=preparedStatement.executeQuery();
				Commande u = new Commande();
				}else {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO paiements (adresse,telephone,email,mode,idtransaction,numero,mois,annee,crypto,dateP,montant,id_Client,id_Facture) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
					preparedStatement.setString(1,obj.getAdresse());
					preparedStatement.setString(2,obj.getTelephone());
					preparedStatement.setString(3,obj.getEmail());
					preparedStatement.setString(4,obj.getMode());
					preparedStatement.setString(5,obj.getIdtransaction());
					preparedStatement.setString(6,obj.getNumero());
					preparedStatement.setString(7,obj.getMois());
					preparedStatement.setString(8,obj.getAnnee());
					preparedStatement.setString(9,obj.getCrypto());
					preparedStatement.setString(10,obj.getDateP());
					preparedStatement.setString(11,obj.getMontant());
					preparedStatement.setInt(12,obj.getId_Client());
					preparedStatement.setInt(13,obj.getId_Commande());
		            preparedStatement.executeUpdate();
		            
		            ResultSet resultat = preparedStatement.getGeneratedKeys();
		            resultat.next();
		            newid= resultat.getInt(1) ;
		            System.out.println("SAVED CB insert OK");
				}
				
				
			} catch (Exception ex) {
	        	ex.printStackTrace();
	        	System.out.println("SAVED CB paiem NO");
	        }

			
		
}



	
}
			
			

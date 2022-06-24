package model;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CartDAO {

		public int test(Cart obj) {
				int newid=0;
				
				try {
					
					if(obj.getId() != 0) {
						PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE cart set address=?,city=?,state=?,country=?,mobileNumber=? where email=?");
						preparedStatement.setString(1, obj.getAddress());
						preparedStatement.setString(2, obj.getCity());
						preparedStatement.setString(3, obj.getState());
						preparedStatement.setString(4, obj.getcountry());
						preparedStatement.setString(5, obj.getMobileNumber());
						preparedStatement.setString(6, obj.getEmail());
						 preparedStatement.executeUpdate();
//				            newid=obj.getId_Client();
					}else {
						PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO commandes (total,date,etat,transactionID,trackingNbr,id_Client) VALUES(?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
						preparedStatement.setString(1, obj.getAddress());
						preparedStatement.setString(2, obj.getCity());
						preparedStatement.setString(3, obj.getState());
						preparedStatement.setString(4, obj.getcountry());
						preparedStatement.setString(5, obj.getMobileNumber());
						preparedStatement.setString(6, obj.getEmail());
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
		
		
	
	
/*	
	
	public Cart save(String Ladresse,int Ltelephone,String Lemail,String Lidtransaction,String Lmode,int Lnumero,int Lmois,int Lannee,int Lcrypto) {
		try {

			PreparedStatement preparedStatement  = Database.connexion.
					prepareStatement("UPDATE cart set Ladresse=?,Ltelephoned=?,Lemail=?,Lidtransaction=?,Lnumero=?,Lmois=?,Lannee=?,Lcrypto=? WHERE id=?");
			preparedStatement.setString(1,Ladresse);
			preparedStatement.setInt(2,Ltelephone);
			preparedStatement.setString(3,Lemail);
			preparedStatement.setString(4,Lidtransaction);
			preparedStatement.setString(5,Lmode);
			preparedStatement.setInt(2,Lnumero);
			preparedStatement.setInt(1,Lmois);
			preparedStatement.setInt(2,Lannee);
			preparedStatement.setInt(2,Lcrypto);
			ResultSet resultat=preparedStatement.executeQuery();
			Commande u = new Commande();
			
			resultat.next();
			/*
			if(resultat.next()) {
				u.setId(resultat.getInt( "id" ));
				u.setLadresse(resultat.getString( "Ladresse" ));
				u.setLtelephoned(resultat.getString( "Ltelephoned" ));
				u.setLemail(resultat.getString( "Lemail" ));
				u.setLidtransaction(resultat.getString( "Lidtransaction" ));
				u.setLidtransaction(resultat.getString( "Lmode" ));
				u.setLnumero(resultat.getString( "Lnumero" ));
				u.setLmois(resultat.getString( "Lmois" ));
				u.setLannee(resultat.getString( "Lannee" ));
				u.setLcrypto(resultat.getString( "Lcrypto" ));
				
				return u;

} catch (Exception ex) {
ex.printStackTrace();
return null;
}

		
	
}
	
*/	
		/*
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
		
*/		
		
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
		
		public Commande paiement(String Ladresse,int Ltelephone,String Lemail,String Lidtransaction,String Lmode,int Lnumero,int Lmois,int Lannee,int Lcrypto) {
			try {
	
				PreparedStatement preparedStatement  = Database.connexion.
						prepareStatement("SELECT * FROM paiements WHERE Ladresse=?,Ltelephoned=?,Lemail=?,Lidtransaction=?,Lnumero=?,Lmois=?,Lannee=?,Lcrypto=?");
				preparedStatement.setString(1,Ladresse);
				preparedStatement.setInt(2,Ltelephone);
				preparedStatement.setString(3,Lemail);
				preparedStatement.setString(4,Lidtransaction);
				preparedStatement.setString(5,Lmode);
				preparedStatement.setInt(2,Lnumero);
				preparedStatement.setInt(1,Lmois);
				preparedStatement.setInt(2,Lannee);
				preparedStatement.setInt(2,Lcrypto);
				ResultSet resultat=preparedStatement.executeQuery();
				Commande u = new Commande();
				
				resultat.next();
				/*
				if(resultat.next()) {
					u.setId(resultat.getInt( "id" ));
					u.setLadresse(resultat.getString( "Ladresse" ));
					u.setLtelephoned(resultat.getString( "Ltelephoned" ));
					u.setLemail(resultat.getString( "Lemail" ));
					u.setLidtransaction(resultat.getString( "Lidtransaction" ));
					u.setLidtransaction(resultat.getString( "Lmode" ));
					u.setLnumero(resultat.getString( "Lnumero" ));
					u.setLmois(resultat.getString( "Lmois" ));
					u.setLannee(resultat.getString( "Lannee" ));
					u.setLcrypto(resultat.getString( "Lcrypto" ));
*/				
					return u;
	
} catch (Exception ex) {
	ex.printStackTrace();
	return null;
}

			
		
}




		public void save(controleur.Cart c,String address, String city, String state, String country, String mobileNumber, String email, String paymentMethod, String transactionId, String status ) {
	   
		int id=1;

		     
		     	try
		 		{
		     		
		     		PreparedStatement ps  = Database.connexion.prepareStatement("update cart set address=?,city=?,state=?,country=?,mobileNumber=? where email=?");
		     		ps.setString(1,address );
		     		ps.setString(2,city);
		     		ps.setString(3,state );
		     		ps.setString(4,country );
		     		ps.setString(5,mobileNumber);
		     		ps.setString(6,email );
		     		ps.executeUpdate();
		     	
		     		
		     		PreparedStatement ps1  = Database.connexion.prepareStatement("update cart set address=?,city=?,state=?,country=?,mobileNumber=?,paymentMethod=?,transactionId=?,status=? where email=? and address is NULL");
		     		ps1.setString(1,address);
		     		ps1.setString(2,city);
		     		ps1.setString(3,state );
		     		ps1.setString(4,country );
		     		ps1.setString(5,mobileNumber);
		     		ps1.setString(6,paymentMethod );
		     		ps1.setString(7,transactionId);
		     		ps1.setString(8,status);
		     		ps1.setString(9,email);
		     		
		     		ps1.executeUpdate();
		     		
		   

		 	}
		 		catch(Exception e)
		 		{
		 			System.out.println(e);
		 			
		 		
		 		}
			
		}




	





	
}
			
			

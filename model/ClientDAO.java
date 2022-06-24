package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ClientDAO {

	public void save(Client obj) {
		
			try {
				
				if(obj.getId() != 0) {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE clients set nom=?,prenom=?,adresse=?,email=?,password=? WHERE id=?");
					preparedStatement.setString(1,obj.getNom());
					preparedStatement.setString(2,obj.getPrenom());
					preparedStatement.setString(3,obj.getAdresse());
					preparedStatement.setString(4,obj.getEmail());
					preparedStatement.setString(5,obj.getPassword());;
					preparedStatement.setInt(6,obj.getId());
		            preparedStatement.executeUpdate();
				}else {
					PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO clients (nom,prenom,adresse,email,password) VALUES(?,?,?,?,?)");
					preparedStatement.setString(1,obj.getNom());
					preparedStatement.setString(2,obj.getPrenom());
					preparedStatement.setString(3,obj.getAdresse());
					preparedStatement.setString(4,obj.getEmail());
					preparedStatement.setString(5,obj.getPassword());
		            preparedStatement.executeUpdate();
				}
				System.out.println("SAVED OK");
				
			} catch (Exception ex) {
	        	ex.printStackTrace();
	        	System.out.println("SAVED NO");
	        }
		
	}
	
	public Client getById(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM clients WHERE id=?");
				preparedStatement.setInt(1,id);
				
				ResultSet resultat=preparedStatement.executeQuery();
				
				Client u = new Client();
				while(resultat.next()) {
					u.setId(resultat.getInt( "id" ));
					u.setNom(resultat.getString( "nom" ));
					u.setPrenom(resultat.getString( "prenom" ));
					u.setAdresse(resultat.getString( "adresse" ));
					u.setEmail(resultat.getString( "email" ));
					u.setPassword(resultat.getString( "password" ));
				}
				return u;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	
	public Client connexion(String email,String password) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
						prepareStatement("SELECT * FROM clients WHERE email=? AND password=?");
				preparedStatement.setString(1,email);
				preparedStatement.setString(2,password);
				ResultSet resultat=preparedStatement.executeQuery();
				Client u = new Client();
				if(resultat.next()) {
					u.setId(resultat.getInt( "id" ));
					u.setNom(resultat.getString( "nom" ));
					u.setPrenom(resultat.getString( "prenom" ));
					u.setAdresse(resultat.getString( "adresse" ));
					u.setEmail(resultat.getString( "email" ));
					u.setPassword(resultat.getString( "password" ));
					return u;
				}else {
					return null;
				}
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	
	
	public ArrayList<Client> getAll() {
		ArrayList<Client> list = new ArrayList<Client>();
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM clients");
				
				ResultSet resultat=preparedStatement.executeQuery();

				while(resultat.next()) {
					Client u = new Client();
					u.setId(resultat.getInt( "id" ));
					u.setNom(resultat.getString( "nom" ));
					u.setPrenom(resultat.getString( "prenom" ));
					u.setAdresse(resultat.getString( "adresse" ));
					u.setEmail(resultat.getString( "email" ));
					u.setPassword(resultat.getString( "password" ));
					list.add(u);
				}
				
				
				return list;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	public int getCountClient(int id) {
		try {
		
				PreparedStatement preparedStatement  = Database.connexion.
		prepareStatement("SELECT COUNT(*) as nbr FROM clients");
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
	
	public void deleteById(int id) {
		try {
			
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM clients WHERE id=?");
				preparedStatement.setInt(1,id);
				
				preparedStatement.executeUpdate();
				
				System.out.println("DELETED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("DELETED NO");
        }
	}
}

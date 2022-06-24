package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProduitDAO {
	public void save(Produit obj) {
		
		try {
			
			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("UPDATE produits set nom=?,image=?,prix=?,quantite=?,id_Categorie=? WHERE id=?");
				preparedStatement.setString(1,obj.getNom());
				preparedStatement.setString(2,obj.getImage());
				preparedStatement.setDouble(3,obj.getPrix());
				preparedStatement.setInt(4,obj.getQuantite());
				preparedStatement.setInt(5,obj.getId_Categorie());
				preparedStatement.setInt(6,obj.getId());
	            preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Database.connexion.prepareStatement("INSERT INTO produits (nom,image,prix,quantite,id_Categorie) VALUES(?,?,?,?,?)");
				preparedStatement.setString(1,obj.getNom());
				preparedStatement.setString(2,obj.getImage());
				preparedStatement.setDouble(3,obj.getPrix());
				preparedStatement.setInt(4,obj.getQuantite());
				preparedStatement.setInt(5,obj.getId_Categorie());
				
	            preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("SAVED NO");
        }
	
}

public Produit getById(int id) {
	try {
	
			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produits WHERE id=?");
			preparedStatement.setInt(1,id);
			
			ResultSet resultat=preparedStatement.executeQuery();
			
			Produit u = new Produit();
			while(resultat.next()) {
				u.setId(resultat.getInt( "id" ));
				u.setNom(resultat.getString( "nom" ));
				u.setImage(resultat.getString( "image" ));
				u.setPrix(resultat.getDouble( "prix" ));
				u.setQuantite(resultat.getInt( "quantite" ));
				u.setId_Categorie(resultat.getInt( "id_Categorie" ));
				
			}
			return u;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}


public ArrayList<Produit> getAll() {
	ArrayList<Produit> list = new ArrayList<Produit>();
	try {
		
			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produits");
			
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit u = new Produit();
				u.setId(resultat.getInt( "id" ));
				u.setNom(resultat.getString( "nom" ));
				u.setImage(resultat.getString( "image" ));
				u.setPrix(resultat.getDouble( "prix" ));
				u.setQuantite(resultat.getInt( "quantite" ));
				u.setId_Categorie(resultat.getInt( "id_Categorie" ));
				
				list.add(u);
			}
			
			
			return list;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}


public ArrayList<Produit> getAllByCat(int catid) {
	ArrayList<Produit> list = new ArrayList<Produit>();
	try {
		
			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("SELECT * FROM produits WHERE id_Categorie=?");
			preparedStatement.setInt(1,catid);
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit u = new Produit();
				u.setId(resultat.getInt( "id" ));
				u.setNom(resultat.getString( "nom" ));
				u.setImage(resultat.getString( "image" ));
				u.setPrix(resultat.getDouble( "prix" ));
				u.setQuantite(resultat.getInt( "quantite" ));
				u.setId_Categorie(resultat.getInt( "id_Categorie" ));
				
				list.add(u);
			}
			
			
			return list;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}

public ArrayList<Produit> Rechercher(String mot) {
	ArrayList<Produit> list = new ArrayList<Produit>();
	try {
		
			PreparedStatement preparedStatement  = Database.connexion
					.prepareStatement("SELECT * FROM produits WHERE nom like ?");
			preparedStatement.setString(1,"%"+mot+"%");
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit u = new Produit();
				u.setId(resultat.getInt( "id" ));
				u.setNom(resultat.getString( "nom" ));
				u.setImage(resultat.getString( "image" ));
				u.setPrix(resultat.getDouble( "prix" ));
				u.setQuantite(resultat.getInt( "quantite" ));
				u.setId_Categorie(resultat.getInt( "id_Categorie" ));
				
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
		
			PreparedStatement preparedStatement  = Database.connexion.prepareStatement("DELETE FROM produits WHERE id=?");
			preparedStatement.setInt(1,id);
			
			preparedStatement.executeUpdate();
			
			System.out.println("DELETED OK");
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	System.out.println("DELETED NO");
    }
}
}

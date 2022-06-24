package model;

public class Produit {
	private int id;
	private String nom;
	private String image;
	private double prix;
	private int quantite;
	private int id_Categorie;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}

	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public int getId_Categorie() {
		return id_Categorie;
	}
	public void setId_Categorie(int id_Categorie) {
		this.id_Categorie = id_Categorie;
	}
	
	public Produit() {
	}
	public Produit(int id, String nom ,String image, double prix,int quantite,int id_Categorie) {
		this.id = id;
		this.nom = nom;
		this.image=image;
		this.prix = prix;
		this.quantite = quantite;
		this.id_Categorie = id_Categorie;
	}
	public Produit(String nom ,String image, double prix,int quantite,int id_Categorie) {
		this.nom = nom;
		this.image=image;
		this.prix = prix;
		this.quantite = quantite;
		this.id_Categorie = id_Categorie;
		
	}
	@Override
	public String toString() {
		return "Produit [id=" + id + ", nom=" + nom + ", prix=" + prix + ", quantite=" + quantite + ", id_Categorie="
				+ id_Categorie + ", image=" + image + "]";
	}
	
	
	
}

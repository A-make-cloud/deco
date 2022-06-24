package model;

public class Detail {
	private int id;
	
	private int quantite;
	private double prix;
	private int id_Commande;
	private int id_Produit;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_Commande() {
		return id_Commande;
	}
	public void setId_Commande(int id_Commande) {
		this.id_Commande = id_Commande;
	}
	public int getId_Produit() {
		return id_Produit;
	}
	public void setId_Produit(int id_Produit) {
		this.id_Produit = id_Produit;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	
	public Detail(int id,int quantite, double prix, int id_Commande, int id_Produit) {
		this.id = id;
		this.quantite = quantite;
		this.prix = prix;
		this.id_Commande = id_Commande;
		this.id_Produit = id_Produit;
	}
	public Detail(int quantite, double prix, int id_Commande, int id_Produit) {
		this.quantite = quantite;
		this.prix = prix;
		this.id_Commande = id_Commande;
		this.id_Produit = id_Produit;
	}
	public Detail() {

	}
	
	public String toString() {
		return "Detail [id=" + id + ", quantite=" + quantite + ", prix=" + prix +  ", id_Commande="
						+ id_Commande + ", id_Produit="
								+ id_Produit  + "]";
	}
	
	
}

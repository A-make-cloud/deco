package model;

public class Categorie {
	private int id;
	private String titre;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public Categorie(int id, String titre) {
		this.id = id;
		this.titre = titre;
	}
	public Categorie(String titre) {
		this.titre = titre;
	}
	public Categorie() {
	}
	
	public String toString() {
		return "Catégorie [id=" + id + ", titre=" + titre + "]";
	}
	
	
}

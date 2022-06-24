
package model;

public class Client {
	private int id;
	private String nom;
	private String prenom;
	private String adresse;
	private String email;
	private String password;
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
	
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Client() {
	}
	public Client(int id, String nom,String prenom,String adresse, String email, String password) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.email = email;
		this.password = password;
	}
	public Client( String nom,String prenom,String adresse, String email, String password) {
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.email = email;
		this.password = password;
	}
	
	
	public String toString() {
		return "Client [id=" + id + ", nom=" + nom + ", prenom=" + prenom +  ", adresse="
						+ adresse + ", email="
								+ email+ ", password="
										+ password   + "]";
	}
	
	
}

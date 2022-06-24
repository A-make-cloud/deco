
package model;

import java.sql.Date;

public class Commentaire {
	private int id;
	private String contenu;
	private Date date;
	private int id_Client;
	private int id_Avis;
	private String avis;
	private String client;

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}


	public int getId_Client() {
		return id_Client;
	}
	public void setId_Client(int id_Client) {
		this.id_Client = id_Client;
	}
	
	public int getId_Avis() {
		return id_Avis;
	}
	public void setId_Avis(int id_Avis) {
		this.id_Avis = id_Avis;
	}
	public Commentaire(int id, String contenu, Date date, int id_Client,int id_Avis) {
		this.id = id;
		this.contenu = contenu;
		this.date = date;
				this.id_Client= id_Client;
		this.id_Avis= id_Avis;
	} 
	
	public Commentaire( String contenu, Date date,  int id_Client, int id_Avis) {
		this.contenu = contenu;
		this.date = date;
		this.id_Client= id_Client;
		this.id_Avis= id_Avis;
	} 
	
	public Commentaire( String contenu, int id_Avis) {
		this.contenu = contenu;
	
		this.id_Avis= id_Avis;
	} 
	public Commentaire(String client, String contenu, int id_Avis) {
		this.client= client;
		this.contenu = contenu;
	
		this.id_Avis= id_Avis;
	}
	
	public Commentaire() {
	} 
	
	public String toString() {
		return "Commentaire [id=" + id + ", contenu=" + contenu + ", date=" + date +  ", id_Client="
						+ id_Client + ", id_Avis="
								+ id_Avis  + "]";
	}
	//AJOUT DE COMMENTS SUR LE SITE/////////////////////////////////////////////////////////////////////
	public Commentaire( String client,String contenu, String avis) {
		this.client= client;

		this.contenu = contenu;
		this.avis= avis;
	}
	


	public Commentaire(String contenu, String id_Avis) {
		this.contenu = contenu;
		this.avis= avis;
		}
	
	public Commentaire(int id_Client, String contenu, int id_Avis) {
		this.id_Client= id_Client;
		this.contenu = contenu;
		this.id_Avis= id_Avis;
		
	}
	public String getAvis() {
		
		return avis;
	}
	
public void setAvis( String avis) {
		
		this.avis=avis;
	}
public String getClient() {
	
	return client;
}
public void setClient( String client) {
	
	this.client=client;
}
	
}

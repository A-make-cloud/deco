package model;

import java.sql.Date;

public class Commande {
	private int id;
	private double total;
	private Date date;
	private String etat;
	private String transactionID;
	private String trackingNbr;
	
	private int id_Client;
	private int id_ClienTest;
	private String adresse;
	private String telephone;
	private String email;
	private String mode;
	private String idtransaction;
	private String numero;
	private String mois;
	private String annee;
	private String crypto;
	private String montant;
	private String dateP;
	private int id_Facture;
	private int id_Commande;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	
	public String getTransactionID() {
		return transactionID;
	}
	public void setTransactionID(String transactionID) {
		this.transactionID = transactionID;
	}
	
	public String getTrackingNbr() {
		return trackingNbr;
	}
	public void setTrackingNbr(String trackingNbr) {
		this.trackingNbr = trackingNbr;
	}

	public int getId_Client() {
		return id_Client;
	}
	public void setId_Client(int id_Client) {
		this.id_Client = id_Client;
	}
	

	public Commande(int id,double total, Date date,String etat,String transactionID,String trackingNbr,int id_Client) {
		this.id = id;
		this.total = total;
		this.date = date;
		this.etat = etat;
		this.transactionID=transactionID;
		this.trackingNbr=trackingNbr;
		this.id_Client= id_Client;

	} 
	public Commande(double total, Date date,String etat,String transactionID,String trackingNbr,int id_Client) {
		this.total = total;
		this.date = date;
		this.etat = etat;
		this.transactionID=transactionID;
		this.trackingNbr=trackingNbr;
		this.id_Client= id_Client;
	} 

	
	public Commande() {
	} 
	
//VALIDATION PANIER AVANT LIVRAISON sans Etat
	public Commande(double total, Date date, int idclient) {
		this.total = total;
		this.date = date;
		this.id_Client= id_Client;
	}
//PAIEMENT DE LA FACTURE
	public Commande(String adresse, String telephone, String email, String mode, String idtransaction, String numero,
			String mois, String annee, String crypto, String montant, String dateP, int id_Client, int id_Commande) {
		this.adresse = adresse;
		this.telephone = telephone;
		this.email = email;
		this.mode=mode;
		this.idtransaction=idtransaction;
		this.numero= numero;
		this.mois = mois;
		this.annee = annee;
		this.crypto = crypto;
		this.montant=montant;
		this.dateP=dateP;
		this.id_Client= id_Client;
		this.id_Commande= id_Commande;
	}



	public String toString() {
		return "Commande [id=" + id + ", total=" + total + ", date=" + date + ", etat=" + etat + ", transactionID=" + transactionID + ", trackingNbr=" + trackingNbr  + ", id_Client="
						+ id_Client+ ", id_Commande="+id_Commande + "]";
	}
	public String getAdresse() {
		// TODO Auto-generated method stub
		return adresse;
	}
	public String getTelephone() {
		// TODO Auto-generated method stub
		return telephone;
	}
	public String getEmail() {
		// TODO Auto-generated method stub
		return email;
	}
	public String getMode() {
		// TODO Auto-generated method stub
		return mode;
	}
	public String getIdtransaction() {
		// TODO Auto-generated method stub
		return idtransaction;
	}
	public String getNumero() {
		// TODO Auto-generated method stub
		return numero;
	}
	public String getMois() {
		// TODO Auto-generated method stub
		return mois;
	}
	public String getAnnee() {
		// TODO Auto-generated method stub
		return annee;
	}
	public String getCrypto() {
		// TODO Auto-generated method stub
		return crypto;
	}
	public String getDateP() {
		// TODO Auto-generated method stub
		return dateP;
	}
	

	public String getMontant() {
		// TODO Auto-generated method stub
		return montant;
	}
	public int getId_Facture() {
		// TODO Auto-generated method stub
		return id_Facture;
	}
	public int getId_Commande() {
		
		return id_Commande;
	}
	
	
}

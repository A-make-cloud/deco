package model;

import java.util.ArrayList;

public class Panier {
	
	private double total;
	
	public ArrayList<PanierDetails> articles = new ArrayList<PanierDetails>();

	public Panier(ArrayList<PanierDetails> articles) {
		this.articles = articles;
	}

	public Panier() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Panier [articles=" + articles + "]";
	}
	
	public int count() {
		return this.articles.size();
	}
	
	public void ajouter(PanierDetails p) {
		boolean exist=false;
		for(PanierDetails dp:articles) {
			if(dp.getProduit().getId()==p.getProduit().getId()) {
				exist=true;
			dp.setQte(dp.getQte()+p.getQte());
			
			}
		}
		if(!exist) {
			articles.add(p);
		}
	}
	
	public double total() {
		 total=0;
		for(PanierDetails pp:articles) {
			total+=pp.getProduit().getPrix()*pp.getQte();
		}
		return total;
	}
	

	public void delete(int idproduit) {
		PanierDetails detail= new PanierDetails();
		for(PanierDetails pp:articles) {
			if(pp.getProduit().getId()==idproduit) {
				detail=pp;
			}
		}
		articles.remove(detail);
	}
	
	public void vider() {
		articles= new ArrayList<PanierDetails>();
	}	
	
	
}

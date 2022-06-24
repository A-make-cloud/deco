package model;

public class Avis {

	private int id;
	private String satisfaction;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSatisfaction() {
		return satisfaction;
	}
	public void setSatisfaction(String satisfaction) {
		this.satisfaction = satisfaction;
	}
	public Avis(int id, String satisfaction) {
		this.id = id;
		this.satisfaction = satisfaction;
	}
	public Avis(String satisfaction) {
		this.satisfaction = satisfaction;
	}
	public Avis() {
	}
	
	public String toString() {
		return "Avis [id=" + id + ", satisfaction=" + satisfaction + "]";
	}
	
	
}
package model;

public class Cart {
	
	private int id;
	    private String address;
	    private String city;
	    private String state;
	    private String country;
	    private String mobileNumber;
	    private String email;
	    private String paymentMethod;
		private String transactionId;
		private String status;
	    
	    public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public String getcountry() {
			return country;
		}
		public void setcountry(String country) {
			this.country = country;
		}
	
		public String getMobileNumber() {
			return mobileNumber;
		}
		public void setMobileNumber(String mobileNumber) {
			this.mobileNumber = mobileNumber;
		}
		
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPaymentMethod() {
			return paymentMethod;
		}
		public void setPaymentMethod(String paymentMethod) {
			this.paymentMethod = paymentMethod;
		}
		public String getTransactionId() {
			return transactionId;
		}
		public void setTransactionId(String transactionId) {
			this.transactionId = transactionId;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public Cart(int id,String address,String city,String state,String country ,String email,  String mobileNumber, String paymentMethod, String transactionId,String status) {
			super();
			this.address = address;
			this.city = city;
			this.state = state;
			this.country = country;
			this.email = email;
			this.mobileNumber = mobileNumber;
			this.paymentMethod = paymentMethod;
			this.transactionId = transactionId;
			this.status = status;
		}
		public Cart( String address,String city,String state,String country ,String email,  String mobileNumber, String paymentMethod, String transactionId,String status) {
			this.address = address;
			this.city = city;
			this.state = state;
			this.country = country;
			this.email = email;
			this.mobileNumber = mobileNumber;
			this.paymentMethod = paymentMethod;
			this.transactionId = transactionId;
			this.status = status;
	
		}
		
		public String toString() {
			return "Cart [id=" + id + ", address=" + address + ", city=" + city +  ", state=" + state +"country="+country+ ", email="
									+ email+ ", mobileNumber="+ mobileNumber + ", paymentMethod="+ paymentMethod+ ", transactionId="+ transactionId+ ", status="+ status  + "]";
		}
		

}

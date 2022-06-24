<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="model.Commande" %>
    <%@page import="model.CommandeDAO" %>
    <%@page import="model.Categorie" %>
    <%@page import="model.Produit" %>
    <%@page import="model.Panier" %>
    <%@page import="model.PanierDetails" %>
    <%@page import="java.util.ArrayList" %>

        <% Produit p=(Produit) request.getAttribute("cprod"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/stylep.css">
    <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>facture</title>

</head>
<body>
  <jsp:include page="Header" />   


    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-left">
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">Reglement</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="Index">Accueil</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-outline-primary disabled" href="Connexion">Connexion / Inscription</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<br>

  <div class="">    
  <% if((boolean)request.getAttribute("paiementCBok")==true){ %>
                                    <div class="alert alert-success" role="alert">				  
										Votre paiement a bien &eacute;t&eacute;  prise en compte, veuillez-vous connecter
									</div>
									<% } %>
									
     <form class="form-login" action="Paiementok" method="POST"> 
    <div style="display:flex;">
                    <div class="col-lg-2">
                    <div class="d-flex flex-column justify-content-center bg-primary h-100 p-5">
                        <div class="d-inline-flex border border-secondary p-4 mb-4">
                            <h1 class="flaticon-office font-weight-normal text-secondary m-0 mr-3"></h1>
                            <div class="d-flex flex-column">
                                <h4>Our Office</h4>
                                <p class="m-0 text-white" style="width:70px;">123 Street, New York, USA</p>
                            </div>
                        </div>
                        <div class="d-inline-flex border border-secondary p-4 mb-4">
                            <h1 class="flaticon-email font-weight-normal text-secondary m-0 mr-3"></h1>
                            <div class="d-flex flex-column">
                                <h4>Email Us</h4>
                                <p class="m-0 text-white" style="width:70px;">in@ex.com</p>
                            </div>
                        </div>
                        <div class="d-inline-flex border border-secondary p-4">
                            <h1 class="flaticon-telephone font-weight-normal text-secondary m-0 mr-3"></h1>
                            <div class="d-flex flex-column">
                                <h4>Call Us</h4>
                                <p class="m-0 text-white" style="width:70px;">+012 345 6789</p>
                            </div>
                        </div>
                    </div>
                </div>
		 <div class="col-md-4 col-sm-4 account-form">
		 <h5>Adresse de livraison</h5><br>
				  <div>
				 <h6>Adresse *</h6>
				<input class="input-style col-md-6 col-sm-6" type="text" name="adresse" value="${useradresse }" placeholder="Adresse de livraison" required>
				
				 </div>
				
				<div class="right-div">
				<h6>Telephone *</h6>
				<input class="input-style" type="text" name="telephone" value="" placeholder="Numero de telephone"  required>
				
				</div> 
				
				<div class="left-div">
				<h6>Email *</h6>
				<input class="input-style" type="email" name="email" value="${useremail }" placeholder="Adresse email" required>
				
				</div>

		</div>

<hr style="width: 100%">
<div class="col-md-4 col-sm-4 account-form">
		<div>
		<h5>Indiquez votre mode de paiement</h5><br>
								 <select class="input-style" name="mode">
								 	<option >Mode de paiement</option>
									<option value="CB")">Carte bancaire</option>
									<option value="En ligne">Paiement par virement</option>
								</select><br>
		</div>
		<div class="">
		<h6>Paiement en ligne a cette adresse: agnes@pay.com</h6>
		<input class="input-style" type="text" name="idtransaction"  value="${com.transactionID() }" placeholder="Numero de Transaction">
		
		<p style="color: red;font-size:0.8em;">*Pour les paiements en ligne indiquer votre n° de transaction</p>
		</div>
		<div class="">
		<h6>Numero *</h6>
		<input class="input-style col-md-6 col-sm-6" type="numero" name="numero" value="" placeholder="Saisir le numero" required>
			<h6><b>Date d'expiration *</b></h6>
								<div class="row" style="padding-left:15px;">
								<h6>Mois </h6>
								<select name="mois" style="margin-right:15px;">
								<option type="number">01</option>
								<option type="number">02</option>
								<option type="number">03</option>
								<option type="number">04</option>
								<option type="number">05</option>
								<option type="number">06</option>
								<option type="number">07</option>
								<option type="number">08</option>
								<option type="number">09</option>
								<option type="number">10</option>
								<option type="number">11</option>
								<option type="number">12</option>
								</select>
								
								<h6>Annee </h6>
								<select name="annee">
								<option type="number">2022</option>
								<option type="number">2023</option>
								<option type="number">2024</option>
								<option type="number">2025</option>
								</select>
								</div><br>
								<h6><b>Cryptogramme :</b></h6>
								<input  style="width:50px;" max="999" type="number"  name="crypto">
		</div>
		<div class="right-div">
		<h6>Montant *</h6>
		<input class="input-style" type="text" name="montant" value="${panier.total() }" placeholder="Saisir le  montant" required>
		
		</div>
		<div class="right-div">
		<h6>Date *</h6>
		<input class="input-style" type="date" name="dateP" value="" placeholder="Saisir la date" required>
		
		</div>
		<!-- <div class="right-div">
		<h6>Enter client </h6>
		<input class="input-style" type="text" name="client " value="" placeholder="Enter client " required>
		
		</div>
		<div class="right-div">
		<h6>Enter facture </h6>
		<input class="input-style" type="text" name="facture " value="" placeholder="Enter facture " required>
		
		</div> -->
		
		<br>
		
		
		<div>
		
		 <button class="btn-color btn btn-primary py-3 px-5" type="submit" name="bcart">Valider votre paiement <i class='far fa-arrow-alt-circle-right'></i></button>
		
		
		</div>
	</div>

</form>
         <div class="col-sm-2 col-md-2">
				                          <h5>Cartes utilisees</h5>
				                            <img class="w-100" src="img/cb.png"><br>
				                                                   
                            </div>
   </div>
   </div>
  <jsp:include page="Footer" /> 
</body>
</html>
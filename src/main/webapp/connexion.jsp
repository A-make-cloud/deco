<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.Categorie"%> 
<%@page import="java.util.ArrayList"%> 
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
    <head>

        <!-- Meta -->
        <meta charset="utf-8">
    <title>iDESIGN - connexion</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Oswald:wght@400;500;600&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Flaticon Font -->
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
    
    
    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
     <link href="css/stylep.css" rel="stylesheet">
</head>

<body>

<jsp:include page="Header" /> 


    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-left">
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">Connexion</h1>
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
    

    <!-- Page Header Start -->


    <!-- Contact Start -->
    <div class="container-fluid bg-white">
        <div class="">
          
            <div class="row">
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
                                  <div class="col-sm-4 col-md-4">
                            <!-- HTML -->
                            <div id="account-id">
                                <h2 class="mb-4 mb-md-0 text-primary text-uppercase mt-3"></span>Connexion</h2>                                                                  
                                <div class="account-form">
                                <% if((boolean)request.getAttribute("messageconnexionno")==true){ %>
                                <div class="alert alert-danger" role="alert">
								  Adresse e-mail ou mot de passe invalide
								</div>
								<% } %>
                                    <form class="form-login" method="POST">                                        
                                        <ul class="form-list row">
                                           
                                            <li class="col-md-12 col-sm-12">
                                                <label>Email <em>*</em></label>
                                                <input required="" name="cemail" type="email" class="input-text">
                                            </li>
                                            <li class="col-md-12 col-sm-12">
                                                <label>Mot de passe <em>*</em></label>
                                                <input required="" name="cpassword" type="password" class="input-text">
                                            </li> 
                                        </ul>
                                        <div class="buttons-set">
                             <button class="btn-color btn btn-primary py-3 px-5" type="submit" name="bconnexion"><span>Connexion</span></button>
                                        </div>
                                    </form>
                                </div>                                    
                            </div>
                        </div>
                            <div class="col-sm-4 col-md-4">
                            <!-- HTML -->
                            <div id="account-id">
                                <h2 class="mb-4 mb-md-0 text-primary text-uppercase mt-3"></span>Inscription</h2>                                                                  
                                <div class="account-form">
                                    <% if((boolean)request.getAttribute("messageinscriptionok")==true){ %>
                                    <div class="alert alert-success" role="alert">				  
										Votre inscription a bien été prise en compte, veuillez-vous connecter
									</div>
									<% } %>
                                    <form class="form-login" method="POST" >                                        
                                        <ul class="form-list row">
                                           <li class="col-md-12 col-sm-12">
                                                <label>Nom <em>*</em></label>
                                                <input required name="inom" type="text" class="input-text">
                                            </li>
                                               <li class="col-md-12 col-sm-12">
                                                <label>Prénom <em>*</em></label>
                                                <input required name="iprenom" type="text" class="input-text">
                                            </li>
                                               <li class="col-md-12 col-sm-12">
                                                <label>Adresse <em>*</em></label>
                                                <input required name="iadresse" type="text" class="input-text">
                                            </li>
                                            <li class="col-md-12 col-sm-12">
                                                <label>Email <em>*</em></label>
                                                <input required name="iemail" type="email" class="input-text">
                                            </li>
                                            <li class="col-md-12 col-sm-12">
                                                <label>Mot de passe <em>*</em></label>
                                                <input required name="ipassword" type="password" class="input-text">
                                            </li> 
                                        </ul>
                                        <div class="buttons-set">
                                            <button class="btn-color btn btn-primary py-3 px-5" type="submit" name="binscription"><span>Inscription</span></button>
                                        </div>
                                    </form>
                                </div>                                    
                            </div>
                        </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


  <jsp:include page="Footer" /> 


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="model.Client" %>
    <%@page import="model.ClientDAO" %>
    <%@page import="model.Commentaire" %>
    <%@page import="model.Avis" %>
        <%@page import="model.AvisDAO" %>
    <%@page import="model.Produit" %>
    <%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Commentaire client</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Oswald:wght@400;500;600&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">


     <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Flaticon Font -->
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
   
<%--  <jsp:include page="Header" />   --%>


    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary py-5">
        <div class="container py-5">
            <div class="row align-items-center py-4">
                <div class="col-md-6 text-center text-md-left">
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">Commentaires</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="Index">Accueil</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-outline-primary disabled" href="">Blog Client</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Start -->


    <!-- Detail Start -->
    <div class="container py-5">
        <div class="row pt-5">
            <div class="col-lg-8">
                <div class="d-flex flex-column text-left mb-4">
                    <h6 class="text-primary font-weight-normal text-uppercase mb-3">Blog Avis Client</h6>
                    <h1 class="mb-4 section-title">Postez vos commentaires sur notre site</h1>
                    <div class="d-index-flex mb-2">
                        <span class="mr-3"><i class="fa fa-user text-primary"></i> Admin</span>
                        <span class="mr-3"><i class="fa fa-folder text-primary"></i> Web Design</span>
                        <span class="mr-3"><i class="fa fa-comments text-primary"></i> 15</span>
                    </div>
                </div>

    
             <div class="mb-5 mx-n3">
                    <h3 class="mb-4 ml-3 section-title">Commentaires clients</h3>
                    <div class="owl-carousel service-carousel position-relative">
                    <%-- <% ArrayList<Commentaire> comAll=new ArrayList<Commentaire>();
                    comAll=(ArrayList)request.getAttribute("com");
                    for(Commentaire co:comAll){
                    	
                    	ClientDAO clientdao= new ClientDAO();
                    	Client clie=clientdao.getById(co.getId_Client());
                    	AvisDAO avisdao=new AvisDAO();
                    	Avis av=avisdao.getById(co.getId_Avis());
                    	
                    	%> --%>
                    
                        <div class="card border-0 mx-3">
                          <!--   <img class="card-img-top" src="img/blog-1.jpg" alt=""> -->
                          
                            <div class="card-body bg-light p-4">
                                <div class="d-flex align-items-center mb-3">
                                
                                
                          <%--           <a class="btn btn-primary" href=""><i class="fa fa-link"></i></a>
                                    <h5 class="m-0 ml-3 text-truncate"><%=clie.getPrenom() %> <%=clie.getNom()%><small><i> <%=co.getDate() %></i></small></h5>
                                </div>
                                 <p><%=co.getContenu()%></p> 
                                <div class="d-flex">
                                    <small class="mr-3"><i class="fa fa-user text-primary"></i> <%=av.getSatisfaction() %></small>
                               
                                                                      <small class="mr-3" id="opinion"><i class="fa fa-folder text-primary"></i>
    
                    --%>
                                   
                                     Web Design</small>
                        <%--             <small class="mr-3"><i class="fa fa-comments text-primary"></i> ${opi_nbr}</small>
                                          <% for(int i=1;i<=av.getId();i++){ %>
                            <i class="fa fa-star text-primary"></i>
                          
                            <% } %>
                            
                             <% for(int i=4;i>=av.getId();i--){ %>
                           <i class='fa fa-regular fa-star text-warning'></i>
                          
                            <% } %> --%>
                                </div>
                            </div>
                        </div>
                        
                     <%--      <%} %> --%>

                    </div>
                </div> 

                <div class="mb-5">
                    <h3 class="mb-4 section-title">Poster un commentaire</h3>
               <%--           <% if((boolean)request.getAttribute("commentaireok")==true){ %>
                                    <div class="alert alert-success" role="alert">				  
										Votre commentaire a bien été prise en compte, 
									</div>
									<% } %> --%>
                          <form method="POST">
                         <!--  enctype="multipart/form-data"> -->
       <div class="form-group">
                            <label for="name">Votre nom et prenom *</label>
                            <input type="text" name="client" class="form-control" id="name">
                        </div> 
              
                   <!--      <div class="form-group">
                            <label for="website">Ajouter votre photo *</label>
                           
					  <input type="file" id="myFile" class="form-control" name="filename">
					  <input type="submit">
                        </div> -->

                        <div class="form-group">
                            <label for="message">Votre message *</label>
                            <textarea id="message" name="contenu" cols="30" rows="5" class="form-control"></textarea>
                        </div>
                     
  							 <select class="star-rating form-group">
							    <option value="" name="avis" >Votre avis *</option>
							    <option value="5">Excellent</option>
							    <option value="4">Satisfaisant</option>
							    <option value="3">Moyen</option>
							    <option value="2">Bas</option>
							    <option value="1">Mauvais</option>
							</select>
						<!--    <div class="form-group mb-0">
                            <input type="submit" name="bcomment" value="Leave Comment" class="btn btn-primary px-3">
                        </div>
                         -->
                             <div class="row shipping-info-wrap table-btn border-0" style="text-align:right;">
                           <h4>Total : ${panier.total() } €</h4>
                             <div class="clearfix space40"></div>
                           <ul class="list-unstyled">
                           		<li>
                         
                           	
                           	       <% if((boolean)session.getAttribute("isConnected")==true){ %>
                                       <a href="Paniers?valider=ok" class="btn-color btn btn-primary py-3 px-5"  style="color:white;">Valider votre commande</a></li>
                                            <% }else{ %>
                                            <a href="Connexion" class="btn-color btn btn-primary py-3 px-5" ;">Connexion / Inscription</a></li>
                                            <% } %>
                           </ul>
                          </div>
                    </form>
              
                </div>


            </div>
            
    

            <div class="col-lg-4 mt-5 mt-lg-0">
                <div class="d-flex flex-column text-center bg-secondary mb-5 py-5 px-4">
                    <img src="img/user.jpg" class="img-fluid mx-auto mb-3" style="width: 100px;">
                    <h3 class="text-primary mb-3">John Doe</h3>
                    <p class="text-white m-0">Conset elitr erat vero dolor ipsum et diam, eos dolor lorem ipsum, ipsum ipsum sit no ut est. Guber ea ipsum erat kasd amet est elitr ea sit.</p>
                </div>
                <div class="mb-5">
                    <form action="">
                        <div class="input-group">
                            <input type="text" class="form-control form-control-lg" placeholder="Keyword">
                            <div class="input-group-append">
                                <span class="input-group-text bg-transparent text-primary"><i
                                        class="fa fa-search"></i></span>
                            </div>
                        </div>
                    </form>
                </div>
 
                <div class="mb-5">
                    <img src="img/blog-1.jpg" alt="" class="img-fluid">
                </div>


            </div>
        </div>
    </div>
    <!-- Detail End -->


    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-white mt-5 py-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-primary mb-4">Get In Touch</h4>
                <p><i class="fa fa-map-marker-alt mr-2"></i>123 Street, New York, USA</p>
                <p><i class="fa fa-phone-alt mr-2"></i>+012 345 67890</p>
                <p><i class="fa fa-envelope mr-2"></i>info@example.com</p>
                <div class="d-flex justify-content-start mt-4">
                    <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-primary mb-4">Quick Links</h4>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>About Us</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Services</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Projects</a>
                    <a class="text-white" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-primary mb-4">Popular Links</h4>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>About Us</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Services</a>
                    <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Projects</a>
                    <a class="text-white" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-primary mb-4">Newsletter</h4>
                <form action="">
                    <div class="form-group">
                        <input type="text" class="form-control border-0" placeholder="Your Name" required="required" />
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control border-0" placeholder="Your Email" required="required" />
                    </div>
                    <div>
                        <button class="btn btn-lg btn-primary btn-block border-0" type="submit">Submit Now</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="container border-top border-secondary pt-5">
            <p class="m-0 text-center text-white">
                &copy; <a class="text-white font-weight-bold" href="#">Your Site Name</a>. All Rights Reserved. Designed by
                <a class="text-white font-weight-bold" href="https://htmlcodex.com">HTML Codex</a>
            </p>
        </div>
    </div>
    <!-- Footer End -->


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
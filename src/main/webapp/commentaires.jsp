<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.CommentaireDAO" %>
<%@page import="model.Commentaire"%> 
<%@page import="model.Client" %>
<%@page import="model.ClientDAO" %>
<%@page import="model.AvisDAO" %>
<%@page import="model.Avis"%> 
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
     <link href="css/stylep.css" rel="stylesheet">
</head>

<body>

  <jsp:include page="Header" />   


    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-left">
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">Commentaire</h1>
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
                                 <div class="col-sm-9 col-md-9">
                                     <!-- Testimonial Start -->
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-6 py-5 pr-md-5">
                    <h3 class="text-primary font-weight-normal text-uppercase mb-3">Temoignage</h3>
                    <h1 class="mb-4 section-title">Avis clients</h1>
                    <div class="owl-carousel testimonial-carousel position-relative pb-5 mb-md-5 mt-5">
            <%
             
               			 ArrayList<Commentaire> com =new ArrayList<Commentaire> ();
               			com=(ArrayList)request.getAttribute("com");
                		for(Commentaire co:com){
                    		
                    	
                    		ClientDAO clientdao= new ClientDAO();
                    		Client clie=clientdao.getById(co.getId_Client());
                    		AvisDAO avisdao = new AvisDAO();
                    		Avis av= avisdao.getById(co.getId_Avis());
                    		
                    %>
                        <div class="d-flex flex-column">
                            <div class="d-flex align-items-center mb-3">
                             <!--    <img class="img-fluid rounded-circle" src="img/testimonial-1.jpg" style="width: 60px; height: 60px;" alt=""> -->
                                <div class="ml-3">
                                <h3><%=av.getSatisfaction() %></h3>
                           <% for(int i=1;i<=av.getId();i++){ %>
                            <i class="fa fa-star text-primary"></i>
                          
                            <% } %>
                            
                             <% for(int i=4;i>=av.getId();i--){ %>
                           <i class='fa fa-regular fa-star text-warning'></i>
                          
                            <% } %>
                            
                            
                                                                <h5><%=clie.getPrenom() %> <%=clie.getNom() %> <%=co.getDate() %> </h5> 
                   <h5><%=co.getContenu() %></h5> 
              <%--      <p><%=co.getContenu().substring(0,20)  %> ...</p> --%>
                   
                                <!--     <a href="#" class="btn btn-primary mt-3 py-2 px-4 mt-4 mb-4">Suite</a>  -->  
                                </div>
                            </div>
							
							 
                        </div>
                  <% } %> 
                    

                    </div>
                </div>
                <div class="col-md-5">
                      
                            <!-- HTML -->
                            <div id="account-id">
                                <h2 class="mb-4 mb-md-0 text-primary text-uppercase mt-3"></span>Poster un commentaire</h2>                                                                  
                                <div class="account-form">
                                    <% if((boolean)request.getAttribute("commentaireok")==true){ %>
                                    <div class="alert alert-success" role="alert">				  
										Votre commentaire a bien &eacute;t&eacute; prise en compte, veuillez-vous connecter
									</div>
									<% } %>
                                    <form class="form-login" method="POST" >                                        
                                        <ul class="form-list row">
                                         <!--   <li class="col-md-12 col-sm-12">
                                                <label>Nom <em>*</em></label>
                                                <input required name="client" type="text" class="input-text">
                                            </li> -->
                           
                                               <li class="col-md-12 col-sm-12">
                                                <label>Contenu <em>*</em></label><br>
                                                <textarea class="col-md-12 col-sm-12" required name="contenu" type="text" class="input-text"></textarea>
                                            </li>
                                   <!--            <li class="col-md-12 col-sm-12">
                                                <label>Date <em>*</em></label>
                                                <input required name="date" type="date" class="input-text">
                                            </li> -->
                           		                  <div class="field item form-group">
                                            <label class="col-form-label col-md-12 col-sm-12  label-align">Avis <span class="required">*</span></label>
                                            <div class="col-md-12 col-sm-12">
                                                            <select  name="id_Avis" parsley-trigger="change" required class="form-control">
                                            	<% 
												ArrayList<Avis> aviList = new ArrayList<Avis>();
                                            	aviList=(ArrayList)request.getAttribute("avi");
												for(Avis avil:aviList){ 
												%>
												<option value="<%=avil.getId() %>"><%=avil.getSatisfaction() %></option>
												<%}%>
                                            </select>
                                                </div>
                                        </div>
                                        </ul>
                                        <div class="buttons-set">
<!--                                             <button class="btn-color btn btn-primary py-3 px-5" type="submit" name="bcomment"><span>Valider</span></button>
 -->                      <ul class="list-unstyled">
                           		<li>
                         
                           	
                           	       <% if((boolean)session.getAttribute("isConnected")==true){ %>
                                       <button href="Ajout_comments" name="bcomment" type="submit" class="btn-color btn btn-primary py-3 px-5"  style="color:white;">Poster</button></li>
                                            <% }else{ %>
                                            <a href="Connexion" class="btn-color btn btn-primary py-3 px-5" ;">Connexion / Inscription</a></li>
                                            <% } %>
                           </ul>
                                        </div>
                                    </form>
                                </div> 
                               </div>
                                
                                
                                <div class="col-md-12 col-sm-12">
                                             <h3 class="text-primary font-weight-normal text-uppercase mb-3">Temoignage</h3>
                    <h1 class="mb-4 section-title">3 Derniers Avis postés</h1>       
                                  <%
             
               			 ArrayList<Commentaire> comm =new ArrayList<Commentaire> ();
               			comm=(ArrayList)request.getAttribute("comclie");
                		for(Commentaire comC:comm){
                    		
                    	
                    		ClientDAO clientdao= new ClientDAO();
                    		Client clieC=clientdao.getById(comC.getId_Client());
                    		AvisDAO avisdao = new AvisDAO();
                    		Avis avi= avisdao.getById(comC.getId_Avis());
                    		
                    		                    %>	
                    		    <div class="account-form">
                    		    <!--    <div class="row account-form"> -->
                    		                          		                    
                    		  <h5><%=clieC.getPrenom() %> <%=clieC.getNom() %></h5> <br>
                    			 <h6><%=avi.getSatisfaction() %></h6> 
                    			 <p><%=comC.getContenu() %></p> 
                    			 
                    			</div>
                    
                           <% } %>  
                           
                             
                                </div>                                   
                            </div>
                        
                </div>
            </div>
        </div>
    </div>
                 <div class="container">
                 	<div class="row">
                 	
                 		
                 	
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
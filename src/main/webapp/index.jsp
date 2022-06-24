<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="model.Categorie" %>
    <%@page import="model.Client" %>
    <%@page import="model.ClientDAO" %>
    <%@page import="model.Commentaire" %>
      <%@page import="model.CommentaireDAO" %>
    <%@page import="model.Avis" %>
    <%@page import="model.AvisDAO" %>
    <%@page import="model.Produit" %>
    <%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
    <head>

        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Accueil</title>

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Flaticon Font -->
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
    
      <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Oswald:wght@400;500;600&display=swap" rel="stylesheet"> 

        <!-- Google Webfont -->
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,200,100,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,300,300italic,700,900' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

  <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    
     <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- CSS -->
   <!--      <link rel="stylesheet" href="css/font-awesome.css"> -->
              <!--   <link rel="stylesheet" href="css/bootstrap.min.css"> -->
        <link rel="stylesheet" href="css/isotope.css">
      <!--           <link rel="stylesheet" href="css/slick.css">
        <link rel="stylesheet" href="css/settings.css">
                <link rel="stylesheet" href="css/jquery.selectBoxIt.css">
        <link rel="stylesheet" href="css/subscribe-better.css">
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-lightness/jquery-ui.css">     
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css"> -->
    

	
	   <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
     <link href="css/stylep.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
                <![endif]-->

    </head>
    <body>

        <!-- PRELOADER -->
        <div id="loader"></div>

        <div class="body">
            <!-- TOPBAR -->
            
      <jsp:include page="Header" />  



    <!-- Carousel Start -->
    <div class="container-fluid p-0">
        <div id="header-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                 
                    <img class="w-50" style="height:554px;" src="img/carousel-1.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 800px;">
                            <h4 class="text-primary text-uppercase font-weight-normal mb-md-3">Creative Interior Design</h4>
                            <h3 class="display-3 text-white mb-md-4">Make Your Home Better</h3>
                            <a href="" class="btn btn-primary py-md-3 px-md-5 mt-2 mt-md-4">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-50" style="height:554px;"  src="img/carousel-6.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 800px;">
                            <h4 class="text-primary text-uppercase font-weight-normal mb-md-3">Creative Interior Design</h4>
                            <h3 class="display-3 text-white mb-md-4">Stay At Home In Peace</h3>
                            <a href="" class="btn btn-primary py-md-3 px-md-5 mt-2 mt-md-4">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                <div class="btn btn-primary" style="width: 45px; height: 45px;">
                    <span class="carousel-control-prev-icon mb-n2"></span>
                </div>
            </a>
            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                <div class="btn btn-primary" style="width: 45px; height: 45px;">
                    <span class="carousel-control-next-icon mb-n2"></span>
                </div>
            </a>
        </div>
    </div>
    <!-- Carousel End -->
     

            <div class="clearfix"></div>
            

    <!-- Testimonial End -->

            <!-- FEATURED PRODUCTS -->
           <!--  <div class="featured-products"> -->
                <div class="container">
                   <!--  <div class="row"> -->
                    <div class="col-md-12 py-5 pr-md-5">
                    <h3 class="text-primary font-weight-normal text-uppercase mb-3">Catalogue</h3>
                    
                    <h1 class="mb-4 section-title">Selection d articles</h1>
                   <!--      <h5 class="heading"><span>Une selection d articles</span></h5> -->
                        <ul class="filter list-unstyled" style="display:flex;"  data-option-key="filter">
                            	<li><a class="btn btn-outline-primary m-1 active selected" href="#filter" data-option-value="*">All</a></li>
                            
 									<% 
									ArrayList<Categorie> cats = new ArrayList<Categorie>();
									cats=(ArrayList)request.getAttribute("cats");
									for(Categorie cat:cats){ 
									%>
                               <li class="btn btn-outline-primary m-1 selected">
                               	<a href="#"  data-option-value=".c<%=cat.getId() %>"><%=cat.getTitre() %></a>
                               </li>
									<%}%>                            
                            
                            
                        </ul>
                    <!--     <div class="row"> -->
                        <div id="isotope" class="isotope row">
                           <%
							ArrayList<Produit> prods = new ArrayList<Produit>();
							prods=(ArrayList)request.getAttribute("prods");
							for(Produit prod:prods){ 
							%>
                            <div class="isotope-item c<%=prod.getId_Categorie()%>">
                                <div class="product-item w-75">
                                    <div class="item-thumb">
                                        <img src="<%=prod.getImage() %>" style="width:200px;height:220px;" class="img-responsive" alt=""/>
                                        <div class="overlay-rmore quickview" > <i class="fa fa-search"></i></div>
                                    </div>
                                    
                                    
                                    <div class="product-info">
                                        <h5 class="product-title" ><a href="Details?id=<%=prod.getId() %>">
                                        <%=prod.getNom() %>
                                       </a></h5> 
                                        <span class="product-price"><b><%= prod.getPrix() %>&euro;</b></span>
                                    </div>
                                </div>
                            </div>
                            <%} %>
             
                        </div>
              <!--       </div>
                </div>
            </div> -->
            

        <div id="backtotop"><i class="fa fa-chevron-up"></i></div>        
        
      </div>
      </div>
        
      
            <!-- FOOTER -->
          <jsp:include page="Footer" /> 
            

           

        </div>


  



        <!-- Javascript -->
        <script src="jss/jquery.js"></script>

       

        <script src="jss/bootstrap.min.js"></script>  
        <script src="jss/owl.carousel.min.js"></script>
                <script src="jss/bs-navbar.js"></script>
                
        <script src="jss/isotope.pkgd.js"></script>
        
        <script src="jss/slick.min.js"></script>
        
        <script src="jss/tweecool.min.js"></script>
        
        <script src="jss/jquery.themepunch.revolution.min.js"></script>
        <script src="jss/jquery.themepunch.tools.min.js"></script>
        
        <script src="jss/jquery.sticky.js"></script>
        <script src="jss/jquery.subscribe-better.js"></script>
        
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <script src="jss/jquery.selectBoxIt.min.js"></script>
        
        <script src="jss/main.js"></script>
        
        
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
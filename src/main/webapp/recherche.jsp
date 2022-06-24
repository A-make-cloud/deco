<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="model.Categorie" %>
    <%@page import="model.Produit" %>
    <%@page import="model.ProduitDAO" %>
    <%@page import="java.util.ArrayList" %>
    <% Produit p=(Produit) request.getAttribute("cprod"); %>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
<html>
<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Deco recherche</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

<!--   <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" /> -->
 
   <!-- Flaticon Font -->
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
  
   <link rel="stylesheet" href="css/font-awesome.css">
      <link rel="stylesheet" href="css/font-awesome.min.css"> 
      
    
      
          <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/stylep.css" rel="stylesheet" />
  <!-- responsive style -->

</head>

<body class="sub_page">
  <div class="hero_area">
  
  <jsp:include page="Header"/>
 
  </div>
<%-- 			<section class="about_section mt-5">
			    <div class="container">
      		      <div class="page_header" style="height: 100px;margin-bottom: 50px;">
                <div class="container" style="height: 100px;">
                    <div class="page_header_info text-center" style="width: 500px;margin: 8px;">
                        <div class="page_header_info_inner">
                        <% //String titre=(String)request.getAttribute("titre"); %>
                         <% //String nom=(String)request.getAttribute("nom"); %>
                            <h2 class="text-dark">Recherche : ${mot}</h2>
                            
                             <h3 class="text-dark">Article(s) correspondants à votre Recherche</h3>
                        </div>
                    </div>
                </div>
                </div>
            </div>
              </section> --%>
              
    <div class="container-fluid bg-secondary mb-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-left">
                  <% //String titre=(String)request.getAttribute("titre"); %>
                         <% //String nom=(String)request.getAttribute("nom"); %>
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">Recherche : ${mot}</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="Index">Accueil</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-outline-primary" href="Connexion">Connexion / Inscription</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <!-- FEATURED PRODUCTS -->
            <div class="">
                <div class="container">
                
                    <div class="row">
                      
                        <div id="isotope" class="isotope">
                           <%
							ArrayList<Produit> prods = new ArrayList<Produit>();
                           prods=(ArrayList)request.getAttribute("prods");
							for(Produit pd:prods){ 
							%>
                           
                           
                            <div class="isotope-item c<%=pd.getId_Categorie()%>">
                                
                                <div class="product-item d-flex" >
                                    <div class="item-thumb w-50">
                                        <img src="<%=pd.getImage() %>" class="img-responsive" alt=""/>
                                      <!--   <div class="overlay-rmore quickview" > <i class="fa fa-search"></i></div> -->
                                      
                                    </div>
                                    <div class="" >
                                    
                                        <h3 class="product-title" ><a  class="text-dark"  href="Details?id=<%=pd.getId() %>">
                                    <%=pd.getNom() %> <br>  <%=pd.getPrix() %>€
                                     
                                       </a>
                                        </h3> 
                       
                                     
                                    </div>
                                </div>
                               
                            </div>
                            <%} %>
                            
                            
                            
                            
                           
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>




  <!-- footer section -->
<jsp:include page="Footer" />
  <!-- end  footer section -->


  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js">
  </script>
  <script type="text/javascript">
    $(".owl-carousel").owlCarousel({
      loop: true,
      margin: 10,
      nav: true,
      navText: [],
      autoplay: true,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 1
        },
        420: {
          items: 2
        },
        1000: {
          items: 5
        }
      }

    });
  </script>
  <script>
    var nav = $("#navbarSupportedContent");
    var btn = $(".custom_menu-btn");
    btn.click
    btn.click(function (e) {

      e.preventDefault();
      nav.toggleClass("lg_nav-toggle");
      document.querySelector(".custom_menu-btn").classList.toggle("menu_btn-style")
    });
  </script>
  <script>
    $('.carousel').on('slid.bs.carousel', function () {
      $(".indicator-2 li").removeClass("active");
      indicators = $(".carousel-indicators li.active").data("slide-to");
      a = $(".indicator-2").find("[data-slide-to='" + indicators + "']").addClass("active");
      console.log(indicators);

    })
  </script>

</body>
</body>

</html>
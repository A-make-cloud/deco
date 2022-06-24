<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="model.Categorie" %>
    <%@page import="model.Produit" %>
    <%@page import="model.Panier" %>
    <%@page import="model.PanierDetails" %>
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

  <title>Deco about</title>

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
     <link href="css/stylep.css" rel="stylesheet" />
  
</head>

<body class="sub_page">
  <div class="hero_area">
  
  <jsp:include page="Header"/>  
      <!-- Page Header Start -->
    <div class="container-fluid bg-secondary">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-left">
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">${titre }</h1>
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
    

    <!-- Page Header Start -->
 
  </div>


  <section class="about_section layout_padding my-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="detail-box">

         	<div class="shop-single shopping-cart">

				    <div class="">
                <div class="container">
                    <div class="row">
                      
                             <div class="row">
                     <div id="isotope" class="isotope row">
                           <%
							ArrayList<Produit> prods = new ArrayList<Produit>();
							prods=(ArrayList)request.getAttribute("prods");
							for(Produit pro:prods){ 
							%>
                            <div class="isotope-item c<%=pro.getId_Categorie()%>">
                                <div class="product-item">
                                    <div class="item-thumb mx-2">
                                        <img src="<%=pro.getImage() %>" style="width:200px;height:200px;" class="img-responsive" alt=""/>
                                      <div class="overlay-rmore quickview" > <i class="fa fa-search"></i></div>
                                    </div>
                                    <div class="product-info w-75">
                                        <h4 class="product-title"><a href="Details?id=<%=pro.getId() %>">
                                        <%=pro.getNom() %>
                                       </a></h4> 
                                        <span class="product-price"><b><%= pro.getPrix() %>&euro;</b></span>
                                    </div>
                                </div>
                            </div>
                            <%} %>
             
                        </div> 
              </div> 
                    </div>
                </div>
            </div>

         	</div>
         

          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- end about section -->


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
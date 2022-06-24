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
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">Panier</h1>
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

  </div>


  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="detail-box">
         	<div class="shop-single shopping-cart">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <table class="cart-table">
         	<tr>
	         	 <th>Catégorie</th>
	         	<th>Nom</th>
	         	<th>Image</th>
	         	<th>Prix unitaire</th>
	         	<th>Quantité</th>
	       		<th>Sous-total</th>
	         	<th>Supprimer</th>
         	</tr>
         	
        	    <% Panier paniers=(Panier)session.getAttribute("panier");
            						for(PanierDetails pan:paniers.articles){ 
            							
            							
            					%>
         
         	<tr>
         		<td><%=pan.getProduit().getId_Categorie() %></td>
         		<td><%=pan.getProduit().getNom() %></td>
         		<td><img src=<%=pan.getProduit().getImage() %>"></td>
         		<td><%=pan.getProduit().getPrix() %></td>
         		<td><%=pan.getQte() %></td>
         		<td><%=pan.getProduit().getPrix()*pan.getQte() %></td>
         		<td><a href="Paniers?delete=<%= pan.getProduit().getId() %>"><img style="width:15px;" src="img/trash.png"  alt=""></a> </td>
         	</tr>
         	<%} %> 
         </table>
         	</div>
         	</div>
         	</div>
         	</div>
         
                     <div class="table-btn  shipping-info-wrap border-0">
                     <div class="d-flex justify-content-between mb-5">
                      <a href="Index" class="btn-black pull-left btn btn-primary py-3 px-5">Continue Shopping</a>
                      <a href="Paniers?vider()" class="btn-black pull-right btn btn-primary py-3 px-5">Vider Panier</a>
                      </div>
                      
                      <div class="clearfix space20"></div>
                       <div class="clearfix space40"></div>
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
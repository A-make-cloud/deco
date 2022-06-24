   <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@page import="model.Client" %>
    <%@page import="model.Commande" %>
    <%@page import="model.CommandeDAO" %>
       <%@page import="model.Panier" %>
    <%@page import="model.PanierDetails" %>
    <%@page import="java.util.ArrayList" %>
       <%@page import="model.Produit" %>
           <% Produit p=(Produit) request.getAttribute("cprod"); %>
   <%--         <% Commande cm=(Commande) request.getAttribute("cdme"); %> --%>
<!DOCTYPE html>
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

  <title>Deco contact</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
 <!--  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" /> -->

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
    <link href="css/stylep.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">
 
  <jsp:include page="Header" /> 


         <!-- Page Header Start -->
    <div class="container-fluid bg-secondary">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-left">
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">Confirmation de Commande</h1>
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

  <section class="contact_section layout_padding">

    <div class="container">
            <div class="body">
            <!-- TOPBAR -->

             <div class="col-sm-12 col-md-12">
              <center>
             <img src="img/check.png"><br>
            <h1>Votre commande a bien &eacute;t&eacute; prise en compte</h1></center>
            </div>
            <br>
            <center>
               <div class="col-sm-12 col-md-12 mt-5 mb-5">
              
               
               <h4>Cher(e) Madame / Monsieur :<span style="color:#dfb163;"> ${usernom }   ${userprenom } </span></h4><br>
               <%--  <h4>Adresse : ${useradresse }</h4> --%>
             <h4>Montant de vos achats : ${panier.total() } €</h4>
             
             </center>
              <center>
           <%-- 
               
               <%
       							ArrayList<Commande> cdme = new ArrayList<Commande>();
       							cdme=(ArrayList)request.getAttribute("cdme");
       							for(Commande co:cdme){ 
       							%>
            					<%= co.getId() %>">
            					<%=co.getTotal() %> --%>
             <img src="img/cadenas.png"><span>PAIEMENT SECURISE</span><br>
          <a href="Cart"><h1 style="color:#dfb163;">Pour une livraison rapide <br> effectuez votre reglement sans plus attendre </h1></a>
            <img src="img/main.png"></center><br>
            </div>
      	
 
      </div>

     
            <!-- FOOTER -->
          
            
	

        </div>
    </div>
  </section>

  <!-- end contact section -->
<%--   <jsp:include page="Footer" /> --%>


  <!-- info section -->

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
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="model.Categorie" %>
    <%@page import="model.Produit" %>
     <%@page import="model.ProduitDAO" %>
     <%@page import="model.PanierDetails" %>
      <%@page import="model.Panier" %>
    <%@page import="java.util.ArrayList" %>
    <% Produit p=(Produit) request.getAttribute("cprod"); %>
    <% Panier pan=(Panier) request.getAttribute("qte"); %> 
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
                    <h1 class="mb-4 mb-md-0 text-primary text-uppercase">Article selectionne</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="Index">Accueil</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-outline-primary disabled" href="Connexion"> ${cattitre}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <!-- Page Header Start -->
 
  </div>
			<section class="about_section mb-5">
			    <div class="container">
      				 <div class="row">
                     <div class="btn-box  col-md-12">
                       <a href="Index" class="btn btn-outline-primary active">
                        Accueil
                      </a>
                      <a href="" class="btn btn-outline-primary">
                       ${cattitre}
                      </a>
                      <a href="" class="btn btn-outline-primary">
                       ${cprod.getNom()}
                      </a>
                    </div>
          
                  </div>
              </section>
  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">

              <div class="img-box">
            <h3 class="text-capitalize" style="font-size:2em;">${cprod.getNom()}</h3>
            <h3>${cprod.getPrix()} €</h3>
            <div class="t-name">
  <%--              <%
           ArrayList<Produit> prods=new ArrayList<Produit>();
           prods=(ArrayList)request.getAttribute("prods");
           for(Produit pro:prods){
           
           
           %> --%>
           
           <%if(p.getQuantite()==0){ %>
            
   <h6 style="font-size:0.9em;">Quantité en stock<span class="text-danger"> Indisponible</span></h6>
            
                  <%
           } else if(p.getQuantite()>0) {%>
        
            <h6 style="font-size:0.9em;">Quantité en stock  <span class="text-success"><%=p.getQuantite() %> </span></h6>
                  <%
                       
           } %>
           
            </div>
          </div>
  
        
              <div class="col-md-12 col-sm-12">
                                            	<form method="POST">
                                            <%-- 	 
                      <%--                       	/* int qte ="pqte"; */
                                            	if(p.getQuantite()<  ) {%> 
                                            	
                                            	
             --%>
             <% 
             double total=0;
             int qte=0;
             
                if (qte > p.getQuantite()) {
                	qte=qte - p.getQuantite();
                }
                                         	
                                            	
                                            	
                                            	%>
        
<%--             <h6 style="font-size:0.9em;">Diminuer la quantite commande <span class="text-warning">quantite commande  superieur a quantite disponible = <%=p.getQuantite() %> </span></h6>
 --%>        
         
	                                                Quantit&eacute; : <input type="number" name="pqte" value="1">
	                                                				 
   <%--           
            <%
                       
           } %> --%>
	                                                <button class="btn-color btn btn-primary px-2" type="submit" name="padd" >Ajouter au panier</button>
												</form>
											</div>
          </div>
        </div>
        <div class="col-md-6">
        
          <div class="img-box">
            <img src="${cprod.getImage()}" style="width:75%;" alt="">
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
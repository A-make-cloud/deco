<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="model.Categorie" %>
    <%@page import="model.Produit" %>
     <%@page import="model.Panier" %>
 <%@page import="model.PanierDetails" %>
 <%@page import="java.util.ArrayList"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--   <link href="css/stylep.css" rel="stylesheet" /> -->
<!--   <link rel="stylesheet" href="css/bootstrap.min.css">  -->
<!--   <link href="css/style.css" rel="stylesheet" />
    <link href="css/isotope.css" rel="stylesheet" /> -->
  <style type="text/css">
  
.topcart {
    display: inline-block;
}

.topsearch {
    display: inline-block;
}
 .topcart:hover .cart-info {
    opacity: 1;
    visibility: visible;
    margin-top: 12px;
    transition: .4s;
}

.topcart:hover span {
    background: #dfb163;
    color: #fff;
} 


#home2 .topcart {
    margin-right: -15px !important;
    position: relative;
    top: -20px;
    background: transparent !important;
}

#home2 .topcart:hover span,
#home2 .topcart span:hover {
    background: transparent;
    color: #dfb163;
    cursor: pointer;
}

.top-search2 {
    margin-right: -15px;
    width: 300px;
    position: relative;
    z-index: 9999;
}

.top-search2 input {
    border: none;
    border-bottom: 1px solid #c9c9c9;
    width: 100%;
    height: 35px;
}

.top-search2 button {
    border: none;
    background: transparent;
    color: #444;
    font-size: 15px;
    height: 35px;
    line-height: 35px;
    position: absolute;
    right: -4px;
    top: 0px;
}

  </style>  
    
<title>Insert title here</title>
</head>
<body>
    <!-- Topbar Start -->
    <div class="container-fluid bg-dark">
        <div class="px-5 container">
            <div class="row px-5 ">
				                <div class="col-md-6 text-center text-lg-left mb-2 mb-lg-0">
				                    <div class="d-inline-flex align-items-center">
				                        <a class="text-white pr-3" href="">FAQs</a>
				                        <span class="text-white">|</span>
				                        <a class="text-white px-3" href="">Help</a>
				                        <span class="text-white">|</span>
				                        <a class="text-white pl-3" href="">Support</a>
				                    </div>
				                </div>
                                <div class="col-md-6  tb_right pull-right col-lg-6 col-sm-6">
                                   <ul  style="display:flex;" class="list-unstyled">
                                    	<% if((boolean)session.getAttribute("isConnected")==false){ %>
                                    	 <span class="text-white">|</span>
                                        <li class="">
                                            <div class="tbr-info" >
                                           
                                                <a href="Connexion" class="text-white pr-3"><span>Inscription / connexion</span></a>
                                    
                                            </div>
                                        </li>
                                                <span class="text-white">|</span>
                                  
                                        <% }else{ %>
                                           <span class="text-white">|</span>
                                        <li>
                                            <div class="tbr-info">
                                           <a href="#" class="text-white pr-3"><span>Bonjour  ${userprenom}</span></a>
                                             </div>
                                        </li>
                                        <span class="text-white">|</span>
                                        <li>
                                            <div class="tbr-info">
                                                <a href="#" class="text-white pr-3"><span>Mon compte</span></a>
                                            </div>
                                        </li>
                                         <span class="text-white">|</span>
                                        <li>
                                            <div class="tbr-info">
                                                <a href="Deconnexion" class="text-white pr-3"><span>D&eacute;connexion </span></a>
                                            </div>
                                        </li>
                                                <span class="text-white">|</span>
                                        <% } %>
                                       
                                      
                                      
                                    </ul>
                                </div>
                     
                                
             <!-- Navmenu -->

        </div>
    </div>
    <!-- Topbar End -->


     <!-- Navbar Start -->
    <div class="container-fluid position-relative nav-bar">
        <div class="container position-relative px-3" style="z-index: 9;">
            <nav class="container navbar navbar-expand-lg bg-secondary navbar-dark py-3">
                <a href="" class="navbar-brand">
                    <h1 class="m-0 display-5 text-white"><span class="text-primary">i</span>DESIGN</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
 

                    </div>
                </div>
 
            				
            				
            				               <!-- Navmenu -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right">
                                    <li>
                                        <a href="Index" class="active" >Accueil</a>
                                    </li>
                                    
                                    
                                    <% 
									ArrayList<Categorie> cats = new ArrayList<Categorie>();
									cats=(ArrayList)request.getAttribute("cats");
									for(Categorie cat:cats){ 
									%>
									<li>
                                        <a href="Produits?id=<%=cat.getId() %>" >
                                        	<%=cat.getTitre() %>
                                        </a>
                                    </li>
									<%}%>
								  <li>
                                        <a href="Ajout_comments" class="py-3" ></a>
                                    </li>

  <li>
                                        <a href="Ajout_comments" class="text-warning"><i class="fa fa-star"></i><b>Commentaires</b></a>
                                    </li>
								 
                                    
                                      
                                </ul>
                            </div>
                            
                            
                                           <!-- Cart & Search -->
                            <div class="header-xtra pull-right">
                                <div class="topcart">
                                    <span><i class="fa fa-shopping-cart"></i></span>
                                    <div class="cart-info">
                                        <small>Vous avez <em class="highlight">
                                           
                                       ${panier.count()} article (s)</em> dans votre panier</small>
                                        <% Panier paniers=(Panier)session.getAttribute("panier");
            							for(PanierDetails pa:paniers.articles){ 
            								%>
            							
                                        <div class="ci-item">
                                            <img src="<%=pa.getProduit().getImage() %>" width="80" alt=""/>
                                            <div class="ci-item-info">
                                                <h5><a href="Details?id=<%=pa.getProduit().getId() %>">
                                                	<%=pa.getProduit().getNom() %></a> </h5>
                                                <p><%=pa.getQte() %> x <%=pa.getProduit().getPrix() %>&euro;</p>
                                               
                                            </div>
                                        </div>
                                        <% } %>
                                       
                                        <div class="ci-total">TOTAL : ${panier.total()}&euro;</div>
                                        <div class="cart-btn">
                                            <a href="Paniers">Voir mon panier</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="topsearch">
                                    <span>
                                        <i class="fa fa-search"></i>
                                    </span>
                                    
                               
     		    <form class="searchtop" method="GET" action="Recherche">
                                        <input required type="text" name="mot" placeholder="Recherche... ">
                                    </form>
                                    
                                           </div>
                          
                            </div>
                            
                             <!-- Cart & Search fin-->
            
                            </div>
                              
        </div>
                  
    </div>



    <!-- Under Nav Start -->
    <div class="container-fluid bg-white py-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 text-left mb-3 mb-lg-0">
                    <div class="d-inline-flex text-left">
                        <h1 class="flaticon-office font-weight-normal text-primary m-0 mr-3"></h1>
                        <div class="d-flex flex-column">
                            <h5>Our Office</h5>
                            <p class="m-0">123 Street, New York, USA</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-left text-lg-center mb-3 mb-lg-0">
                    <div class="d-inline-flex text-left">
                        <h1 class="flaticon-email font-weight-normal text-primary m-0 mr-3"></h1>
                        <div class="d-flex flex-column">
                            <h5>Email Us</h5>
                            <p class="m-0">info@example.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-left text-lg-right mb-3 mb-lg-0">
                    <div class="d-inline-flex text-left">
                        <h1 class="flaticon-telephone font-weight-normal text-primary m-0 mr-3"></h1>
                        <div class="d-flex flex-column">
                            <h5>Call Us</h5>
                            <p class="m-0">+012 345 6789</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Under Nav End -->
</body>
</html>
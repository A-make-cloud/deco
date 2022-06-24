<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.Categorie"%> 
<%@page import="java.util.ArrayList"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	if(request.getAttribute("cats")!=null){
		ArrayList<Categorie> cats = new ArrayList<Categorie>();
	cats=(ArrayList)request.getAttribute("cats");
	for(Categorie cat:cats){ 
	%>
	<a href="Produits?id=<%=cat.getId() %>"><h1><%=cat.getTitre() %></h1></a>
	<% 
	}
	}%>
	
</body>
</html>
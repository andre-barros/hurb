<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="../parts/meta.jsp" %>
    <%@include file="../parts/head.jsp" %>
    <meta charset="utf-8">
    <title>Error - Hurb</title>
  </head>
  <body class="bg-light">
  	<%@include file="../parts/navbar.jsp" %>
  	<div class="container">
	    <div class="card w-50 text-white bg-danger my-5 mx-auto">
		  <div class="card-header">
		    <span class="small"><i class="fas fa-exclamation-circle"></i></span> Error
		  </div>
		  <div class="card-body">
		    <h5 class="card-title">A requisicao nao pôde ser executada.</h5>
		    <p class="card-text">Exception:</p>
		    <% Exception e = (Exception) request.getAttribute("exception");%>
		    <p class="card-text small text-muted"><% e.printStackTrace(); %></p>
		    <p class="card-text text-right"><a href="./index.jsp" class="text-white font-weight-bold">Voltar para o início</a></p>
		  </div>
		</div>    
    </div>
    <%@include file="../parts/footer.jsp" %>
  </body>
</html>

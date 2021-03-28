<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang=it dir="ltr">
  <head>
    <%@include file="../parts/meta.jsp" %>
    <%@include file="../parts/head.jsp" %>
    <meta charset="utf-8">
    <title>Hurb</title>
    <meta http-equiv="refresh" content="5; url=./index.jsp" />
  </head>
  <body class="bg-light">
  <%@include file="../parts/navbar.jsp"%>
    <div class="container">
	    <div class="card w-50 text-white bg-success my-5 mx-auto">
		  <div class="card-header">
		    <span class="small"><i class="fas fa-check-circle"></i></span> Operação realizada
		  </div>
		  <div class="card-body">
		    <h5 class="card-title">Voce esta prestes a ser redirecionado para o inicio.</h5>
		    <p class="card-text small"><a href="./index.jsp" class="text-white">Caso haja algum problema com o redirecionamento, clique para voltar à página inicial.</a></p>
		  </div>
		</div>    
    </div>
    <%@include file="../parts/footer.jsp"%>
  </body>
</html>

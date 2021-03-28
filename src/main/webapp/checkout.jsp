<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="./parts/meta.jsp"%>
    <%@include file="./parts/head.jsp"%>
    <title>Hurb</title>
    <!-- various index js 
    <script src="./js/flighttype.js"></script> -->
  </head>
  <body>
    <%@include file="./parts/navbar.jsp"%>
    <div class="container-fluid bg-light py-5">
	    <%Boolean checkout = (Boolean) request.getAttribute("checkout");%>
	    <div class="w-50 mx-auto">
	    <% if (!checkout) { %>
	    	<p class="h3">Errore!</p>
	    	<p class="text-small">Para fazer um pedido, você deve primeiro fazer o login!</p>
	    	<p class="text-small text-right">Clique acima para fazer o login, caso contrário, <a href="./register.jsp">clique</a> 
          para se registrar se você é um novo usuário!</p>
	    <% } else if (checkout) {%>
	    	<p class="h3">Perfeito!! <span class="text-small"><i class="em em-airplane"></i></span></p>
	    	<p class="text-small">A requisição  foi feito com sucesso!</p>
	    	<p class="text-small text-right">Clique <a href="./">aqui</a> para voltar para o inicio</p>
	    <% } %>
	    </div>
    </div>
    <%@include file="./parts/footer.jsp"%>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="./parts/meta.jsp"%>
		<%@include file="./parts/head.jsp"%>
		<title>Booking in progress - Hurb</title>
	</head>
	<body>
		<%@include file="./parts/navbar.jsp"%>
		<div class="container-fluid py-5 bg-light">
			<% if (session == null || cart == null || cart.isEmpty()) { %>
			<p class="font-weight-bold">Non hai selezionato alcun volo!</p>
			<% } else {%>
			<div class="container w-75 table-responsive"><table class="table table-borderless">
			  <thead>
			    <tr>
			      <th scope="col">ID</th>
			      <th scope="col">Companhia</th>
			      <th scope="col">Partida</th>
			      <th scope="col">Destino</th>
			      <th scope="col">Data de partida</th>
			      <th scope="col">Data de chegada</th>
			      <th scope="col">Preco</th>
			      <th scope="col">&nbsp;</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<% if (cart.getUser() != null && cart.getUser() != "") {
			  		cart = cart.restoreCart();
			  	}
			  	ArrayList<ProductBean> flights = cart.getAllProduct();
			  	for (ProductBean flight : flights) {
			  		out.println("<tr>");
			  		out.println("<th scope=\"row\">"+flight.getId()+"</th>");
			  		out.println("<td class=\"text-capitalize\">"+flight.getCompagniaAerea()+"</td>");
			  		out.println("<td class=\"text-capitalize\">"+flight.getPartenza()+"</td>");
			  		out.println("<td class=\"text-capitalize\">"+flight.getDestinazione()+"</td>");
			  		out.println("<td>"+flight.getDataPartenza().toString().split("\\.")[0]+"</td>");
			  		out.println("<td>"+flight.getDataArrivo().toString().split("\\.")[0]+"</td>");
			  		out.println("<td>"+flight.getPrezzo()+"</td>");
			  		out.println("<td><a href=\"RemoveSelectedFlight?flightId="+flight.getId()+"&type=get\" class=\"btn btn-danger\">Retirar</a></td>");
			  		out.println("</tr>");
			  	}
			  	%>
			  </tbody>
			</table></div>
			<p class="text-right"><button type="button" class="btn btn-sm btn-success">Fazer o check-out!</button></p>
			<% } %>
		</div>
		<%@include file="./parts/footer.jsp"%>
	</body>
</html>
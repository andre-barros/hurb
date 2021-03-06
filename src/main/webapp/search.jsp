<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <%@include file="./parts/meta.jsp"%>
    <%@include file="./parts/head.jsp"%>
    <title>Pesquisar voos - Hurb</title>
  </head>
  <body>
    <%@include file="./parts/navbar.jsp"%>
    <div class="container-fluid bg-light py-5">
      <% ArrayList<ProductBean> flights = (ArrayList<ProductBean>) request.getAttribute("flightList");%>
      <% Boolean onlygo = (request.getParameter("flightType").equals("ao")) ? true : false; %>
      <div class="alert alert-danger d-none" id="selectMessage" role="alert">
      </div>
      <div class="row">
        <div class="col-sm-8">
          <div class="container-fluid bg-primary text-white py-3">Ida</div>
          	<div class="table-responsive"><table class="table table-hover" id="goTable">
            <thead class="thead-dark">
              <tr>
                <th scope="col">ID</th>
                <th scope="col">Companhia</th>
                <th scope="col">Destino</th>
                <th scope="col">Data de partida</th>
                <th scope="col">Data de chegada</th>
                <th scope="col">Assentos</th>
                <th scope="col">Preco</th>
                <th scope="col">&nbsp;</th>
              </tr>
            </thead>
            <tbody>
              <%if (!flights.isEmpty()) {
                for (ProductBean f : flights) {
                  if (f.getPartenza().equals("roma")) {
                	  out.print("<tr>");
                	  out.print("<th scope=\"row\" id=\"id-"+f.getId()+"\">"+f.getId()+"</th>");
                      out.print("<td class=\"text-capitalize\" id=\"company-"+f.getId()+"\">"+f.getCompagniaAerea()+"</td>");
                      out.print("<td class=\"text-capitalize\" id=\"destination-"+f.getId()+"\">"+f.getDestinazione()+"</td>");
                      out.print("<td id=\"dateDep-"+f.getId()+"\">"+f.getDataPartenza().toString().split("\\.")[0]+"</td>");
                      out.print("<td id=\"dateArr-"+f.getId()+"\">"+f.getDataArrivo().toString().split("\\.")[0]+"</td>");
                      out.print("<td>"+f.getPosti()+"</td>");
                      out.print("<td id=\"price-"+f.getId()+"\">R$ "+f.getPrezzo()+"</td>");
                      out.print("<td><button type=\"button\" class=\"btn btn-success\" id=\"flight-"+f.getId()+"\" onclick=\"selectFlight("+f.getId()+", 'goTable')\">Selecione</button></td>");
                      out.print("</tr>");
                  }
                }
               }%>
            </tbody>
          </table></div>
        </div>
        <div class="col-sm-4" id="userFlights">
        	<div class="container-fluid bg-success text-white py-3">Reserva</div>
        	<div class="container" id="checkoutDiv">
        		<p class="text-right"><a href="./checkout" class="btn btn-success btn-sm">Fazer o check-out</a></p>
        	</div>
		</div>
      </div>
       <% if (!onlygo) { %>
		<div class="row">
       		<div class="col-sm-8">
       			<div class="container-fluid bg-primary text-white py-3">Ritorno</div>
	          		<div class="table-responsive">
		          		<table class="table table-hover" id="backTable">
			            	<thead class="thead-dark">
				              	<tr>
				                	<th scope="col">ID</th>
				                	<th scope="col">Companhia</th>
				                	<th scope="col">Destino</th>
				                	<th scope="col">Data de partida</th>
				                	<th scope="col">Data de chegada</th>
				                	<th scope="col">Assentos</th>
				                	<th scope="col">&nbsp;</th>
				              	</tr>
			            	</thead>
			            	<tbody>
				            	<%if (!flights.isEmpty()) {
					                for (ProductBean f : flights) {
					                  if (f.getDestinazione().equals("roma")) {
					                	  out.print("<tr>");
					                      out.print("<th scope=\"row\" id=\"id-"+f.getId()+"\">"+f.getId()+"</th>");
					                      out.print("<td id=\"company-"+f.getId()+"\">"+f.getCompagniaAerea()+"</td>");
					                      out.print("<td id=\"destination-"+f.getId()+"\">"+f.getDestinazione()+"</td>");
					                      out.print("<td id=\"dateDep-"+f.getId()+"\">"+f.getDataPartenza().toString()+"</td>");
					                      out.print("<td id=\"dateArr-"+f.getId()+"\">"+f.getDataArrivo().toString()+"</td>");
					                      out.print("<td>"+f.getPosti()+"</td>");
					                      out.print("<td id=\"price-"+f.getId()+"\">"+f.getPrezzo()+"</td>");
					                      out.print("<td><button type=\"button\" class=\"btn btn-success\" id=\"flight-"+f.getId()+"\" onclick=\"selectFlight("+f.getId()+", 'backTable')\">Selecione</button></td>");
					                      out.print("</tr>");
					                  }
					                }
					               }%>
			            	</tbody>
		          	</table>
				</div>
          	</div>
       	</div>
       <% } %>
    </div>
    <%@include file="./parts/footer.jsp"%>
  </body>
</html>

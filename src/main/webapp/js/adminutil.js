$("#submitFlight").on("click", function(event) {
	event.preventDefault();
	console.log("testing..");
	if (validateNewFlight()) {
		$.ajax({
		      type: "POST",
		      url: "ServletAdder",
		      data: "newDeparture="+$("#departureInput").val()+"&newDateDep="+$("#dateDepInput").val()+"&newTimeDep="+$("#timeDepInput").val()+"&newArrival="+$("#arrivalInput").val()+"&newDateArr="+$("#dateArrInput").val()+"&newTimeArr="+$("#timeArrInput").val()+"&newCompany="+$("#companyInput").val()+"&newMax="+$("#maxPassInput").val()+"&newPrice="+$("#priceInput").val(),
		      contentType: "application/x-www-form-urlencoded"
		  })
		  .done(function() {
			  	  $("#addMessage").show("fast");
		    	  $("#addMessage").addClass("alert-success");
		    	  $("#addMessage").text("O vôo foi inserido com sucesso!");
		    	  $("#addMessage").delay(1000).fadeOut();
		    	  $("#addFlightForm")[0].reset();
		   })
		   .fail(function() {
			      $("#addMessage").show("fast");
		    	  $("#addMessage").addClass("alert-danger");
		    	  $("#addMessage").text("Ocorreu um erro com a entrada do voo!");
		    	  $("#addMessage").delay(5000).fadeOut();
		      });
	}
});

function validateNewFlight() {
	var cityExp = /^[a-zA-Z\s]+$/;
	var destValid = $("#arrivalInput").val().match(cityExp); 
	console.log($("#arrivalInput").val());
	console.log("destvalid: "+destValid);
	var depValid = $("#departureInput").val().match(cityExp);
	console.log($("#departureInput").val());
	console.log("depvalid: "+depValid);
	
	console.log("validating..");
	if (!destValid) {
		$("#addMessage").show("fast");
		$("#addMessage").addClass("alert-danger");
		$("#addMessage").text("A cidade de destino nao respeita a sintaxe! Lembre-se de que você só pode usar letras e espaços");
		$("#addMessage").delay(5000).fadeOut();
		return false;
	}
	if (!depValid) {
		$("#addMessage").show("fast");
		$("#addMessage").addClass("alert-danger");
		$("#addMessage").text("A cidade de partida nao respeita a sintaxe! Lembre-se de que você só pode usar letras e espaços.");
		$("#addMessage").delay(5000).fadeOut();
		return false;
	}
	
	return true;
}
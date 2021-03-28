function selectFlight(id, tablename) {
	$.ajax({
	      type: "POST",
	      url: "selectFlight",
	      data: "flightId="+id+"&type=post",
	      contentType: "application/x-www-form-urlencoded"
	  })
	  .done(function() {
		  	  $("#"+tablename).find("button").attr("disabled", "disabled");
	    	  if (tablename === "goTable") {
	    		  var plane = '<i class="fas fa-plane-departure"></i>';
	    	  } else {
	    		  var plane = '<i class="fas fa-plane-arrival"></i>';
	    	  }
	    	  var flightHeader = '<div class="row px-3 py-2" id="selected-'+id+'"><div class="col"><p class="text-capitalize">'+plane+' '+$("#destination-"+id).text()+'</p>';
	    	  var flightBody = '<p><span class="font-weight-bold">Partida:</span> '+$("#dateDep-"+id).text()+'<br/><span class="font-weight-bold">Chegada:</span> '+$("#dateArr-"+id).text()+'</p><p class="text-right"><span class="font-weight-bold">Total: </span>'+R$("#price-"+id).text()+'</p>';
	    	  var flightFooter = '<p class="text-center"><button type="button" class="btn btn-danger btn-sm" onclick="removeFlight(\''+id+'\', \''+tablename+'\')">Retirar</button></p></div></div>';
	    	  $("#checkoutDiv").prepend(flightHeader+flightBody+flightFooter);
	   })
	   .fail(function() {
		   	if ($("#selectedMessage").hasClass("d-none")) {
		   		$("#selectedMessage").removeClass("d-none");
		   	}
	    	  $("#selectMessage").text("Ocorreu um erro na seleção do voo!");
	    	  $("#selectMessage").show("fast");
	    	  $("#selectMessage").delay(1000).fadeOut();
      });
}

function removeFlight(id, tablename) {
	$.ajax({
	      type: "POST",
	      url: "RemoveSelectedFlight",
	      data: "flightId="+id+"&type=post",
	      contentType: "application/x-www-form-urlencoded"
	  })
	  .done(function() {
		  	  $("#selected-"+id).remove();
		  	  $("#"+tablename).find("button").removeAttr("disabled");
	   })
	   .fail(function() {
	    	  $("#selectMessage").text("Ocorreu um erro com a remoção do voo!");
	    	  $("#selectMessage").show("fast");
	    	  $("#selectMessage").delay(1000).fadeOut();
    });
}
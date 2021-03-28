$("#submitEmailForm").on("click", function(event) {
	event.preventDefault();
	console.log("testing..");
	if (validateEmail()) {
		$.ajax({
		      type: "POST",
		      url: "ServletSettingsChanger",
		      data: "type=email&old="+$("#oldEmail").val()+"&new="+$("#newEmail").val(),
		      contentType: "application/x-www-form-urlencoded"
		  })
		  .done(function() {
			  	  $("#userSettingsMessage").show("fast");
		    	  $("#userSettingsMessage").addClass("alert-success");
		    	  $("#userSettingsMessage").text("Configurações aggiornate con successo!");
		    	  $("#userSettingsMessage").delay(1000).fadeOut();
		    	  $("#useremailForm")[0].reset();
		   })
		   .fail(function() {
			      $("#userSettingsMessage").show("fast");
		    	  $("#userSettingsMessage").addClass("alert-danger");
		    	  $("#userSettingsMessage").text("Ocorreu um erro com a entrada do voo!");
		    	  $("#userSettingsMessage").delay(5000).fadeOut();
		      });
	}
});

$("#submitPswForm").on("click", function(event) {
	event.preventDefault();
	console.log("testing..");
	if (validatePsw()) {
		$.ajax({
		      type: "POST",
		      url: "ServletSettingsChanger",
		      data: "type=psw&old="+$("#oldPsw").val()+"&new="+$("#newPsw").val(),
		      contentType: "application/x-www-form-urlencoded"
		  })
		  .done(function() {
			  	  $("#userSettingsMessage").show("fast");
		    	  $("#userSettingsMessage").addClass("alert-success");
		    	  $("#userSettingsMessage").text("Configurações aggiornate con successo!");
		    	  $("#userSettingsMessage").delay(1000).fadeOut();
		    	  $("#userpswForm")[0].reset();
		   })
		   .fail(function() {
			      $("#userSettingsMessage").show("fast");
		    	  $("#userSettingsMessage").addClass("alert-danger");
		    	  $("#userSettingsMessage").text("Ocorreu um erro com a entrada do voo!");
		    	  $("#userSettingsMessage").delay(5000).fadeOut();
		      });
	}
});

function validateEmail() {
	var regularMail = /^\w+([\._\-]?\w+)*@\w+([\.\-]?\w+)*(\.\w+)+$/;
	var oldvalid = $("#oldEmail").val().match(regularMail); 
	var newvalid = $("#newEmail").val().match(regularMail); 
	
	console.log("validating..");
	if (!oldvalid) {
		$("#userSettingsMessage").show("fast");
		$("#userSettingsMessage").addClass("alert-danger");
		$("#userSettingsMessage").text("O email atual nao respeita a sintaxe! Lembre-se de que você só pode usar letras e numeros.");
		$("#userSettingsMessage").delay(5000).fadeOut();
		return false;
	}
	if (!newvalid) {
		$("#addMessage").show("fast");
		$("#addMessage").addClass("alert-danger");
		$("#addMessage").text("O novo email nao respeita a sintaxe! Lembre-se de que você só pode usar letras e numeros.");
		$("#addMessage").delay(5000).fadeOut();
		return false;
	}
	
	return true;
}

function validatePsw() {
	var regularPassword =  /^[a-zA-Z 0-9 \@\._\!\?\-]{8,}$/;
	var oldvalid = $("#oldPsw").val().match(regularPassword); 
	var newvalid = $("#newPsw").val().match(regularPassword); 
	
	console.log("validating..");
	if (!oldvalid) {
		$("#userSettingsMessage").show("fast");
		$("#userSettingsMessage").addClass("alert-danger");
		$("#userSettingsMessage").text("A senha atual nao respeita a sintaxe! Lembre-se de que você só pode usar letras e numeros.");
		$("#userSettingsMessage").delay(5000).fadeOut();
		return false;
	}
	if (!newvalid) {
		$("#addMessage").show("fast");
		$("#addMessage").addClass("alert-danger");
		$("#addMessage").text("A nova senha nao respeita a sintaxe! Lembre-se de que você só pode usar letras e numeros.");
		$("#addMessage").delay(5000).fadeOut();
		return false;
	}
	
	return true;
}
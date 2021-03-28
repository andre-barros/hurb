<div class="alert" id="addMessage" role="alert">
</div>
<p class="h3"><i class="fas fa-plane"></i> Adicionar um novo voo</p>
      	<form action="#" id="addFlightForm">
      		<div class="form-row">
     				<div class="col-md-6 form-group">
        		<label for="departureInput">Partida da:</label>
				<input type="text" class="form-control" name="newDeparture" id="departureInput" aria-describedby="departureHelp" placeholder="Introduzir o aereoporto de partida">
				<small id="departureHelp" class="form-text text-muted">O aeroporto de partida nao deve conter numeros.</small>
       		</div>
       		<div class="col-md-3 form-group">
        		<label for="dateDepInput">Data de partida:</label>
				<input type="date" class="form-control" name="newDateDep" id="dateDepInput" aria-describedby="dateDepHelp">
				<small id="dateDepHelp" class="form-text text-muted">A data de partida nao pode ser anterior a data de partida.</small>
      			</div>
      			<div class="col-md-3 form-group">
        		<label for="timeDepInput">Hora de partida:</label>
				<input type="time" class="form-control" name="newTimeDep" id="timeDepInput" aria-describeby="timeDepHelp">
				<small id="timeDepHelp" class="form-text text-muted">Sintaxe: 12:59 AM</small>
      			</div>
      		</div>
      		<div class="form-row">
      			<div class="col-md-6 form-group">
        		<label for="arrivalInput">Chegada a:</label>
				<input type="text" class="form-control" name="newArrival" id="arrivalInput" aria-describedby="arrivalHelp" placeholder="Introduzir o aereoporto de chegada">
				<small id="arrivalHelp" class="form-text text-muted">O aeroporto de chegada nao deve conter numeros.</small>
      			</div>
      			<div class="col-md-3 form-group">
        		<label for="dateArrInput">Data de chegada:</label>
				<input type="date" class="form-control" name="newDateArr" id="dateArrInput" aria-describedby="dateArrHelp">
				<small id="dateArrHelp" class="form-text text-muted">A data de partida nao pode ser anterior a data de partida.</small>
      			</div>
      			<div class="col-md-3 form-group">
        		<label for="timeArrInput">Tempo de chegada:</label>
				<input type="time" class="form-control" name="newTimeArr" id="timeArrInput" aria-describedby="timeArrHelp">
				<small id="timeArrHelp" class="form-text text-muted">Sintaxe: 12:59 AM</small>
      			</div>
      		</div>
      		<div class="form-row">
      			<div class="col-md-6 form-group">
        		<label for="companyInput">Companhia:</label>
				<input type="text" class="form-control" name="newCompany" id="companyInput" placeholder="Insira a companhia aerea que oferece o voo">
      			</div>
      			<div class="col-md-3 form-group">
      				<label for="maxPassInput">Assentos maximo:</label>
      				<input type="number" class="form-control" name="newMax" id="maxPassInput" aria-describedby="maxPassHelp" min="0" max="200">
      				<small id="maxPassHelp" class="form-text text-muted">Os assentos maximo que podem ser associados a um voo sao 200.</small>
      			</div>
      			<div class="col-md-3 form-group">
      				<label for="priceInput">Preco:</label>
      				<input type="number" class="form-control" name="newPrice" id="priceInput" min="0" step="0.01">
      			</div>
      		</div>
      		<p class="text-right"><button type="submit" class="btn btn-primary" id="submitFlight">Adicionar voo</button></p>
      	</form>
<script src="./js/adminutil.js"></script>
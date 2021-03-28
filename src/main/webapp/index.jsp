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
    <div class="container-fluid mainbox py-5 bg-light text-light text-center">
      <div class="w-50 p-3 mx-auto">
        <form action="search" method="get">
          <!-- <div class="form-group custom-control custom-radio custom-control-inline">
            <input type="radio" id="arRadio" value="ar" name="flightType" class="custom-control-input">
            <label class="custom-control-label" for="arRadio">Ida e retorno</label>
          </div> -->
          <div class="form-group custom-control custom-radio custom-control-inline">
            <input type="radio" id="aoRadio" value="ao" name="flightType" class="custom-control-input" checked>
            <label class="custom-control-label" for="aoRadio">Destino</label>
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-sm">
                <select class="custom-select" id="destination" name="destination" required>
                  <option value="amsterdam">Amsterdam</option>
                  <option value="cracovia">Cracovia</option>
                  <option value="parigi">Parigi</option>
                  <option value="dortmund">Dortmund</option>
                  <option value="lussemburgo">Lussemburgo</option>
                  <option value="mosca">Mosca</option>
                  <option value="praga">Praga</option>
                  <option value="copenaghen">Copenhagen</option>
                  <option value="berlino">Berlino</option>
                </select>
              </div>
              <div class="col-sm">
                <input type="date" id="aDate" name="aDate" required>
                <script src="./js/todaydate.js"></script>
                <!-- <input type="date" id="rDate" name="rDate" required> -->
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-success btn-sm btn-block">Procurar</button>
        </form>
      </div>
    </div>
    <div class="py-5 container-fluid bg-light text-dark text-center">
      <p class="h3"><span class="text-danger"><i class="fas fa-map-marker-alt"></i></span> Destinos recomendados para você</p>
      <div class="card-deck">
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" id="cardimg1" src="./images/amsterdam.jpg" alt="Amsterdam">
          <div class="card-body">
            <h5 class="card-title text-capitalize" id="cardtitle1">Destination 1</h5>
          </div>
          <div class="card-footer">
            <button type="button" id="selectDest1" class="btn btn-primary btn-sm btn-block">Selecione</button>
          </div>
        </div>
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" id="cardimg2" src="./images/amsterdam.jpg" alt="Amsterdam">
          <div class="card-body">
            <h5 class="card-title text-capitalize" id="cardtitle2">Destination 2</h5>
          </div>
          <div class="card-footer">
            <button type="button" id="selectDest2" class="btn btn-primary btn-sm btn-block">Selecione</button>
          </div>
        </div>
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" id="cardimg3" src="./images/amsterdam.jpg" alt="Amsterdam">
          <div class="card-body">
            <h5 class="card-title text-capitalize" id="cardtitle3">Destination 3</h5>
          </div>
          <div class="card-footer">
            <button type="button" id="selectDest3" class="btn btn-primary btn-sm btn-block">Selecione</button>
          </div>
        </div>
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" id="cardimg4" src="./images/amsterdam.jpg" alt="Amsterdam">
          <div class="card-body">
            <h5 class="card-title text-capitalize" id="cardtitle4">Destination 4</h5>
          </div>
          <div class="card-footer">
            <button type="button" id="selectDest4" class="btn btn-primary btn-sm btn-block">Selecione</button>
          </div>
        </div>
      </div>
      <!-- random destination -->
      <script src="./js/randomflight.js"></script>
      <!-- end random destination -->
    </div>
    <div class="py-5 container-fluid text-center bg-light text-dark">
      <p class="h3"><span class="text-warning"></span> Por que Hurb?</p>
      <div class="row px-5">
        <div class="col-sm">
          <p class="mb-0 h2 text-center text-danger"><i class="far fa-question-circle"></i></p>
          <p class="mb-0 text-justify">O Hurb é o motor de pesquisa de viagens que encontra o voo mais adequado para si, de São Paulo para qualquer capital brasileira, mostrando-lhe a melhor oferta do mercado!</p>
        </div>
        <div class="col-sm">
          <p class="mb-0 h2 text-center text-primary"><i class="far fa-thumbs-up"></i></p>
          <p class="mb-0 text-justify">Escolha seu destino, data e vôo. A Hurb cuidará do resto! A Hurb encontra o voo que melhor se adapta a você, simplificando todo o processo de reserva!</p>
        </div>
        <div class="col-sm">
          <p class="mb-0 h2 text-center text-success"><i class="fas fa-share-alt"></i></p>
          <p class="mb-0 text-justify">Siga-nos no Facebook, Twitter, Instagram e Youtube para descobrir todas as novidades do Hurb, encontrar ideias e dicas de viagem e nos contar um pouco sobre sua vida de viajante!</p>
        </div>
      </div>
    </div>
    <%@include file="./parts/footer.jsp"%>
  </body>
</html>

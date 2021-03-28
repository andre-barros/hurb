<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="./parts/meta.jsp"%>
    <%@include file="./parts/head.jsp"%>
    <title>Hurb - Registrar</title>
  </head>
  <body>
    <%Boolean duplicate = (Boolean) request.getAttribute("duplicato");%>
    <%@include file="./parts/navbar.jsp"%>
    <div class="container-fluid bg-light py-5">
      <div class="row">
        <div class="col-sm my-5">
          <p class="h1 text-center text-warning"></p>
          <p class="text-justify px-5"></p>
        </div>
        <div class="col-sm">
          <p class="h4">Registrar em  Hurb</p>
          <form action="register" name="registerForm" method="post" novalidate>
            <div class="form-group">
              <% if (duplicate != null) { %>
              <div class="alert alert-danger" role="alert">Email già esistente!</div>
              <% } else if (denied != null) {%>
              <div class="alert alert-danger" role="alert">Os dados inseridos estão incorretos!</div>
              <% } %>
              <label for="regName">Nome <span class="badge badge-danger" id="nameInvalid" hidden><i class="fas fa-exclamation-triangle"></i> invalido</span></label>
              <input type="text" id="regName" name="userName" class="form-control" placeholder="introduza o  nome" required>
            </div>
            <div class="form-group">
              <label for="regSurname">Cognome <span class="badge badge-danger" id="surnameInvalid" hidden><i class="fas fa-exclamation-triangle"></i> invalido</span></label>
              <input type="text" id="regSurname" name="userSurname" class="form-control" placeholder="introduza o  sobrenome" required>
            </div>
            <div class="form-group">
              <label for="regEmail">Email <span class="badge badge-danger" id="emailInvalid" hidden><i class="fas fa-exclamation-triangle"></i> invalido</span></label>
              <input type="email" id="regEmail" name="userEmail" class="form-control" placeholder="Introduzir o email" required>
            </div>
            <div class="form-group">
              <label for="regPsw">Senha <span class="badge badge-danger" id="pswInvalid" hidden><i class="fas fa-exclamation-triangle"></i> invalido</span></label>
              <input type="password" id="regPsw" name="userPassword" class="form-control" aria-describedby="helpPsw" placeholder="Inserir senha" required>
              <small id="helpPsw" class="form-text text-muted">A senha deve ter pelo menos 8 caracteres e nao deve conter letras acentuadas.</small>
            </div>
            <button type="submit" onclick="return validate(this.form)" class="btn btn-dark">Registrar</button>
          </form>
          <small class="text-muted">O Hurb nao compartilhará os dados inseridos pelo usuário com ninguém.</small>
        </div>
      </div>
    </div>
    <%@include file="./parts/footer.jsp"%>
  </body>
</html>

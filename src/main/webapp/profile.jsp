<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="./parts/meta.jsp"%>
    <%@include file="./parts/head.jsp"%>
    <meta charset="utf-8">
    <title>Perfil - Hurb</title>
  </head>
  <body>
    <%@include file="./parts/navbar.jsp"%>
    <div class="container-fluid bg-light text-dark py-5">
    <% if (user != null) { %>
      <div class="row">
        <div class="col-sm-3">
          <div class="list-group" id="list-tab" role="tablist">
            <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Dashboard</a>
            <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Perfil</a>
            <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Configurações</a>
            <% if ("admin".equals(user.getRole())) {%>
            <a class="list-group-item disabled bg-info" id="list-admin-list" data-toggle="list"role="tab">Administração</a>
            <a class="list-group-item list-group-item-action" id="list-admin-list" data-toggle="list" href="#list-admin" role="tab" aria-controls="settings">Adicionar voo</a>
            <% } %>
          </div>
        </div>
        <div class="col-sm-9">
          <div class="tab-content" id="nav-tabContent">
            <!-- dashboard -->
            <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
              <p class="h3 my-0">Bem-vindo de volta, <%=user.getNome()%>! <span class="text-muted small">É uma boa hora para reservar voos, nao acha? <i class="em em-sunglasses small"></i></span></p>
              <br/>
            </div>
            <!-- end dashboard / start profile -->
            <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
              <div class="row">
                <div class="col-2 py-5 text-center">
                  <p class="h1 text-primary"><i class="fas fa-user-circle"></i></p>
                </div>
                <div class="col-8">
                  <p class="my-0"><span class="font-weight-bold">Nome:</span> <%=user.getNome()%> <%=user.getCognome()%></p>
                  <p class="my-0"><span class="font-weight-bold">Email:</span> <%=user.getEmail()%></p>
                </div>
              </div>
            </div>
            <!-- end orders / start settings -->
            <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list"><%@ include file="./parts/usersettings.jsp" %></div>
            <!-- end settings -->
            <% if ("admin".equals(user.getRole())) {%>
            <!-- start admin -->
            <div class="tab-pane fade" id="list-admin" role="tabpanel" aria-labelledby="list-admin-list">
            	<!-- addflight form -->
            	<%@ include file="./parts/addflight.jsp" %>
            	<!-- end addflight form -->
            </div>
            <!-- end admin -->
            <% } %>
          </div>
        </div>
      </div>
    <%} else { %>
    <p class="h3">Há algo errado!</p>
    <p>Você nao está logado! <i class="em em-confounded small"></i></p>
    <p class="text-muted small">Clique no botão acima para fazer o login!</p>
    <% } %>
    </div>
    <%@include file="./parts/footer.jsp"%>
  </body>
</html>

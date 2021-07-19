<%-- 
    Document   : accueil
    Created on : Oct 11, 2020, 10:39:06 PM
    Author     : maiso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/b9e915e1be.js" crossorigin="anonymous"></script>
        <style><%@include file="/WEB-INF/css/accueil_style.css" %></style>
        <style><%@include file="/WEB-INF/css/modal_style.css" %></style>
        <style><%@include file="/WEB-INF/css/alertMessage_style.css" %></style>
        <title>Accueil</title>
    </head>
    <body>
        <div class="contenu">
           
            <%
                if (request.getAttribute("msg") != null) {

            %> 
            <div  class=" float-center alert alert-<%=request.getAttribute("typemsg").toString().equals("error") ? "danger" : "primary"%>" role="alert">
                <span class="closebtn" onclick="this.parentElement.style.display = 'none';">&times;</span> 
                <%= request.getAttribute("msg")%>
            </div>
            <%
                }%> 
            <div class="titre">
                <span>Memo</span>
                <span>rosemont</span>
            </div>
            <% if (session.getAttribute("e") != null) {%>
            
        
            <%  } else {%>

        <div class="login">
            <a href="#"  role="button"  data-toggle="modal" data-target="#ajouterLoginModal">
            Se connecter</a>
            <a href="creerEtudiant.jsp">S'inscrire</a>
        </div>
        <% }%>
        </div>
        <div class='intro'>
            <h1>À propos de nous?</h1>
            <p>Memorosemont permet à notre clientèle un soulagement quant aux diverses techniques d’apprentissage qui existent.
                Après avoir remarqué des défauts dans ces dernières, notre solution se trouve dans des flashcards. 
                Il est important de dire que ces cartes magiques sont plus que faciles à utiliser. Une interface graphique exemplaire,
                construite à la main, fait le pont entre nos précieux clients et notre technologie qui changera peut-être la donne et saura nous démarquer des autres moutons.</p>
        </div>
        <div class='cards'>
            <h1>Nos flashcards?</h1>
            <h2>Abonnement Régulier</h2>
            <div>
                <img src="ressources/FlashCard.png">
                <img src="ressources/FlashCardYellow.png" >
                <img src="ressources/FlashCardGreen.png" >
                <img src="ressources/FlashCardScarlet.png" >
                <img src="ressources/FlashCardBlue.png" >
            </div>
            <h2>Abonnement Premium</h2>
            <p>Pour nos membres premiums, nous avons une variété de flashcards plus uniques à offrir : </p>
            <div>
                <img src="ressources/FlashCardGold.png" >
                <img src="ressources/FlashCardSilver.png" >
                <img src="ressources/FlashCardNoel.png" >
            </div>
        </div>
                
        <!-- Ajouter login MODAL -->
        <jsp:include page="/WEB-INF/vues/formLogin.jsp"/>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    </body>
    <footer>
        <div>
            &COPY;<%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %> Memorosemont. All Rights Reserved
        </div>
    </footer>
</html>

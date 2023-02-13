<%-- 
    Document   : menu
    Created on : Oct 12, 2020, 7:49:45 PM
    Author     : maiso
--%>
<%@page import="com.modele.entites.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--meta http-equiv="Content-Type" content="text/html; charset=UTF-8"-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/b9e915e1be.js" crossorigin="anonymous"></script>
        <!--Ajout des scripts-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <style><%@include file="/WEB-INF/css/nav_style.css" %></style>
        <style><%@include file="/WEB-INF/css/menu_style.css" %></style>
        <title>JSP Page</title>
    </head>
    <body>
        <% Etudiant e = (Etudiant) request.getAttribute("e");%>
        <%@include file="WEB-INF/vues/inclusions/nav.jsp"%>
        <div class="menu">
            <div class="gauche">

                <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=listerMatieres&idEtudiant=${e.getIdEtudiant()}">Gerer Cartes</a>

                <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=afficherALLFichesEtudiant&idEtudiant=${e.getIdEtudiant()}">Toutes les Fiches</a> 

                <a href="#">Partager</a> 

            </div>
            <div class="droite">                
                <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=afficherMatieresJeu">Jouer</a>            
            </div> 
        </div>
    </body>
</html>

<%-- 
    Document   : menu
    Created on : Oct 12, 2020, 7:49:45 PM
    Author     : maiso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/nav_style.css">
        <link rel="stylesheet" href="../css/menu_style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="nav.html" %>
        <div class="menu">
            <div class="gauche">
                <div>
                <a href="#">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Gerer Cartes
                </a>
                </div>
                <div>
                <a href="#">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Résultats
                </a> 
                </div>
                <div>
                <a href="#">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Partager
                </a> 
                </div>
            </div>
            <div class="droite">
                <div>
                <a href="#">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Jouer
                </a>
                </div>
            </div> 
        </div>
    </body>
</html>

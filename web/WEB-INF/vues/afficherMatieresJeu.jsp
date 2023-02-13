<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="com.modele.entites.Matiere"%>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/b9e915e1be.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <style><%@include file="/WEB-INF/css/nav_style.css" %></style>
        <style><%@include file="/WEB-INF/css/gererMatiere_style.css" %></style>
    </head>
    <body>
        <%@include file="/WEB-INF/vues/inclusions/nav.jsp"%>
        <div align="center"><h2>Veuillez choisir une matière que vous souhaitez étudier.</h2></div>
        <div class="matieresContainer">
            <c:forEach var="matiere" items="${matieres}" varStatus="status">
                <div class="box">
                    <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=jouerParMatiere&idMatiere=${matiere.idMatiere}" class="matiere">${matiere.nomMatiere}</a>                    
                    <span></span>
                </div>
            </c:forEach>
        </div>
    </body>
</html>

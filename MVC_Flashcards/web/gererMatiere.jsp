<%-- 
    Document   : gererMatiere
    Created on : Nov 25, 2020, 1:55:07 AM
    Author     : maiso
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="com.modele.entites.Matiere"%>
<!DOCTYPE html>
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
        <%@include file="WEB-INF/vues/inclusions/nav.jsp"%>
        <form class="modifier" id="input" action="${pageContext.request.contextPath}/ControlleurFrontal?accion=modifierMatiere"
              method="POST" style="display : ${display}">
            <label style="font-weight: bolder;">Nom Matière : ${nomMatiere}</label>
            <input type="text" value="${nomMatiere}" name="nomMatiere">
            <input type="submit" value="Changer Nom">
        </form>
        <div class="matieresContainer">
        
            <c:forEach var="matiere" items="${matieres}" varStatus="status">                
                <div class="box">
                    <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=afficherALLFichesMatiere&idMatiere=${matiere.idMatiere}" class="matiere">${matiere.nomMatiere}</a>                    
                    <span></span>
                    <div>
                        <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=selectMatiere&nomMatiere=${matiere.nomMatiere}&idMatiere=${matiere.idMatiere}" class="bouton"><i class="fas fa-edit"></i></a>                    
                        <a onclick="return confirm('La suppression de la matière ${matiere.nomMatiere} entraînera la perte de toutes ses fiches!');" href="${pageContext.request.contextPath}/ControlleurFrontal?accion=supprimerMatiere&idMatiere=${matiere.idMatiere}" class="bouton"><i class="fas fa-trash"></i></a>
                    </div>
                </div>
            </c:forEach>
            <div class ="box">
                <div>                                       
                    <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=selectionnerMatiere" class="bouton"><i class="fas fa-plus-circle"></i></a>
                </div>
            </div>

        </div>
        
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification utilisateur</title>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <style><%@include file="/WEB-INF/css/modifierUtilisateur_style.css"%></style>
        <style><%@include file="/WEB-INF/css/nav_style.css" %></style>
    </head>
    <body>
        <%@include file="/WEB-INF/vues/inclusions/nav.jsp"%>
        <div class="wrapper">
            <div class="titre">
                Modification des données d'utilisateur<br />
                Rebienvenue, ${e.getIdentifiant().split("@")[0]}
            </div>
            <%
                if (request.getAttribute("erreur") != null) {
                    out.print("<div class=\"erreur\">" + request.getAttribute("erreur") + "</div>");
                } else if (request.getAttribute("valide") != null) {
                    out.print("<div class=\"valide\">Vos informations ont été mises à jour.</div>");
                    request.removeAttribute("valide");
                }
            %>
            <div id="utilisateurSur" class="modal">
                <!-- Contenu du modal -->
                <div class="modal-content">
                    <span class="fermer">&times;</span>
                    <div class="contenuModal">
                        <p>Êtes-vous sûr(e) de vouloir supprimer votre compte?</p>
                        <input name="suppOui" id="suppOui" value="Oui" type="button" class="btn" style="background: black;color:white">
                        <input name="suppNon" id="suppNon" value="Non" type="button" class="btn" style="background: black;color:white">
                    </div>
                </div>

            </div>
            <form action="${pageContext.request.contextPath}/ControlleurFrontal?accion=modifierUtilisateur"
                  method="POST" class="was-validated">
                <div class="form">
                    <div class="input_field">
                        <input name="id" type="text" style="display: none;" disabled class="input" value="${e.getIdEtudiant()}">
                    </div>
                    <div class="input_field">
                        <label>Nom d'utilisateur</label>
                        <input name="username" type="text" disabled class="input" value="${e.getIdentifiant()}">
                    </div>
                    <div class="input_field">
                        <label>Mot de passe</label>
                        <input name="mdp1" type="password" id="mdp1" placeholder="Veuillez saisir votre mot de passe courant" required class="input"><br />
                        <input name="mdp2" type="password" id="mdp2" placeholder="Veuillez saisir un nouveau mot de passe si vous souhaitez le modifier" class="input">
                        <input name="mdp3" type="password" id="mdp3" placeholder="Encore une fois" class="input">
                    </div>
                </div>
                <input name="action" id="modifier" value="Modifier" type="submit" class="bouton">
                <input id="fauxSupprimer" value="Supprimer" type="button" class="bouton">
                <input name="action" id="supprimer" style="display:none;" value="Supprimer" type="submit" class="bouton">
            </form>
            <script>
                var modal = document.getElementById("utilisateurSur");
                var fermer = document.getElementsByClassName("fermer")[0];

                $("#fauxSupprimer").on("click",
                        () => {
                    modal.style.display = "block";
                });

                $("span.fermer").on("click",
                        () => {
                    modal.style.display = "none";
                });

                $("#suppOui").on("click",
                        () => {
                    modal.style.display = "none";
                   document.getElementById("supprimer").click();
                });

                $("#suppNon").on("click",
                        () => {
                    modal.style.display = "none";
                });

                window.onclick = (function (event) {
                    if (event.target === modal) {
                        modal.style.display = "none";
                    }
                });
            </script>
        </div>

    </body>
</html>

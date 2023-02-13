<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
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
        <title>Création de la carte</title>
        <style><jsp:include page="../css/styleFormFiche.css"/></style>
        <script src="https://kit.fontawesome.com/b9e915e1be.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="wrapper">
            <div class="title">
                Création
            </div>
            <form action="${pageContext.request.contextPath}/ControlleurFrontal?accion=ajouterMatiere"
                  method="POST" class="was-validated">
                <div class="form">
                    <div class="input_field">
                        <label>Nom matière</label>
                        <input  type="text" name="nomMatiere" class="input" required>
                    </div>
                    <div class="input_field">
                        <input onclick ="alerteMatiere();" type="submit" value="Créer une matière" class="btn">
                    </div>
                </div>
            </form>
            <form action="${pageContext.request.contextPath}/ControlleurFrontal?accion=insererFiche"
                  method="POST" class="was-validated">
                <div class="form">
                    <div class="input_field">
                        <label>Matière</label>
                        <div class="custom_select">
                            <select name="matiere" required>
                                <option value="">Sélectionner</option>
                                <c:forEach var="matiere" items="${matieres}" varStatus="status">
                                    <option value="${matiere.idMatiere}">${matiere.nomMatiere}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="input_field">
                        <label>Question</label>
                        <textarea name="question" class="textarea" required></textarea>
                    </div>
                    <div class="input_field">
                        <label>Réponse</label>
                        <input type="text" name="reponse" class="input" required>
                    </div>
                    <div class="input_field">
                        <input onclick ="alerteFiche();" type="submit" value="Créer une fiche" class="btn">
                    </div>

                </div>
            </form>
        </div>
        <script>
            function alerteFiche() {
                alert("Votre fiche est créée");
            }
            function alerteMatiere() {
                alert("Votre matière est créée");
            }
        </script>
    </body>
</html>

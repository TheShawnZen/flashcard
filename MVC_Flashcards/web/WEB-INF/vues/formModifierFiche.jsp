<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <style><%@include file="/WEB-INF/css/nav_style.css" %></style>
        <style><%@include file="/WEB-INF/css/fiches_style.css" %></style>
        <script src="https://kit.fontawesome.com/b9e915e1be.js" crossorigin="anonymous"></script>

        <title>Editer Fiche</title>
    </head>
    <body>
        <!--Header-->      
        <jsp:include page="/WEB-INF/vues/inclusions/nav.jsp"/>
        <form action="${pageContext.request.contextPath}/ControlleurFrontal?accion=modifierFiche&idFiche=${fiche.idFiche}"
              method="POST" class="was-validated">


            <section id="details">
                <div class="container container-fiche">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editer Fiche</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="question">Question</label>
                                        <input type="text" class="form-control" name="question"  value="${fiche.texteQuestion}">
                                    </div>
                                    <div class="form-group">
                                        <label for="reponse">Réponse</label>
                                        <input type="text" class="form-control" name="reponse"  value="${fiche.texteReponse}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>

            <!--Boutons pour la navigation dans le formulaire de modification -->
            <jsp:include page="/WEB-INF/vues/inclusions/boutonsNavEditer_GestionFiches.jsp"/>

        </form>


        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>


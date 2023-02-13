<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jouer</title>
        <style><%@include file="/WEB-INF/css/nav_style.css" %></style>        
        <style><%@include file="/WEB-INF/css/jouer_style.css" %></style>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/b9e915e1be.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="js/nanobar.min.js"></script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/vues/inclusions/nav.jsp"/>
        <div id="progression"></div>
        <div id="bonnesReponses" style="display: none; background:green; color:white; width: 100%; align-items: center; text-align: center;">
        </div>
        <div id="verification" style="display: none;">
            <table id="tableVerification">
                <tr>
                    <th>Question</th>
                    <th>Réponse</th>
                    <th>Votre réponse</th>
                    <th>Cochez cette case si vous avez eu la bonne réponse</th>
                </tr>
            </table>
            <a href="#" id="autreBtnSuivant" class="suivant bouton" style="display: flex; align-self: center; max-width: 70%; text-align: center; margin-left: 0;">Suivant</a>
        </div>
        <div id="zoneJeu">
            <div class="conteneur">
                <div id="carte">
                    <img src="ressources/FlashCardNoel.png" >
                    <div class="devant">
                        <span class="question"></span>
                        <span class="inputReponse">
                            <input type="text" id="inputReponse" autofocus>
                        </span>
                        <div class="btns" id="boutons">
                            <a href="#" id="btnPrécédent" class="précédent bouton">Précédent</a>
                            <a href="#" id="btnSuivant" class="suivant bouton">Suivant</a>
                        </div>
                    </div>
                </div>
                <div class="total">
                    <span class="questionSurTotal"></span>
                </div>
            </div>
            <div id="conseil" style="bottom: 0; align-self: center; text-align: center; margin-top: 8.5%;">
                <p>
                    *Vous pouvez utiliser les flèches (gauche ← et droite →) 
                    de votre clavier pour jouer,<br />ainsi que la touche 
                    "entrée" (question suivante) et "fin" 
                    (passer à la vérification des réponses)
                </p>
                <a href="#" id="compris" class="bouton" style="font-size: calc(8px + 0.6vw)">J'ai compris</a>
            </div>
            <div align="center" style="margin-top: 50px;"><a href="#" id="solutionnaire" class="bouton" style="font-size: calc(8px + 0.6vw);position:absolute;top:87vh;left:88vh;">Aller au solutionnaire</a></div>
        </div>
        <script>
            const options = {
                classname: 'barreProgression',
                id: 'barreProgression',
                target: document.getElementById('progression')
            };
            const nanobar = new Nanobar(options);
            const carte = $("#carte");
            const question = $("span.question");
            const réponse = $("#inputReponse");
            const btnPrécédent = $("#btnPrécédent");
            const btnSuivant = $("#btnSuivant");
            const divVérification = $("#verification");
            const tableVérification = $("#tableVerification");
            const bonnesRéponses = $("#bonnesReponses");
            const autreBtnSuivant = $("#autreBtnSuivant");
            const btnCompris = $("#compris");
            const conseil = $("#conseil");
            const btnFin = $("#solutionnaire");
            var questions = [];
            var pourcentageQuestions = 0.0;
            var pourcentageCourant = 0.0;
            <c:forEach items="${fiches}" var="fiche" >
            var objTmp = {};
            objTmp.question = `${fiche.texteQuestion}`.replace(':', '');
            (objTmp.question).charAt(0).toUpperCase() + objTmp.question.slice(1);
            objTmp.réponse = `${fiche.texteReponse}`;
            (objTmp.réponse).charAt(0).toUpperCase() + objTmp.réponse.slice(1);
            objTmp.réponseUtilisateur = "";
            questions.push(objTmp);
            </c:forEach>
            pourcentageQuestions = 100 / (questions.length);
            var index = 0;

            $("span.questionSurTotal").text((index + 1) + " / " + questions.length);
            question.text(questions[index].question);

            btnPrécédent.on("click", () => {
                index > 0 ? --index : 0;
                questions[index + 1].réponseUtilisateur = ((réponse.val() !== ""
                        && réponse.val() !== questions[index + 1].réponseUtilisateur)
                        ? réponse.val() : questions[index + 1].réponseUtilisateur);
                réponse.val(questions[index].réponseUtilisateur);
                question.text(questions[((index) >= questions.length ? questions.length : index)].question);
                $("span.questionSurTotal").text((index + 1) + " / " + (questions.length));
                carte.toggleClass("transformation");
                nanobar.go(pourcentageCourant = index<2?0:pourcentageCourant-=pourcentageQuestions);
            });

            btnSuivant.on("click", () => {
                if (btnSuivant.text() === "Partager") {
                    // TODO: facebook share embed
                } else if ((index) >= (questions.length - 1)) {
                    questions[index].réponseUtilisateur = réponse.val();
                    btnSuivant.text("Voir les résultats");
                    btnSuivant.css("background", "orange");
                    $("#zoneJeu").hide();
                    var html = '';
                    for (var i = 0; i < questions.length; i++)
                        html += '<tr><td>' + questions[i].question + '</td><td>'
                                + questions[i].réponse + '</td><td>'
                                + questions[i].réponseUtilisateur + '</td><td>'
                                + "<input type=\"checkbox\"></td></tr>";
                    $('#tableVerification tr').first().after(html);
                    nanobar.go(100);
                    divVérification.show();
                    $("#btnSuivant").show();
                    $("#btnPrécédent").hide();
                } else
                    suivant();
            });

            autreBtnSuivant.on("click", () => {
                var bonnesRéponsesNombre = $('#tableVerification').find('input[type=checkbox]:checked').length;
                divVérification.hide();
                bonnesRéponses.append("<span>Vous avez " + bonnesRéponsesNombre
                        + (bonnesRéponsesNombre === 1 ? " bonne réponse!" : " bonnes réponses")
                        + "</span>");
                btnSuivant.text("Partager");
                bonnesRéponses.show();
            });

            btnCompris.on("click", () => {
                conseil.hide();
            });
            
            btnFin.on("click", ()=>{
                index = questions.length - 1;
                btnSuivant.click();
            });

            $(document).keydown((e) => {
                const touche = e.which;
                if (touche === 13 || touche === 39) {  // entrée ou flèche droite
                    btnSuivant.click();
                    return false;
                } else if (touche === 37) { // flèche gauche
                    btnPrécédent.click();
                    return false;
                } else if (touche === 35) { // end / fin
                    index = questions.length - 1;
                    btnSuivant.click();
                }
            });

            const suivant = (() => {
                ++index;
                réponse.focus();
                $("span.questionSurTotal").text((index + 1) + " / " + (questions.length));
                question.text(questions[((index) >= questions.length ? questions.length : index)].question);
                questions[index - 1].réponseUtilisateur = ((réponse.val() !== ""
                        && réponse.val() !== questions[index - 1].réponseUtilisateur)
                        ? réponse.val() : questions[index - 1].réponseUtilisateur);
                réponse.val(questions[index].réponseUtilisateur);
                carte.toggleClass("transformation");
                nanobar.go(pourcentageCourant += pourcentageQuestions);
            });
        </script>
    </body>
</html>

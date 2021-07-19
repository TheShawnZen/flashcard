<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <style><jsp:include page="../css/styleFormEtudiant.css"/></style> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
        <script src="https://kit.fontawesome.com/b9e915e1be.js" crossorigin="anonymous"></script>
        <title>Création de la carte</title>
    </head>
    <body>
       <form id="signupForm" action="${pageContext.request.contextPath}/ControlleurFrontal?accion=ajouterEtudiant"
              method="POST" class="was-validated">
            <div class="wrapper">
                <div class="title">
                    Création du compte
                </div>
                <div class="form">
                    <div class="input_field">
                        <label>Email</label>
                        <input name="email" id="email" type="email" class="input" placeholder="Email"/>
                        
                    </div>
                    <div class="input_field">
                        <label>Mot de passe</label>
                        <input name="password" id="password" type="password" class="input" placeholder="Mot de passe"/>
                    </div>
                    <div class="input_field">
                        <label>Confirmation du mot de passe</label>
                        <input name="confirm" id="confirm" type="password" class="input" placeholder="Confirmez mot de passe"/>
                    </div>
                    <div class="input_field">
                        <input onclick ="alerteInscription();" type="submit" value="Créer" id="submit"  class="btn"/>
                    </div>
                </div>
            </div>
        </form>
        <script>
            function alerteInscription(){
                alert("Vous êtes maintenant inscrit.\n Veuillez vous connecter.");
            }
        </script>
        <script><jsp:include page="../../js/validationFormEtudiant.js"/></script>
    </body>
</html>

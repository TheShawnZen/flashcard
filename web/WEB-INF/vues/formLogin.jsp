<div class="modal fade" id="ajouterLoginModal" tabindex="-1" role="dialog" aria-hidden="true" >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Se connecter</h5> 
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>

            <form action="${pageContext.request.contextPath}/ControlleurFrontal?accion=login"
                  method="POST" class="was-validated">

                <div class="modal-body">
                    <div class="form-group">
                        <label for="email">Adresse Courriel</label>
                        <input type="email" class="form-control" name="identifiant" placeholder="exemple@email.com" required autofocus>
                        <div class="invalid-feedback">Veuillez compléter ce champ.</div>

                    </div>
                    <div class="form-group">
                        <label for="psw">Mot de passe</label>
                        <input type="password" class="form-control" name="motPasse" required>

                        <div class="invalid-feedback">Veuillez compléter ce champ.</div>
                    </div>

                </div>
                <div class="modal-footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-6">
                                <button class="btn btn-primary" type="submit" >Se connecter</button>
                            </div>
                        </div>


                    </div>

                </div>
            </form>




        </div>
    </div>
</div>

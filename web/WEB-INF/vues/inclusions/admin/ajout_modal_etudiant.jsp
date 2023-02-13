<!-- Ajout Modal HTML -->
<div id="addEtudiant" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="POST" action="#" >
                <div class="modal-header">						
                    <h4 class="modal-title">Ajouter Étudiant</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>Identifiant</label>
                        <input type="email" class="form-control" name="identifiant" required>
                    </div>
                    <div class="form-group">
                        <label>Mot de Passe</label>
                        <input type="password" class="form-control" name="motPasse" required>
                    </div>                 					
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
                    <input type="submit" class="btn btn-success" value="Ajouter">
                </div>
            </form>
        </div>
    </div>
</div>
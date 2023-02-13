<!-- Edit Modal HTML -->
<div id="editMatiere" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form  method="POST" action="#">
                <div class="modal-header">						
                    <h4 class="modal-title">Formulaire de modification</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>id_matiere</label>
                        <input type="number" class="form-control" name="idMatiere" required>
                    </div>
                    <div class="form-group">
                        <label>nom_matiere</label>
                        <input type="text" class="form-control" name="nomMatiere" required>
                    </div>
                    <div class="form-group">
                        <label>id_etudiant</label>
                        <input type="number" class="form-control" name="idEtudiant" required>
                    </div>          

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
                    <input type="submit" class="btn btn-info" value="Sauvegarder">
                </div>
            </form>
        </div>
    </div>
</div>

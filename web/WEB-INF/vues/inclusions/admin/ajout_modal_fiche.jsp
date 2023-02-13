<!-- Ajout Modal HTML -->
<div id="addFiche" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="POST" action="#" >
                <div class="modal-header">						
                    <h4 class="modal-title">Ajouter Fiche</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>id_matiere</label>
                        <input type="number" class="form-control" name="idMatiere" required>
                    </div>
                    <div class="form-group">
                        <label>id_etudiant</label>
                        <input type="number" class="form-control" name="idEtudiant" required>
                    </div>  
                    <div class="form-group">
                        <label>texte_question</label>
                        <input type="text" class="form-control" name="texteQuestion" required>
                    </div> 
                    <div class="form-group">
                        <label>texte_reponse</label>
                        <input type="text" class="form-control" name="texteReponse" required>
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
<%-- 
    Document   : listEtudiants
    Created on : 2020-11-30, 13:55:45
    Author     : Nadia Garcia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section id="fiches">

    <div class="container fiche"   >
        <div class="table-responsive fiche">
            <div class="table-wrapper fiche">
                <div class="table-title fiche">
                    <div class="row">
                        <div class="col-xs-6">
                            <h2>Gestion <b>Fiches</b></h2>
                        </div>
                        <div class="col-xs-6">
                            <a href="#addFiche" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Ajouter fiche</span></a>

                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover fiche" id="tb_fiche" >
                    <thead>

                        <tr> 
                            <th>id_fiche</th>
                            <th>id_matiere</th>
                            <th>id_etudiant</th>
                            <th>texte_question</th>
                            <th style='width: 200px'>texte_reponse</th>
                            <th>Actions</th>
                        </tr>

                    </thead>
                    <tbody>
                        <c:forEach var="fiche" items="${fiches}" >
                            <tr>
                                <td>${fiche.idFiche}</td>
                                <td>${fiche.idMatiere}</td>
                                <td>${fiche.idEtudiant}</td>
                                <td>${fiche.texteQuestion}</td>
                                <td>${fiche.texteReponse}</td>
                                <td>
                                    <a href="#editFiche" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="modal" title="Modifier">&#xE254;</i></a>
                                    <a href="#deleteModalFiche" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="modal" title="Effacer">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
           
            </div>
        </div>        
    </div>
  
    
</section>  
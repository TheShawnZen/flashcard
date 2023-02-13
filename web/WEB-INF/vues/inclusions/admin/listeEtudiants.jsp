<%-- 
    Document   : listEtudiants
    Created on : 2020-11-30, 13:55:45
    Author     : Nadia Garcia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="etudiants">
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Gestion <b>Etudiants</b></h2></div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-info add-new" data-toggle="modal" href="#addEtudiant"><i class="fa fa-plus"></i>Ajouter étudiant</button>
                    </div>
                </div>
            </div>
            <table class="table table-bordered" id='tb_etudiant'>
                <thead>
                    <tr>
                        <th>id_etudiant</th>
                        <th>identifiant</th>
                        <th>mot_passe</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="etudiant" items="${etudiants}" >
                        <tr> 
                            <td>${etudiant.idEtudiant}</td>
                            <td>${etudiant.identifiant}</td>
                            <td>${etudiant.motPasse}</td>
                            <td>
                                <a href="#" class="add" title="Sauvegarder changements" data-toggle="modal"><i class="material-icons">&#xE03B;</i></a>
                                <a href="#editEtudiant" class="edit" title="Modifier" data-toggle="modal"><i class="material-icons">&#xE254;</i></a>
                                <a href="#deleteModalEtudiant" class="delete" title="Effacer" data-toggle="modal"><i class="material-icons">&#xE872;</i></a>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>
    </div>     
</section>  
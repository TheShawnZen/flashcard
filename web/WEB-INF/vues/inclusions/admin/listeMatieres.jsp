<%-- 
    Document   : listeMatieres
    Created on : 2020-11-30, 13:56:11
    Author     : Nadia Garcia
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="etudiants">
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Gestion <b>Matière</b></h2></div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-info add-new" data-toggle="modal" href="#addMatiere"><i class="fa fa-plus"></i>Ajouter étudiant</button>
                    </div>
                </div>
            </div>
            <table class="table table-bordered" id="tb_matiere">
                <thead>
                    <tr>
                        <th>id_matiere</th>
                        <th>nom_matiere</th>
                        <th>id_etudiant</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="matiere" items="${matieres}" >
                        <tr> 
                            <td>${matiere.idMatiere}</td>
                            <td>${matiere.nomMatiere}</td>
                            <td>${matiere.idEtudiant}</td>
                            <td>
                                <a href="#" class="add" title="Sauvegarder changements" data-toggle="modal"><i class="material-icons">&#xE03B;</i></a>
                                <a href="#editMatiere" class="edit" title="Modifier" data-toggle="modal"><i class="material-icons">&#xE254;</i></a>
                                <a href="#deleteModalMatiere" class="delete" title="Effacer" data-toggle="modal"><i class="material-icons">&#xE872;</i></a>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>
    </div>     
</section>  
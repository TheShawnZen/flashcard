<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section id="fiches">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <!--DÉBUT de liste déroulante-->
                    <div class="container mt-3">
                        <h2>Recherche de fiches par matière</h2>
                        <form action="${pageContext.request.contextPath}/ControlleurFrontal?accion=filtrerNomMatiere" method="POST">
                            <select  class="form-control mb-3" name="nomMatiere">
                                <option value="all">Toutes les matières</option>
                                <c:forEach var="matiere" items="${matieres}" varStatus="status">
                                    <option value="${matiere.nomMatiere}"> ${matiere.nomMatiere} </option>
                                </c:forEach>
                            </select>
                            <input type="submit" class="btn btn-primary" value="Chercher fiches" />
                        </form>
                    </div>
                    <!--FIN liste déroulante-->
                    <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=selectionnerMatiere" class="btnAdd">
                        <i class="far fa-plus-square"></i> 
                    </a>
                    <table class="table Btop">
                        <thead class="thead-dark">
                            <tr>
                                <th>Nº </th>
                                <th>Question</th>
                                <th>Réponse</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="fiche" items="${fiches}" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${fiche.texteQuestion}</td>
                                    <td>${fiche.texteReponse}</td>
                                    <td><a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=editerFiche&idFiche=${fiche.idFiche}"
                                           class="btn btn-secondary bouton">
                                            <i class="far fa-edit"></i>
                                        </a>

                                    </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ControlleurFrontal?accion=supprimerFiche&idFiche=${fiche.idFiche}"
                                           class="btn btn-secondary bouton">
                                            <i class="far fa-trash-alt"></i> 
                                        </a>
                                    </td>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</section>


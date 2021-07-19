<%-- 
    Document   : admin
    Created on : 2020-11-30, 11:53:24
    Author     : Nadia Garcia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
    <head>   
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Bootstrap."> 
        <title>Adminsitration | MemoRosemont</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
        <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style><%@include file="WEB-INF/vues/inclusions/admin/css_admin/style_admin.css" %></style>
</head>



<body>
    <!--Admin Header-->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/header.jsp"/>

    <!--Liste Etudiants -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/listeEtudiants.jsp"/>

    <!--Liste Matieres -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/listeMatieres.jsp"/>

    <!--Liste Fiches -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/listeFiches.jsp"/>
    
    <!--Modal Effacer Etudiant-->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/delete_modal_etudiant.jsp"/>
     <!--Modal Effacer Fiche-->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/delete_modal_fiche.jsp"/>
     <!--Modal Effacer Matiere-->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/delete_modal_matiere.jsp"/>
     <!--Modal Ajouter Etudiant -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/ajout_modal_etudiant.jsp"/>
     <!--Modal Ajouter Fiche -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/ajout_modal_fiche.jsp"/>
     <!--Modal Ajouter Matiere -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/ajout_modal_matiere.jsp"/>
     <!--Modal Edit Etudiant -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/edit_modal_etudiant.jsp"/>
     <!--Modal Edit Fiche -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/edit_modal_fiche.jsp"/>
     <!--Modal Edit Matiere -->
    <jsp:include page="/WEB-INF/vues/inclusions/admin/edit_modal_matiere.jsp"/>

    <!--js admin -->
    <script> <jsp:include page="WEB-INF/vues/inclusions/admin/js_admin/js_admin.js"/></script>
    
    
</body>
</html>

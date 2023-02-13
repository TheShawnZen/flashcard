

<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/b9e915e1be.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <style><%@include file="/WEB-INF/css/nav_style.css" %></style>
        <style><%@include file="/WEB-INF/css/fiches_style.css" %></style>
        <title>Gérer Fiches</title>
    </head>
    <body>
        <!--Header-->
        <%@include file="WEB-INF/vues/inclusions/nav.jsp"%>
        <!--Liste de Fiches-->
        
        <jsp:include page="WEB-INF/vues/inclusions/listeFiches_GestionFiches.jsp"/>
        

</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <style><%@include file="/WEB-INF/css/nav_style.css" %></style>
        <meta charset="utf-8">
        <title>Création</title>
    </head>
    <body>
         <%@include file="WEB-INF/vues/inclusions/nav.jsp"%>
        <jsp:include page="WEB-INF/vues/formAjouter.jsp"/>
    </body>
</html>
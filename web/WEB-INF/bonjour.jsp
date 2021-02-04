<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Test</title>
</head>
<body>
     <p>Bonjour ${ auteurs[0].prenom } ${ auteurs[0].nom }</p>
     <p>${ auteurs[0].actif ? 'Vous êtes très actif !' : 'Vous êtes inactif !' }</p><br>

    <c:forEach items="${auteurs}" var="titre" varStatus="status">
        <p>N°<c:out value="${ status.count }" /></p>
        <p>Bonjour ${ titre.prenom } ${ titre.nom }</p>
        <p>
            <c:if test="${ titre.actif}">Vous etes tres actif</c:if>
            <c:if test="${ !titre.actif}">Vous êtes inactif </c:if>
        </p>
    </c:forEach>
</body>
</html>
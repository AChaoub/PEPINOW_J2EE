<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/3/2021
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>
<main>
    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light" href="#">
        <div class="col-md-5 p-lg-5 mx-auto my-5">
            <h1 class="display-4 fw-normal">Punny headline</h1>
            <p class="lead fw-normal">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple’s marketing pages.</p>
            <form action="chercher" Method="get">
                <div class="input-group">
                    <input name="inputCherche" type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
                           aria-describedby="search-addon" />
                    <button type="submit" class="btn btn-outline-primary">search</button>
                </div>
            </form>

            <br>
            <form action="bonjour" method="get">
                <button type="submit" class="btn btn-outline-secondary">Gestion CRUD</button>
            </form>
        </div>

    </div>

    <c:forEach items="${plantes}" var="plante" varStatus="status">
        <c:if  test = "${status.count%2==1}">
            <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
                <div class="my-3 py-3">
                    <h2 class="display-5">${ plante.description } </h2>
                    <p class="lead">"${ plante.prix}"</p>
                </div>
                <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                    <img src="${pageContext.request.contextPath}/images/Pepi1.jpg" alt="Impossible" width="100%" height="auto"/></div>
            </div>
            </div>
        </c:if>
        <c:if  test = "${status.count%2==0}">
            <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                <div class="my-3 p-3">
                    <h2 class="display-5">${ plante.description }</h2>
                    <p class="lead">${ plante.prix} DHS</p>
                </div>
                <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                    <img src="img/pepi1.webp" alt="Impossible" width="100%" height="auto"/></div>
            </div>
            </div>
        </c:if>
    </c:forEach>
</main>



</main>
</body>
</html>

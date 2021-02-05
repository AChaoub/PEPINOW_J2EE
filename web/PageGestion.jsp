<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="CHAOUB">
    <meta name="generator" content="Hugo 0.79.0">
    <title>PEPINIERE</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
    <script>
        function visible(){
            var PageConn = document.getElementById("sincrire");
            PageConn.style.display ="block";
            window.location.href="#"
        }
        function cacherConn(){
            var PageConn = document.getElementById("sincrire");
            PageConn.style.display ="none";
        }
        function cacherValider(){
            var PageConn = document.getElementById("POPUP");
            PageConn.style.display ="none";
        }
        function visible1(){
            var PageConn = document.getElementById("modif");
            PageConn.style.display ="block";
            window.location.href="#"
        }
        function cacherConn2(){
            var PageConn = document.getElementById("modif");
            PageConn.style.display ="none";
        }
        function cacherValider2(){
            var PageConn = document.getElementById("POPUP");
            PageConn.style.display ="none";
        }

    </script>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        #AjoutBTN{
            display: flex;
            justify-items: center;
            align-content: center;
            height : 255px;
            width: 430px;

        }
    </style>
    <style>
        .sincrire {
            display: none;
            width: 100%;
            height: 500%;
            background-color: rgba(0, 0, 0, 0.808);
            position: absolute;
            top: 0;
            z-index: 88;
        }

        .sincrire .logoInscrip {
            width: 60%;
            height: 100px;
            background-color: black;
            margin-left: 20%;
            margin-top: 7.5%;
        }

        .sincrire .logoInscrip img {
            margin-left: 5%;
            width: 40%;
            height: 100px;
            float: left;
        }

        .sincrire .logoInscrip a {
            font-size: 20px;
            font-family: "Bebas Neue";
            margin-left: 43%;
            color: #f7f7f7;
            margin-top: 90px;
            list-style-type: none;
            text-decoration: none;
            cursor: pointer;
        }

        .sincrire .Inscrip {
            width: 60%;
            height: 400px;
            margin-left: 20%;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: horizontal;
            -webkit-box-direction: normal;
            -ms-flex-direction: row;
            flex-direction: row;
            -ms-flex-wrap: nowrap;
            flex-wrap: nowrap;
            background-color: white;
        }

        .sincrire .Inscrip .pan1 {
            width: 100%;
            background-color: white;
        }

        .sincrire .Inscrip .pan1 p {
            margin-left: 10%;
            font-size: 18px;
            font-family: "Bebas Neue";
            margin-left: 47%;
        }

        .sincrire .Inscrip .pan1 input {
            margin-left: 10%;
            width: 25%;
            height: 20px;
            font-size: 14px;
            font-family: "Bebas Neue";
            margin-left: 39%;
        }

        .sincrire .Inscrip .pan1 .SeConn {
            color: #f7f7f7;
            width: 10%;
            height: 40px;
            border-radius: 5px;
            background-color: black;
            font-family: "Bebas Neue";
            font-size: 15px;
            border-style: none;
            cursor: pointer;
            margin-left: 46%;
        }
        .blank {
            width: auto;
            height: 20px;
        }
    </style>
</head>
<body>
<header>
    <div class="bg-dark collapse" id="navbarHeader" style="">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-7 py-4">
                    <h4 class="text-white">About</h4>
                    <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
                </div>
                <div class="col-sm-4 offset-md-1 py-4">
                    <h4 class="text-white">Contact</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white">Follow on Twitter</a></li>
                        <li><a href="#" class="text-white">Like on Facebook</a></li>
                        <li><a href="#" class="text-white">Email me</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="#" class="navbar-brand d-flex align-items-center">
                <img src="${pageContext.request.contextPath}/images/logo.png" width="80px" height="60px">
                <strong> PENINOW </strong>
            </a>
            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
</header>
<main>
    <section class="py-5 text-center container">
        <div class="row py-lg-5" style="background-image: url('./images/Couverture.jpg');background-size: contain;background-repeat: no-repeat;width: 100%;height: auto;">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">PEPINOW</h1>
                <p class="lead text-muted">Pépinière familiale au cœur de votre région. Profitez de nos conseillers passionnés. Jardinerie sans Pesticide. Expéditions les Mardis. Types: Cornus, Viburnum, Hamamelis.</p>
            </div>
        </div>
    </section>
    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <c:forEach items="${plantes}" var="plante" varStatus="status">
                    <div class="col"  >
                        <div class="card shadow-sm">
                            <img src="images/Pepi${status.count}.webp" width="100%" height="225px" alt="changement images non valide"/>
                            <div class="card-body">
                                <p class="card-text"><c:out value="${plante.getDescription()}"/> </p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <form action="recup" method="get">
                                            <button type="Submit"  name="modif_Val" value="${plante.id}" class="btn btn-sm btn-outline-secondary"  > Modifier</button>
                                        </form>
                                        <form action="supp" method="get">
                                            <button type="Submit" name="supp_Val" value="${plante.id}" class="btn btn-sm btn-outline-secondary">Supprimer</button>
                                        </form>

                                    </div>
                                    <small class="text-muted"> ${plante.prix} Dhs </small>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="col" >
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group" id="AjoutBTN" >
                                    <button type="button"  id="btn" class="btn btn-sm btn-outline-secondary" onclick="visible()">AjouterPlantes</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sincrire" id="sincrire">
        <div class="logoInscrip">
            <img src="images/logo.png" alt="" width="100" height="auto">
            <a href="javascript:cacherConn()">FERMER ⤫</a>
        </div>
        <form action="ajouter" method="post">
            <div class="Inscrip">
                <div class="pan1">
                    <h1 style="text-align: center">AJOUTER PLANTE </h1>
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <p>Description Plante:</p>
                    <input type="text" class="P" name="nom" value="">
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <p>Prix Plante:</p>
                    <input type="text" class="P" name="prenom">
                    <br><br><br>
                    <div ><input class="SeConn" id="SeConn" type="submit" value="AJOUTER" ></div>
                </div>
            </div>
        </form>

    </div>
    <div class="sincrire" id="modif">
        <div class="logoInscrip">
            <img src="images/logo.png" alt="" width="100" height="auto">
            <a href="javascript:cacherConn2()">FERMER ⤫</a>
        </div>
        <form action="modifier" method="post">
            <div class="Inscrip">
                <div class="pan1">
                    <h1 style="text-align: center"> MODIFIER PLANTE </h1>
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <p>Description Plante:</p>
                    <input type="text" class="P" name="nom_modif" >
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <p>Prix Plante:</p>
                    <input type="text" class="P" name="prenom_modif">
                    <br><br><br>
                    <div ><input class="SeConn" id="Modifier" type="submit" value="MODIFIER" ></div>
                </div>
            </div>
        </form>

    </div>
</main>
<footer class="text-muted py-5">
    <div class="container">
        <p class="float-end mb-1">
            <a href="#">Back to top</a>
        </p>
        <p class="mb-1">Album example is © Bootstrap, but please download and customize it for yourself!</p>
        <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.0/getting-started/introduction/">getting started guide</a>.</p>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>

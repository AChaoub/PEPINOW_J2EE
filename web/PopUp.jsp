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


        <form action="modifier" method="post">
            <div class="Inscrip">
                <div class="pan1">
                    <h1 style="text-align: center"> MODIFIER PLANTE </h1>
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <p>Description Plante:</p>
                    <input  type="hidden" class="P" name="id_modif" value="${planteX.id}" >
                    <input type="text" class="P" name="description_modif" value="${planteX.description}" >
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <p>Prix Plante:</p>
                    <input type="text" class="P" name="prix_modif" value="${planteX.prix}">
                    <br><br><br>
                    <div ><input class="SeConn" id="Modifier" type="submit" value="MODIFIER" ></div>
                </div>
            </div>
        </form>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>

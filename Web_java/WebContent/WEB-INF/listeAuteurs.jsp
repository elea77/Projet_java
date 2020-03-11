<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Java Web</title>
		<!-- Titres -->
		<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&display=swap" rel="stylesheet">
		<!-- Navbar -->
 		<link href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap" rel="stylesheet"> 
	</head>
	<body>	
		<!-- Navbar -->
		<div id="navbar">
			<div id="gauche">
				<a href="http://localhost:8080/Web_java/">Blog</a>
			</div>
			<div id="droite">
				<a href="http://localhost:8080/Web_java/Articles">Articles</a>
				<a href="http://localhost:8080/Web_java/ListeAuteurs">Auteurs</a>
			</div>
		</div>
        <br><br>
        <h3 class="titre_page">Liste des Auteurs</h3>
        <br><br><br>
        <div id="grid">
            <br>
            <div>
                <h1>Auteurs</h1>
                <c:forEach items="${article}" var="article">
                    <p class="donnees"><c:out value="${ article.getAuteur() }"/></p>
                </c:forEach> 
            </div>
            <div>
                <h1>Titres des articles</h1>
                <c:forEach items="${article}" var="article">
                        <p class="donnees"><c:out value="${ article.getTitre() }"/></p>
                </c:forEach> 
            </div>
            <br>
        </div>
    	<br><br>
    </body>
     
<style>

body {
    background-size: cover;
    background-repeat: no-repeat;
    background-image: url('https://cdn.pixabay.com/photo/2018/03/26/06/20/desktop-3261768_1280.jpg');
    background-attachment: fixed;
}

#grid {
    display: grid;
    grid-template-columns: 14% 36% 36% 14%;
    text-align: center;
}

#grid h1 {
    color: rgb(1, 67, 248);
}

.donnees {
    font-size: 150%;
}

h3 {
	text-align: center;
	font-size: 220%;
	margin: 0;
}

.titre_page {
	font-family: 'Libre Baskerville', serif;   
}

#navbar {
	width: 100%;
	height: 50px;
	display: grid;
	grid-template-columns: 50% 50%;
	margin: 0;
	border-bottom: 1px solid grey;
	font-family: 'Lato', sans-serif;  
	font-weight: bold;
}

#navbar a {
	text-decoration: none;
	color: black;
}

#navbar a:hover {
	text-decoration: underline;
	color: #004ffa;
}


#gauche {
	display: inline-flex;
	justify-content: start;
	align-items: center;
    position: relative;
    margin-left: 15%;
    font-size: 130%;
}

#droite {
	display: inline-flex;
    justify-content: space-around;
    align-items: center;
    position: relative;
    font-size: 110%;
}


* {
    margin: 0;
    padding: 0;
}



</style>


</html>

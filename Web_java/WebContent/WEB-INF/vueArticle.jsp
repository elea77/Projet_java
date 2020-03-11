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
		<br>
		<h3 class="titre_page">Article</h3>
		<br>
		<div id="billet">
			<div class="top_article">
				<div>
					<img src="${ article.getImage() }" id="image">
				</div>
				<div>
					<p class="date">${ article.getDate() }</p>
					<h2 class="titre">${ article.getTitre() }</h2>
					<h3 class="auteur">${ article.getAuteur() }</h3><br><br>
					<p style="margin-right: 1%;">${ article.getResume() }</p>
				</div>
			</div>
			<div class="resume">
				<p>${ article.getTexte() }</p><br>
				<a href="http://localhost:8080/Web_java/ModifArticle?id_article=${article.getId_article()}" class="bouton">Modifier l'article</a>
			</div>
			
       	</div>
	</body>
	
	
<style>

body {
	margin: 0;
	padding: 0;
	background-image: url('https://cdn.pixabay.com/photo/2018/04/03/23/24/composition-3288397_1280.jpg');
 	background-size: cover;
    background-repeat: no-repeat;
	background-attachment: fixed;
}

h2 {
	text-align: center;
	font-size: 190%;
	margin: 0;  
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



#billet {
	margin-left: 12%;
	margin-right: 12%;
	border: 2px solid;
	border-color: black;
	border-radius: 10px;
	background-color: white;
	box-shadow: 6px 5px 5px grey;
	margin-block-end: 3%;
}


.top_article {
	display: grid;
	grid-template-columns: 35% 65%;
}

.top_article img {
	margin-top: 3%;
	margin-left: 3%;
}

.titre {
	font-size: 180%;	
	margin-top: 9%;
	margin-block-end: 0;
}

.auteur {
	font-size: 130%;
	font-style: italic;
	margin-top: 3%;
	margin-block-end: 0;
}

.date {
	float: right;
	margin-top: 1%;
	margin-right: 1%;
}


.resume {
 	margin-left: 1%; 
 	margin-right: 1%; 
 	font-size: 110%; 

}

h4 {
	text-align: center;
	font-size: 130%;
}

#image {
	width:90%;
  	height:90%;
  	display:block;
}


.bouton {
 	box-shadow: inset 0px 1px 0px 0px #3985B1; 
    background-color: #216288; 
    border: 1px solid #17445E; 
    display: inline-block; 
    cursor: pointer; 
    color: #FFFFFF;      
    padding: 8px 18px; 
    text-decoration: none; 
    font: 12px Arial, Helvetica, sans-serif; 
	margin-block-end: 1%;
}

</style>

</html>


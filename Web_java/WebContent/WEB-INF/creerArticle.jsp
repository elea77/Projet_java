<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html SYSTEM "about:legacy-compat">
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
		<h3 class="titre_page">Créer un article</h3>
        <form class="form-style-9" action="" method="post">
            <ul>
                <li> 
                     <input type="text" name="titre" class="field-style field-split align-left" placeholder="Titre" maxlength="50"  required/> 
                     <input type="text" name="auteur" class="field-style field-split align-right" placeholder="Auteur" maxlength="35"  required/> 
                </li>
                <li> 
                    <textarea name="resume" class="field-style" placeholder="Résumé" id="resume" maxlength="255" required></textarea> 
                </li> 
                <li> 
                    <textarea name="texte" class="field-style" placeholder="Texte" id="texte" required></textarea> 
                </li> 
                <li>
                	<input type="text" name="image" class="field-style field-full align-none" placeholder="URL image" maxlength="255"  required/> 
                </li>
                <li>
                    <input type="submit" name="CreerArticle" value="Créer l'article" />
                </li>
                
            </ul>
        </form>
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



#article {
	margin-left: 10%;
	margin-right: 10%;
	border: 2px solid;
	border-color: black;
	border-radius: 10px;
	background-color: white;
	box-shadow: 6px 5px 5px grey;
	margin-block-end: 5%;
}


.form-style-9{
	max-width: 800px;
	background: #FAFAFA;
	padding: 30px;
	margin: 30px auto;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 3px solid black;
}

.form-style-9 ul{
	padding:0;
	margin:0;
	list-style:none;
}
.form-style-9 ul li{
	display: block;
	margin-bottom: 10px;
	min-height: 35px;
}
.form-style-9 ul li  .field-style{
	box-sizing: border-box; 
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; 
	padding: 8px;
	outline: none;
	border: 1px solid #B0CFE0;
    font-size: 100%;

}.form-style-9 ul li  .field-style:focus{
	box-shadow: 0 0 5px #B0CFE0;
	border:1px solid #B0CFE0;
}
.form-style-9 ul li .field-split{
	width: 49%;
}
.form-style-9 ul li .field-full{
	width: 100%;
}
.form-style-9 ul li input.align-left{
	float:left;
}
.form-style-9 ul li input.align-right{
	float:right;
}

#texte {
	width: 100%;
	height: 180px;
}

#resume {
	width: 100%;
	height: 90px;
}

.form-style-9 ul li input[type="button"], 
.form-style-9 ul li input[type="submit"] {
	-moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
	-webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
	box-shadow: inset 0px 1px 0px 0px #3985B1;
	background-color: #216288;
	border: 1px solid #17445E;
	display: inline-block;
	cursor: pointer;
	color: #FFFFFF;
	padding: 8px 18px;
	text-decoration: none;
	font: 12px Arial, Helvetica, sans-serif;
}
.form-style-9 ul li input[type="button"]:hover, 
.form-style-9 ul li input[type="submit"]:hover {
	background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
	background-color: #28739E;
}
</style>

</html>


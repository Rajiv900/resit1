<?php
	 
	session_start();
	
	if(!isset($_SESSION['loggedIn'])){
		$_SESSION['loggedIn'] = false;
	}

	require 'dbAccessObject.php';
	 
	$server = 'db';
	$username = 'root';
	$password = 'root';
	$schema = 'assignment';

	$dbAccessObject = new DbAccessObject($server, $username, $password, $schema);
	$pdo = $dbAccessObject->getPdo();
	
	$Categories = $dbAccessObject->retrieveCategories();
?>
<!doctype html>
<html lang="en">
  <head>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
    <link rel="stylesheet" href="styles.css"/>

    <title>Northampton News</title>
  </head>
  <body>
		<header>
			<section>
					<h1>Northampton News</h1>
			</section>
		</header>
		<nav>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="latestArticle.php">Articles</a></li>
				<li><a href="articleCategory.php?category=category">Categories</a>
				<ul>
<?php

	foreach ($Categories as $row){
			echo '<li><a href="articleCategory.php?category=' . $row['categoryName'] . '">' . $row['categoryName'] . '</a></li>';
		
	} 

?>
				</ul>
				</li>
				<li><a href="contact.php">Contact us</a></li>
			</ul>
		</nav>
		<img src="images/banners/randombanner.php" />
		
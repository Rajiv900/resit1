<?php
	require 'header.php';
?>
<main>
	<?php
	require 'leftColumn.php';
?>
	<article>
		<h2>Latest Articles</h2>
		<form>
		</form>
		<?php
// retrieve the articles in descendingg order.
	$articles = $dbAccessObject->retrieveLatestArticle();
	foreach ($articles as $row){
		echo'
		<div class="row">
<div class="col-2"></div>
<div class="col-8"><div class="card">
  
<div class="card-body">
<a href="article.php?article=' . $row['articleName'] . '" class="link-dark text-monospace"
<h2 class="card-title">' . $row['articleName'] . '</h2>
  <p class="card-text">Written by: ' . $row['articleAuthor'] .'</p>
  <p class="card-text">Created: ' . $row['creationDate'] .'</p>

  <a href="article.php?article=' . $row['articleName'] . '" class="btn btn-primary float-end">Read</a>
</div>
</div></a></div>
<div class="col-2"></div>

</div>
	
		
		
		
		';
		echo '<form>';
		echo '</form>';
	} 


?>

	</article>
</main>
<?php
	require 'footer.php';
?>
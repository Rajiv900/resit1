<?php
	require 'header.php';
?>
<main>
	<?php
	require 'leftColumn.php';
?>
	<article>
		<?php
	
	echo ' <h2> Search Function. </h2>';
	echo ' <p> Only select one of the radio buttons depending on what search you wish to carry out. </p>';
	echo ' <form action="searchResult.php" method="POST">
	<div class="row">
					<div class="col-6">
					<label class="form-check-label">get article by title:</label> <input type="radio" name="article" class="form-check-input mt-4" />
					
					</div>
					<div class="col-6">
					<label class="form-check-label">get article by category:</label> <input type="radio" name="category" class="form-check-input mt-4"/>
					
					</div>

	</div>
	<div class="row">
					<div class="col-6">
					<label class="form-check-label">get article by author name:</label> <input type="radio" name="author" class="form-check-input mt-4"/>
					
					</div>
					<div class="col-6">
					<label class="form-check-label">get user by first name:</label> <input type="radio" name="user" class="form-check-input mt-4"/>
					
					</div>

	</div>
	<div class="row">
	<div class="col-5">
	<label class="form-check-label">Search:</label> <input type="text" name="keyword" class="form-label"/>
	
	</div>
	<div class="col-2">
	<input type="submit" name="submit" value="Submit" class="btn btn-primary float-start"/>
	
	</div>
	<div class="col-6"></div>

	</div>
			</form>';
	
	
?>

	</article>
</main>
<?php
	require 'footer.php';
?>
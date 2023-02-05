<?php
	require 'header.php';
?>
<main>
<?php
	
		require 'leftColumn.php';
	
?>
			<article>
				<h2>Categories</h2>
<?php
		
		 
		if (!isset($_POST['submit']) || empty($_POST['submit'])){
			$categories = $dbAccessObject-> retrieveCategories();
			foreach ($categories as $row){
				echo '<p>' . $row['categoryName'] . '</p>';
			}



			echo '<p> Please type the name of the category you would like to add. </p>
				<p> Only change the name of categories that don\'t have any articles assigned to them. </p> 
				<form action="categories.php" method="POST">

<div class="row">
<div class="col-2"></div>
<div class="col-8"><div class="row">
<div class="col-6"><label class="form-label">Add category: </label></div>
<div class="col-6"><input type="text" name="addCategory" class="form-control" /></div>

</div>
				
<div class="row">
<div class="col-6"><label class="form-label">Delete a category: </label></div>
<div class="col-6"><input type="text" name="deleteCategory" class="form-control"/></div>

</div>	 
<div class="row">
<div class="col-6"><label class="form-label">Edit category: </label></div>
<div class="col-6"><input type="text" name="editCategory" class="form-control"/></div>

</div>
<div class="row">
<div class="col-6"><label class="form-label">Change to: </label></div>
<div class="col-6"><input type="text" name="replaceToCategory" class="form-control"/></div>

</div>			 
					 
					 
					<input type="submit" name="submit" value="Submit" class="btn btn-primary "/>
				</form></div>
<div class="col-2"></div>

</div>';
							
		}
		
		else {
			if (isset($_POST['addCategory']) || !empty($_POST['addCategory'])){
				$addCategoryVerificationResult = $dbAccessObject->checkAddCategory($_POST['addCategory']);
				if ($addCategoryVerificationResult->rowCount() >= 1){
					echo '<p> category has already been added to the website please try a different name. </p>';
					
				}
				else {
					$addCategories = $dbAccessObject->addCategory($_POST['addCategory']); 
					echo '<p> The category has been successfully added to the website. </p>';
				}	
			}
			
			if (isset($_POST['deleteCategory']) || !empty($_POST['deleteCategory'])){
				$deleteCategoryVerificationResult = $dbAccessObject->checkDeleteCategory($_POST['deleteCategory']);
				if ($deleteCategoryVerificationResult->rowCount() == 0){
					echo ' <p> Category isn\'t on the website please enter a different category name to delete. </p>';
				}
				else{
					$deleteCategories = $dbAccessObject->deleteCategory($_POST['deleteCategory']);
					echo '<p> The category has been deleted. </p>';
				}
			}
			
			 
			if (isset($_POST['editCategory']) || !empty($_POST['editCategory']) && isset($_POST['replaceToCategory']) || !empty($_POST['replaceToCategory']) ){
				$editCategoryVerificationResult = $dbAccessObject->checkEditCategory($_POST['editCategory']);
				if ($editCategoryVerificationResult->rowCount() == 0) {
					echo '<p> The category you wish to edit doesn\'t exist please type in a valid category. </P>.';
				}
				else {
					$editCategory = $dbAccessObject->updateCategory($_POST['editCategory'], $_POST['replaceToCategory']);
					echo '<p> The category has been updated.</p>';
				}
			}
		
		}
		

		unset($_POST);
		
?>
			</article>
			
		</main>
<?php
	require 'footer.php';
?>
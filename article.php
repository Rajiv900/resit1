<?php
	require 'header.php';
?>
<main>
	<?php
	
		require 'leftColumn.php';
	
?>
	<article>
		<?php
	
	
	$article = $dbAccessObject->retrieveArticle($_GET['article']);
	
	foreach ($article as $row){
		echo '<h2>' . $row['articleName'] . '</h2>';
		echo '<p> Date written: ' . $row['creationDate'] . '</p>';
		echo '<p> Written by: ' . $row['articleAuthor'] . '</p>';
		echo '<p>' . $row['articleContent'] . '</p>';
		echo "<h2>Comments</h2>";
		$comments = $dbAccessObject->retrieveArticleComments($_GET['article']);
		
		if($comments->rowCount() > 0){
			foreach ($comments as $row) {
				echo '<div class="comment">';
				echo '<p>'.$row['commentContent'].'</p>';
				echo '<p class="float-end"> By ' . $row['firstName'] . ' ' . $row['surname'] . '</p>';
				echo '<p> Date written: ' . $row['commentDate'] .'</p>';
				echo '</div>';
			}
		}else {
			echo '<p>No Comments yet</p>';
		}
	}
	
	
		if(!isset($_SESSION['loggedIn']) || !$_SESSION['loggedIn']){
			echo '<p> Please <a href="logIn.php">login</a> to comment. </p>';
		} else {
			$validationResults = validateFields($_POST);
			if ($validationResults['isValid']){
				$getCommentId = $dbAccessObject->getCommentId()+1; 
				$commentContent = nl2br($_POST['comment']); 
				$commentDate = date('Y/m/d');
				$addCommentCriteria = [
					'commentId' => $getCommentId,
					'firstName' => $_SESSION['firstName'],
					'surname' => $_SESSION['surname'],
					'email' => $_SESSION['email'],
					'articleName' => $_GET['article'],
					'commentDate' => $commentDate,
					'commentContent' => $commentContent,
					'authorised' => 'N'
				];
				if($dbAccessObject->addComment($addCommentCriteria)){
					echo '<p> Comment has been added. </p>';
				}else{
					echo '<p> Comment not added. </p>';
				}
			}else{
				echo '<form action="article.php?article=' . $row['articleName'] . '" method="POST">
					<label> Comment: </label><textarea name="comment"></textarea>
					<input type="submit" name="submit" value="Submit" />
				</form>';
			}
		}
	
	function validateFields($fields){
		$valid = [
			'isValid' => true,
			'invalidFields' => []
		];
		if(!isset($fields['comment']) || empty(trim($fields['comment']))){
			$valid['isValid'] = false;
			$valid['invalidFields'][] = 'comment';
		}
		return $valid;
	}
	
?>
	</article>
</main>
<?php
	require 'footer.php';
?>
<?php
	class DbAccessObject{
		
		private $server;
		private $username;
		private $password;
		private $schema;
		private $pdo;
  
		public function __construct($server, $username, $password, $schema){
			$this->server = $server;
			$this->username = $username;
			$this->password = $password;
			$this->pdo = new PDO("mysql:host=$server;dbname=$schema", "root", "root",
			[ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
		}
	
		
	
    public function addCategory($categoryName) {
      
        $result = $this->pdo->exec("INSERT INTO categories(categoryName) VALUES ('$categoryName')");
        //the execution by return number of affection rows
        
        return $result;

    
    }


    public function checkAddCategory($categoryName) {
        
        $query = $this->pdo->query("SELECT categoryName FROM categories WHERE categoryName = '$categoryName'");
       
        return $query;

        
    }



    public function checkDeleteCategory($categoryName) {
       
        $query = $this->pdo->query("SELECT categoryName FROM categories WHERE categoryName = '$categoryName'");
       
        return $query;

    }


		

    public function deleteCategory($categoryName) {
        
        $result = $this->pdo->exec("DELETE FROM categories WHERE categoryName = '$categoryName'");
  
        return $result;

       


		
		public function getUsersByEmail($email) {
			
			$query = $this->pdo->query("SELECT Email FROM Users WHERE Email = '$email'");
			
			return $query;
	
	

	
    public function insertUser($criteria) {
        // use the PDO::exec() method to insert the given criteria into the Users table
        $result = $this->pdo->exec("INSERT INTO Users (FirstName, Surname, DOB, Email, Password) VALUES ('$criteria[FirstName]', '$criteria[Surname]', '$criteria[DOB]', '$criteria[Email]', '$criteria[Password]')");
        // return the number of affected rows by the execution
        return $result;

      
    }


	// this function retrieves a user's password by searching the Users table in the database
    public function usersPass($pass) {
        
        $query = $this->pdo->query("SELECT Password FROM Users WHERE Password = '$pass'");
        // return the query so the result can be accessed and checked
        return $query;

        
    }


	// this function retrieves a user's first name by searching the Users table in the database
    public function fetchFirstName($email) {
        $query = $this->pdo->query("SELECT FirstName FROM Users WHERE Email = '$email'");
        // fetch the result of the query as an associative array
        $row = $query->fetch(PDO::FETCH_ASSOC);
        // return the first name value from the result
        return $row['FirstName'];

       


	
	// this function updates a category name in the categories table of the database using PDO::exec() method
    public function updateCategory($categoryName, $nameReplace) {
        $result = $this->pdo->exec("UPDATE categories SET categoryName = '$nameReplace' WHERE categoryName = '$categoryName'");
        // return the number of affected rows by the execution
        return $result;

        
    }



	// this function adds an article to the articles table in the database using PDO::exec() method
    public function addArticle($criteria) {
        // use the PDO::exec() method to insert the given criteria into the articles table
        $result = $this->pdo->exec("INSERT INTO articles (articleName, articleAuthor, creationDate, categoryName, articleContent) VALUES ('$criteria[articleName]', '$criteria[articleAuthor]', '$criteria[creationDate]', '$criteria[categoryName]', '$criteria[articleContent]')");
        // return the number of affected rows by the execution
        return $result;

        
    }


	// this function checks if an article already exists in the database by searching the articles table
    public function checkArticleName($articleName) {
       
        $query = $this->pdo->query("SELECT articleName FROM articles WHERE articleName = '$articleName'");
        // return the query so the result can be accessed and checked
        return $query;

       
    }


	// this function checks if an article already exists in the database by searching the articles table
    public function checkDeleteArticle($articleName) {
       
        $query = $this->pdo->query("SELECT articleName FROM articles WHERE articleName = '$articleName'");
        // return the query so the result can be accessed and checked
        return $query;

       
    }


		// this function retrieves a user's surname by searching the Users table in the database
		public function fetchSurname($email) {
			// use PDO::query() method to select the Surname from the Users table where the Email is equal to the given email address
			$query = $this->pdo->query("SELECT Surname FROM Users WHERE Email = '$email'");
			// fetch the result of the query as an associative array
			$row = $query->fetch(PDO::FETCH_ASSOC);
			// return the surname value from the result
			return $row['Surname'];
	
			
		}
	

	
		// this function retrieves all categories from the categories table in the database
		public function retrieveCategories() {
        
			// use PDO::query() method to retrieve all categoryName from the categories table
			$query = $this->pdo->query('SELECT categoryName FROM categories');
			// fetch all the results as an associative array
			return $query->fetchAll(PDO::FETCH_ASSOC);
	
			
		}
	

		
	// this function checks if a category already exists in the database by searching the categories table
    public function checkEditCategory($categoryName) {
        // use PDO::query() method to select the categoryName from the categories table where the categoryName is equal to the given name
        $query = $this->pdo->query("SELECT categoryName FROM categories WHERE categoryName = '$categoryName'");
        // return the query so the result can be accessed and checked
        return $query;

       
    }


	// this function deletes an article from the articles table in the database using PDO::exec() method
    public function deleteArticle($articleName) {
        // use the PDO::exec() method to delete the article from the articles table where the articleName is equal to the given name
        $result = $this->pdo->exec("DELETE FROM articles WHERE articleName = '$articleName'");
        // return the number of affected rows by the execution
        return $result;

    }


	// this function checks if an article already exists in the database by searching the articles table
    public function checkEditArticle($articleName) {
        
        $query = $this->pdo->query("SELECT articleName FROM articles WHERE articleName = '$articleName'");
        // return the query so the result can be accessed and checked
        return $query;

 
    }


	
    public function editArticleName($articleName, $newArticleName) {

        $result = $this->pdo->exec("UPDATE articles SET articleName = '$newArticleName' WHERE articleName = '$articleName'");
      
        return $result;

       
    }


	
    public function editArticleContent($articleContent, $articleName) {
       
        $result = $this->pdo->exec("UPDATE articles SET articleContent = '$articleContent' WHERE articleName = '$articleName'");
    
        return $result;

    }


		

    public function unauthorisedComments() {
        
        $query = $this->pdo->query("SELECT * FROM comment WHERE authorised = 'N'");
   
        return $query;
        
        
    }


	
    public function unauthorisedComment() {
       
        $query = $this->pdo->query("SELECT * FROM comment WHERE authorised = 'N'");
        
        return $query;
        
        
    }


    public function updateAuthorisedComment($commentId) {
        // use PDO::exec() method to update the authorised column to 'Y' in the comment table where the commentId is equal to the given id
        $result = $this->pdo->exec("UPDATE comment SET authorised = 'Y' WHERE commentId = $commentId");
        // return the number of affected rows by the execution
        return $result;
        
        
    }


	// this function updates the firstName column of a user in the Users table in the database
    public function updateUserFirstName($firstName, $email) {
        $result = $this->pdo->exec("UPDATE Users SET firstName = '$firstName' WHERE email = '$email'");
        // return the number of affected rows by the execution
        return $result;
        
        
    }


		// this function updates the articleAuthor column of an article in the articles table in the database
		public function editArticleAuthor($newArticleAuthor, $articleName) {
			// use PDO::exec() method to update the articleAuthor column in the articles table where the articleName is equal to the given articleName
			$result = $this->pdo->exec("UPDATE articles SET articleAuthor = '$newArticleAuthor' WHERE articleName = '$articleName'");
			// return the number of affected rows by the execution
			return $result;
	
			
		}
	

	// this function updates the categoryName column of an article in the articles table in the database
    public function editArticleCategory($articleName, $newArticleCategory) {
        $result = $this->pdo->exec("UPDATE articles SET categoryName = '$newArticleCategory' WHERE articleName = '$articleName'");
        // return the number of affected rows by the execution
        return $result;

       
    }


	// this function retrieves all information of articles by searching the articles table in the database using the given category, and ordering the results by descending creationDate
    public function retrieveArticles($category) {
        $query = $this->pdo->query("SELECT * FROM articles WHERE categoryName = '$category' ORDER BY creationDate DESC");
        // return the query so the result can be accessed
        return $query;
        
        
    }



	// this function retrieves all information of a specific article from the articles table in the database
    public function retrieveArticle($articleName) {
        $query = $this->pdo->query("SELECT * FROM articles WHERE articleName = '$articleName' ORDER BY creationDate DESC");
        // return the query so the result can be accessed
        return $query;

        
    }



	
    public function retrieveLatestArticle() {
        $query = $this->pdo->query('SELECT * FROM articles ORDER BY creationDate DESC');
        // return the query so the result can be accessed
        return $query;
        
        
    }


	
    public function retrieveArticleComments($articleName) {
        $query = $this->pdo->query("SELECT * FROM comment WHERE articleName = '$articleName' AND authorised = 'Y'");
      
        return $query;
        
        
    }


	// 	adds a comment to the database.
    public function addComment($criteria){

        $query = $this->pdo->prepare('
            INSERT INTO comment (commentId, firstName, surname, articleName, commentDate, commentContent, authorised, email)
            VALUES (:commentId, :firstName, :surname, :articleName, :commentDate, :commentContent, :authorised, :email)');
                     
        return $query->execute($criteria);
    } 


	
    public function getCommentId(){
        
        $query = $this->pdo->query("SELECT commentId FROM comment ORDER BY commentId DESC");
        
        $commentId = $query->fetchColumn();
        // return the commentId
        return $commentId;
        
      
    }


	
    public function updateUserSurname($surname, $email) {
       
        $sql = 'UPDATE Users SET Surname = "' . $surname . '" WHERE email = "' . $email . '"';
        return $this->pdo->exec($sql);
        
       
    }


	/
    public function updateUserDob($date, $email) {
        
        $sql = 'UPDATE Users SET DOB = "' . $date . '" WHERE email = "' . $email . '"';
        return $this->pdo->exec($sql);
        
       
    }


	
    public function updateUserEmail($newEmail, $email) {
       
        $sql = 'UPDATE Users SET Email = "' . $newEmail . '" WHERE email = "' . $email . '"';
        return $this->pdo->exec($sql);
        
        
    }


	
    public function updateUserPassword($password, $email) {
        
        $hashed_password = sha1($email . $password);
        $sql = 'UPDATE Users SET Password = "' . $hashed_password . '" WHERE email = "' . $email . '"';
        return $this->pdo->exec($sql);
        
        
    }


	
	
    public function deleteUser($email) {
        // 
        $sql = 'DELETE FROM Users WHERE email = "' . $email . '"';
        return $this->pdo->exec($sql);
        
       
    }


	
	
    public function retrieveArticleByCategory($category) {
        $sql = 'SELECT * FROM articles WHERE categoryName = "' . $category . '" ORDER BY creationDate DESC';
        $query = $this->pdo->query($sql);
        return $query;
        
        
    }


	
    public function retrieveArticleByAuthor($author) {
        
        $sql = 'SELECT * FROM articles WHERE articleAuthor = "' . $author . '" ORDER BY creationDate DESC';
        $query = $this->pdo->query($sql);
        return $query;
        
        
    }


	
    public function retrieveUserByName($name) {
        
        $sql = 'SELECT * FROM Users WHERE FirstName = "' . $name . '"';
        $query = $this->pdo->query($sql);
        return $query;
        
       
    }


	
    public function retrieveUserByEmail($email) {

        $sql = 'SELECT * FROM Users WHERE Email = "' . $email . '"';
        $query = $this->pdo->query($sql);
        return $query;
        
      
    }


	
    public function retrieveUserComments($email) {
       
        $sql = 'SELECT * FROM comment WHERE Email = "' . $email . '"';
        $query = $this->pdo->query($sql);
        return $query;
        
       
    }



		// getter for server
		public function getServer(){
			return $this->server;
		}

		// getter for username
		public function getUsername(){
			return $this->username;
		}

		// getter for password
		public function getPassword(){
			return $this->password;
		}

		// getter for schema
		public function getSchema(){
			return $this->schema;
		}

		// getter for PDO
		public function getPdo(){
			return $this->pdo;
		}

		// setter for server
		public function setServer($server){
			$this->server = $server;
		}

		// setter for username
		public function setUsername($username){
			$this->username = $username;
		}

		// setter for password
		public function setPassword($password){
			$this->password = $password;
		}

		// setter for schema
		public function setSchema($schema){
			$this->schema = $schema;
		}

		// setter for PDO
		public function setPdo($pdo){
			$this->pdo = $pdo;
		}

	}	
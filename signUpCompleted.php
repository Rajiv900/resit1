<?php
    require 'header.php';
?>
<main>
    <div class="container-fluid">
        <div class="row">
            <?php require 'leftColumn.php'; ?>
            <article class="col-md-9">
                <?php
               
                $errors = validateFields($_POST);
               
                if (!empty($errors)) {
                    echo '<div class="alert alert-danger">';
                    foreach($errors as $error) {
                        echo '<p>'.$error.'</p>';
                    }
                    echo '</div>';
                }
                
                else {
                    
                    $emailVerificationResult = $dbAccessObject->getUsersByEmail($_POST['email']);
                    if ($emailVerificationResult->rowCount() >= 1) {
                        echo '<p class="alert alert-danger">Email address already taken. Please enter another email address.</p>';
                    } else {
                      
                        $userInsertions = [
                            'FirstName' => $_POST['fName'],
                            'Surname' => $_POST['sName'],
                            'DOB' => $_POST['dob'],
                            'Email' => $_POST['email'],
                            'Password' => sha1($_POST['email'] . $_POST['pass'])
                        ];
                        $userInserted = $dbAccessObject->insertUser($userInsertions);
                        echo '<p class="alert alert-success">You have been added to the database. Please log in.</p>';
                    }
                }

                function validateFields($fields) {
                    $errors = [];

                    if (!isset($fields['fName']) || empty($fields['fName'])) {
                        $errors[] = 'First Name field is required';
                    }

                    if (!isset($fields['sName']) || empty($fields['sName'])) {
                        $errors[] = 'Surname field is required';
                    }

                    if (!isset($fields['dob']) || empty($fields['dob'])) {
                        $errors[] = 'Date of Birth field is required';
                    }

                    if (!isset($fields['email']) || empty($fields['email'])) {
                        $errors[] = 'Email field is required';
                    }

                    if (!isset($fields['pass']) || empty($fields['pass'])) {
                        $errors[] = 'Password field is required';
                    }

                    return $errors;
                }
                ?>
            </article>
        </div>
    </div>
</main>
<?php

	require 'footer.php';
		

?>


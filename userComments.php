<?php

require 'header.php';

?>
<main>
    <div class="container-fluid">
        <div class="row">
            <?php require 'leftColumn.php'; ?>
            <article class="col-md-9">
                <?php
                // Retrieve user information by email
                $user = $dbAccessObject->retrieveUserByEmail($_GET['email']);
                ?>
                <div class="card">
                    <div class="card-header">
                        <h2><?= $user['FirstName'] . " " . $user['Surname'] ?></h2>
                    </div>
                    <div class="card-body">
                        <p>Email: <?= $user['Email'] ?></p>
                    </div>
                </div>
                <br>
                <h4>Comments:</h4>
                <?php
                // Retrieve user comments by email
                $userComments = $dbAccessObject->retrieveUserComments($_GET['email']);
                // Loop to print out user comments
                foreach ($userComments as $row) {
                    ?>
                    <div class="card">
                        <div class="card-header">
                            <p>Article title: <?= $row['articleName'] ?></p>
                        </div>
                        <div class="card-body">
                            <p>Date of comment: <?= $row['commentDate'] ?></p>
                            <p>Comment: <?= $row['commentContent'] ?></p>
                        </div>
                    </div>
                    <br>
                <?php } ?>
            </article>
        </div>
    </div>
</main>
<?php
    require 'footer.php';
?>
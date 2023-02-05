<?php
require 'header.php';
?>
<main>
    <?php
    require 'leftColumn.php';
    ?>
    <article>
        <h2 class="text-center">Log In</h2>
        <form action="logInCompleted.php" method="POST" class="form-horizontal">
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email">
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" id="password" name="pass" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <input type="submit" name="submit" value="Submit" class="btn btn-primary"/>
                </div>
            </div>
        </form>
    </article>
</main>
<?php
require 'footer.php';
?>
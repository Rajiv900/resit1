<?php
	require 'header.php';
?>
<main>
<?php
	require 'leftColumn.php';
?>
			
			<article>
    <h2>Sign Up</h2>
    <form action="signUpcompleted.php" method="POST" class="form-horizontal">
        <p>Please enter the below information in order to set up an account.</p>
        <div class="form-group">
            <label for="fname" class="col-sm-3 control-label">First Name</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="fname" name="fName" placeholder="First Name">
            </div>
        </div>
        <div class="form-group">
            <label for="sname" class="col-sm-3 control-label">Surname</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="sname" name="sName" placeholder="Surname">
            </div>
        </div>
        <div class="form-group">
            <label for="dob" class="col-sm-3 control-label">Date Of Birth</label>
            <div class="col-sm-9">
                <input type="date" class="form-control" id="dob" name="dob">
            </div>
        </div>
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
                <input type="submit" name="submit" value="Submit" class="btn btn-primary" />
            </div>
        </div>
    </form>
</article>

		</main>
<?php
	require 'footer.php';
?>
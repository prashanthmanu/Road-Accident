<center>
<link rel="stylesheet" href="styles.css" type="text/css" />
<h1>Road Accident Management System</h1>
<hr>
<?php
session_start();
session_destroy();
setcookie("user", "", time()-3600);
echo "Your Have Been Logout <br><a href='start.php'> Click Here</a> To go to Home page ";
?>
</center>
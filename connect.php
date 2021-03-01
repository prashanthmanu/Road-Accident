<?php
$con = mysqli_connect("localhost","root","","accident");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
?> 
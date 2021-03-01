<?php
include("connect.php");
?>
<html>
<head>
<title>Road Accident Management System
</title>
<style>
#txt
{
	width:200px;
	border-style:groove;
	height:30px;
	border-radius:4px;
}

#btn
{
	background-color:#1e5799;
	border-style:none;
	width:150px;
	height:30px;
	border-radius:4px;
	color:white;
}
#btn:hover{
background-color:#1e5700;
color:#000;
}
.loginpad
{
padding-left:10px;
}
h2{
 position:absolute;
 text-align:center;
 font-size:30px;
 font-color:white;
 height:200px;
 left:580px;
}
</style>
<link rel="stylesheet" href="styles.css" type="text/css" />
</head>
<body>
<center>
<h1>Road Accident Management System</h1>
<hr>
  <h2>Admin Login</h2>
  <div class="container">
  <br>
	<br>
	<br>
	<br>
	<div class="section1"><br>
	<div class="loginpad">
	<br>
	<form action="" method="post">
                <font size="4" color="black">Username:</font>
		<input type="text" name="user" id="txt" placeholder="Username" required>
		<br>
		<br>
                <font size="4" color="black">Password:</font>
		<input type="Password" id="txt" name="pwd" placeholder="Password" required>
		<br>
		<br>
		<input type="submit" name="btnlogin" id="btn" value="Login">
                <a href="start.php">
                <input type="button" name="btnlogin" id="btn" value="Back">
                </a>
		</form>
	</div>
	</div>
  </div>
  
  <div class="footer">
  <center>
Design and Developed By <a rel="nofollow" target="_blank"  title="Prashanth,Mallikarjun & Ramakrishna"><strong>Prashanth,Mallikarjun & Ramakrishna</strong></a>
</center>
  </div>
</center>
 <?php
if(isset($_POST["btnlogin"]))
{
function validate_input($data) 
		{
  			 $data = trim($data);
  			 $data = stripslashes($data);
   			$data = htmlspecialchars($data);
   			return $data;
		}
			$uname = validate_input($_POST["user"]);
			$pwd = validate_input($_POST["pwd"]);
		if($uname =="" || $pwd=="")
		{
			echo "<script> alert('Please Fill The required Field!');</script>";
			return;
		}
		else
		{
			$sql = "SELECT * FROM admin where ad_username='$uname' and ad_password='$pwd'";
					$result = mysqli_query($con, $sql);
					if (mysqli_num_rows($result) > 0) 
					{
   						session_start();
						$_SESSION['log_user']=$uname;
						setcookie('user_n',$uname,time() + 86400*30,'/');
						setcookie('user_p',$pwd,time() + 86400*30,'/');
						header("location:home.php");
					} 
					else
					{  				
						echo "<script> alert('Invalid Username or Password!');</script>";
						return;
					}		
}
}
?>
</body>
</html>
<?php
	session_start();
	if(isset($_SESSION['login'])) {
		header("location:home.php");
	} else {
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css_login/login.css">
	<link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<img class="img1" src="foto/img4.jpg">
		<form action="proses/proses_login.php" method="post">
			<div class="form-input">
				<input type="email" name="email" placeholder="Please Enter Your email.....">
			</div>
			<div class="form-input">
				<input type="password" name="password" placeholder="Please Enter Your password.....">
			</div>
			<input type="submit" name="submit" value="LOGIN" class="btn-login"><br>
			<a href="#">Forget Password?</a>
		</form>
	</div>
</body>
</html>

<?php
}
?>
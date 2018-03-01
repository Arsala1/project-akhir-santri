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
	<link rel="icon" type=”image/jpg href="foto/stock-vector-military-coat-of-arms-with-skull-grunge-vintage-design-t-shirts-590339141.jpg">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css_login/login.css">
	<link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />

    <script type="text/javascript">
    	function validateForm() {
	 		var x=document.forms["form"]["email"].value;

	 		var atpos=x.indexOf("@");

	 		var dotpos=x.lastIndexOf(".");

	 		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
	 		{
	 			alert("Isi Email dengan Benar");
	 			return false;
	 		}
 		}
    </script>

</head>
<body>
	<div class="container">
		<img class="img1" src="foto/ap,550x550,12x16,1,transparent,t.u5.png">
		<form action="proses/proses_login.php" method="post" onsubmit="return validateForm();" name="form">
			<div class="form-input">
				<input type="text" name="email" placeholder="Please Enter Your email.....">
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
<?php
session_start();
// if (isset($_SESSION['login'])) {
	
	include 'koneksi.php';

	$nama       = isset($_POST['nama']) ? $_POST['nama'] : '';
	$email      = isset($_POST['email']) ? $_POST['email'] : '';
	$notelepon  = isset($_POST['notelepon']) ? $_POST['notelepon'] : '';
	$komentar   = isset($_POST['komentar']) ? $_POST['komentar'] : '';
	$id 		= $_POST['id'];
	$artikel    = $id;
	$tanggal    = date("Y-m-d H:i:s");

		if (!empty($nama) && !empty($email) && !empty($notelepon) && !empty($komentar)) {
			
			mysqli_query($connect, "INSERT INTO comment VALUES (null,'$nama','$email','$notelepon','$komentar','$artikel','$tanggal')");	

			header("location:../post.php?id=$id");

		} else {

			echo "Silahkan lengkapi data <a href='../post.php'>Komentar</a>";

		}

// } else {

// 	echo "Please <a href='../index.php'>login</a> first";
	
// }

?>
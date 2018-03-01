<?php
session_start();
if (isset($_SESSION['login'])) {

	// $connect = mysqli_connect("localhost", "root", "123", "pondok_it");
	include 'koneksi.php';

	$nama = isset($_POST['nama']) ? $_POST['nama'] : '';
	$email = isset($_POST['email']) ? $_POST['email'] : '';
	$notelepon = isset($_POST['notelepon']) ? $_POST['notelepon'] : '';
	$komentar = isset($_POST['komentar']) ? $_POST['komentar'] : '';
	$artikel = $_SESSION['artikel_id'];
	$tanggal = date("Y-m-d H:i:s"); 

	$id = isset($_POST['id']) ? $_POST['id'] : '';

	if (!empty($nama) && !empty($email) && !empty($notelepon) && !empty(komentar)) {
		mysqli_query($connect, "
			UPDATE comment
			SET nama = '$nama', email = '$email', notelepon = '$notelepon', komentar = '$komentar', artikel_id = '$artikel', tanggal = '$tanggal'
			WHERE id = '$id'
		");

		header("location:../komentar.php");

	} else {
		echo "Silahkan lengkapi data <a href='../komentar_edit.php'>Artikel</a>";;
	}

} else {
	echo "Please <a href='../index.php'>login</a> First.";
}
?>
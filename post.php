<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="icon" type=”image/jpg href="foto/stock-vector-military-coat-of-arms-with-skull-grunge-vintage-design-t-shirts-590339141.jpg">
	<meta charset="utf-8">
	<script src="jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css_login/post.css">
	<link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />

    <script>  
    	$(document).ready(function(){
   			$(".font-awesome").click(function(){
      		$(".navigation").toggle("slow");
      		$("#container").hide();
   			});
		});
		$(document).ready(function(){
   			$(".icon-close1").click(function(){
      		$("#container").show();
      		$(".navigation").toggle("slow");
   			});
		});
		$(document).ready(function(){
   			$(".icon_search").click(function(){
      		$(".search").toggle("slow");
   			});
		});
		$(document).ready(function(){
   			$(".textarea").click(function(){
      		$(".nama").toggle("slow");
   			});
		});
		$(document).ready(function(){
   			$(".nama").click(function(){
      		$(".email").toggle("slow");
   			});
		});
		$(document).ready(function(){
   			$(".email").click(function(){
      		$(".nomor_telepon").toggle("slow");
   			});
		});
	</script>

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
 		
 		function wajibAngka(evt) {
 			var charCode = (evt.which) ? evt.which : event.keyCode
 			if (charCode > 31 && (charCode < 48 || charCode > 57))
 			return false;
 		}

 		

	</script>

</head>
<body>

		<div class="navigation">
			<ul class="icon-close">
               <li><a href="#"><i class="fa fa-close icon-close1" aria-hidden="true" style="font-size: 42px; color: #fff;"></i></a></li>
            </ul>
            <ul>
                <li><a href="profil1.html">HOME</a></li>
                <div class="hr1"></div>
                <li><a href="profil2.html">ABOUT</a></li>
                <div class="hr1"></div>
              	<li><a href="#">ARCHIVE</a></li>
              	<div class="hr1"></div>
                <li><a href="#">CONTACT</a></li>
                <div class="hr2"></div>
            </ul>
		</div>

	<div id="container" class="clearfix">

		<div class="wrapper clearfix">
			<div class="content clearfix">
				<div class="logo1">
					<p>Al-Wahdah</p>
				</div>

				<div class="font-awesome">
					<li><a href="#"><i class="fa fa-bars none" aria-hidden="true"></i></a></li> 
				</div>
				
				<div class="menu">
					<ul class="menu1">
						<li><a href="#"><i class="fa fa-search icon_search" aria-hidden="true" style="font-size: 15px;"></i></a></li>
						<li><a href="#">CONTACT</a></li>
						<li><a href="profil2.html">ARCHIVE</a></li>
						<li><a href="profil1.html">ABOUT</a></li>
						<li><a href="index.php">HOME</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="wrapper clearfix">
			<div class="search clearfix">
				<form action="https:./" method="get">
					<input class="input1" type="text" placeholder="search..." id="pencarian" required oninvalid="this.setCustomValidity('data tidak boleh kosong')" oninput="setCustomValidity('')">
					<input class="input2" type="submit" value="Go!" id="submit">
				</form>
			</div>
		</div>

		<div class="wrapper clearfix">
			<div class="content2 clearfix">

				<?php
					include 'proses/koneksi.php';
					include 'function/library.php';
					$id =  isset($_GET['id']) ?  $_GET['id'] : '';
				  	$sql = mysqli_query($connect, "SELECT * FROM blog_artikel WHERE id = $id");
				  	while ($row = mysqli_fetch_array($sql)) {
		  		?>	

				<img src="gambar/<?php echo $row['gambar']?>" width="100%">
				<div class="wrapper2 clearfix">
					<button class="b1" type="button"><?= kategori($row['kategori_id']) ?></button>
					<p class="p1"><?= date('F d Y', strtotime($row['tanggal'])) ?></p>
					<p class="p2"><?= $row['judul'] ?></p>
					<div class="garis1"></div>
					<div class="p3">
						<?= $row['isi'] ?>
					</div>
					<div class="bottom1 clearfix">
	              		<p>
	              			<a href="index.php">
	              				Back To Home
	              			</a>
	              		</p>
	            	</div>
					<div class="bottom2 clearfix">
						<p>#Democracy #Introspection</p>
					</div>
				</div>

				<?php
				}
				?>

				<div class="garis2"></div>

				<div class="wrapper2 clearfix">

					<form action="proses/komentar_proses.php" class="form" method="post" onsubmit="return validateForm();" name="form">
						<div>
							<input type="hidden" name="id" value="<?= $_GET['id'] ?>">
						</div>
						<div>
							<input type="text" name="nama" class="nama" placeholder="Nama..."  required oninvalid="this.setCustomValidity('Nama tidak boleh kosong')" oninput="setCustomValidity('')">
						</div>
						<div>
							<input type="text" name="email" class="email" placeholder="Email..."  required oninvalid="this.setCustomValidity('Email tidak boleh kosong')" oninput="setCustomValidity('')">
						</div>
						<div>
							<input type="text" name="notelepon" class="nomor_telepon" onkeypress="return wajibAngka(event)" placeholder="Nomor Telepon..."  required oninvalid="this.setCustomValidity('Data tidak boleh kosong')" oninput="setCustomValidity('')">
						</div>
						<div>
							<textarea type="text" name="komentar" class="textarea" placeholder="Post a Comment..." required oninvalid="this.setCustomValidity('Komentar tidak boleh kosong')" oninput="setCustomValidity('')"></textarea>
						</div>
						<div>
							<input type="submit" name="submit" class="submit" placeholder="SUBMIT">
						</div>
					</form>

					<div class="garis3" style="border: 1px dashed #d9d9d9;"></div>

					<?php

						include 'proses/koneksi.php';
						$sql = mysqli_query($connect, "SELECT * FROM comment WHERE artikel_id = $_GET[id] ORDER BY tanggal DESC ");
						$result = mysqli_num_rows($sql);
						echo "<div class='p8'>".$result." Comment</div>";
						while ($row = mysqli_fetch_array($sql)) {
					?>
						
					<div class="pembungkus">
						<img class="foto4" src="foto/profil.png">

						<div class="text">
							<p class="p9"><?= date('F d Y', strtotime($row['tanggal'])) ?></p>
							<p class="p10">Nama    : <?= $row['nama'] ?></p>
							<p class="p11">Email   : <?= $row['email'] ?></p>
							<p class="p12">No.HP   : <?= $row['notelepon'] ?></p>
							<p class="p13"><?= $row['komentar'] ?></p>
						</div>
					</div>


					<?php
					}
					?>

					<div class="search2 clearfix">
						<form action="../" method="get">
							<input type="submit" value="Load More Comments" id="pencarian1">
						</form>
					</div>


				</div>
			</div>
		</div>

			<div class="footer clearfix">
				<div class="wrapper2 clearfix">
					<div class="logo2">
						<p class="kostum">Al-Wahdah</p>
					</div>

					<div class="menu2">
						<ul class="top_menu">
							<li><a href="profil1.html">HOME</a></li>
							<li><a href="profil2.html">ABOUT</a></li>
							<li><a href="#">ARCHIVE</a></li>
							<li><a href="#">CONTACT</a></li>
							<li><a href="#"><i class="fa fa-search" aria-hidden="true" style="font-size: 15px;"></i></a></li>
						</ul>
					</div>

					<div class="garis4"></div>
					<p class="p14">Nunc placerat dolor at lectus hendrerit dignissim. Ut tortor sem, consectetur nec hendrerit ut, ullamcorper ac odio. Donec viverra ligula at quam tincidunt imperdiet. Nulla mattis tincidunt auctor.</p>
					<div class="wrapper3">
						<div class="garis5"></div>
					</div>
					<p class="p15">© 2018 - Al-Wahdah. All Rights Reserved.</p>
					<div class="logo3">
						<ul class="icon">
							<li><a href="https://www.facebook.com/PondokIT/"><i class="fa fa-facebook-official" aria-hidden="true" style="font-size: 25px;"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true" style="font-size: 25px;"></i></a></li>
							<li><a href="https://www.instagram.com/pondokinformatika/?hl=id"><i class="fa fa-instagram" aria-hidden="true" style="font-size: 25px;"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true" style="font-size: 25px;"></i></a></li>
						</ul>
					</div>
				</div>
			</div>

	</div>

</body>
</html>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="icon" type=”image/jpg href="foto/stock-vector-military-coat-of-arms-with-skull-grunge-vintage-design-t-shirts-590339141.jpg">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<script src="jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css_login/desktop_home.css">
	<link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
					<ul class="menu3">
						<li><a href="#"><i class="fa fa-search icon_search" aria-hidden="true" style="font-size: 15px;"></i></a></li>
						<li><a href="#">CONTACT</a></li>
						<li><a href="#">ARCHIVE</a></li>
						<li><a href="profil2.html">ABOUT</a></li>
						<li><a href="profil1.html">HOME</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="wrapper clearfix">
			<div class="search clearfix">
				<form action="index.php" method="POST">
					<input class="input1" name="cari" type="text" placeholder="search..." id="pencarian"  required oninvalid="this.setCustomValidity('data tidak boleh kosong')" oninput="setCustomValidity('')">
					<input class="input2" type="submit" value="Go!" id="submit">
				</form>
			</div>
		</div>

		<div class="wrapper clearfix">

			<?php
				include 'proses/koneksi.php';
				include 'function/library.php';
				$cari = isset($_POST['cari']) ? $_POST['cari'] : '';
				if (!empty($cari)) {
					$sql = mysqli_query($connect, "SELECT * FROM blog_artikel WHERE judul LIKE '%$cari%' OR isi LIKE '%$cari%' ORDER BY id DESC");
				} else {
					$sql = mysqli_query($connect,"SELECT * FROM blog_artikel ORDER BY id DESC");
				}
				while ($row = mysqli_fetch_array($sql)) {
   	 		?>

			<div class="content2 clearfix">
				<img src="gambar/<?php echo $row['gambar']?>" width="100%">
				<div class="wrapper2 clearfix">
					<button class="b1" type="button"><?= kategori($row['kategori_id']) ?></button>
					<p class="p5"><?= date('F d Y', strtotime($row['tanggal'])) ?></p>
					<p class="p6"><?= $row['judul'] ?></p>
					<div class="garis1"></div>
					<div class="isi">
						<?= substr($row['isi'], 0, 500) ?>
					</div>
					<div class="bottom1 clearfix">
						<a href="<?php echo 'post.php?id='.$row['id']; ?>">
	              			<p class="post-title">
	                			READ MORE
	              			</p>
	            		</a>
	            	</div>
	            	<div class="bottom2 clearfix">
						<p>#Yosemite #Peak #Photo</p>
					</div>
				</div>
			</div>

			<?php
     		}
      		?>

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

					<div class="garis2"></div>
					<p class="p19">Nunc placerat dolor at lectus hendrerit dignissim. Ut tortor sem, consectetur nec hendrerit ut, ullamcorper ac odio. Donec viverra ligula at quam tincidunt imperdiet. Nulla mattis tincidunt auctor.</p>
					<div class="wrapper3">
						<div class="garis3"></div>
					</div>
					<p class="p20">© 2018 - Al-Wahdah. All Rights Reserved.</p>
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
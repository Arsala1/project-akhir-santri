<?php

	$url = pathinfo(basename($_SERVER['SCRIPT_NAME']), PATHINFO_FILENAME);

?>
		
		<li class="header">MENU NAVIGATION</li>
        <li <?= ($url == 'home') ? 'class="active"':'' ?>>
          <a href="home.php">
            <i class="fa fa-flag"></i> <span>HOME</span>
          </a>
        </li>
        <li <?= ($url == 'user' || $url == 'user_edit' || $url == 'user_tambah') ? 'class="active"':'' ?>>
          <a href="user.php">
            <i class="fa fa-user"></i> <span>AUTHOR</span>
          </a>
        </li>
        <li <?= ($url == 'komentar' || $url == 'komentar_edit' || $url == 'komentar_tambah') ? 'class="active"':'' ?>>
          <a href="komentar.php">
            <i class="fa fa-commenting"></i> <span>COMMENT</span>
          </a>
        </li>
		<li class="treeview <?= ($url == 'blog_kategori' || $url == 'blog_kategori_edit' || $url == 'blog_kategori_tambah' || $url == 'blog_artikel' || $url == 'blog_artikel_edit' || $url == 'blog_artikel_tambah') ? 'active':'' ?>">
          <a href="#">
            <i class="fa fa-gears"></i>
            <span>BLOG</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="blog_kategori.php"><i class="fa fa-chain"></i>Kategori</a></li>
            <li><a href="blog_artikel.php"><i class="fa fa-chain"></i>Artikel</a></li>
          </ul>
        </li>
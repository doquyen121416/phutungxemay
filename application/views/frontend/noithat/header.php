<?php $config = $this->mconfig->config_get(); ?>
<!DOCTYPE html>
<html lang="vi">
<head itemscope itemtype="http://schema.org/WebSite">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">   	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<base href="<?php echo base_url(); ?>">
	<link rel="SHORTCUT ICON" href="public/images/<?php echo $config["config_img"]; ?>" type="image/x-icon"/>
	<title><?php echo $config["config_title"]; ?></title>
	<script>
		var url_home = <?php echo "'".base_url()."'"; ?>
	</script>



	<link type="text/css" rel="stylesheet" href="public/css/all.min.css" />
	<link type="text/css" rel="stylesheet" href="public/css/style.css" />

</head>

<body onLoad="" >

		<h1 style="position:absolute; top:-1000px;">PHỤ TÙNG XE MÁY HONDA CHÍNH HÃNG</h1>
		<h2 style="position:absolute; top:-1000px;">PHỤ TÙNG XE MÁY HONDA CHÍNH HÃNG</h2>
		<h3 style="position:absolute; top:-1000px;">PHỤ TÙNG XE MÁY HONDA CHÍNH HÃNG</h3>


	<div id="wapper">
		<div id="header">

			<div class="wap_menu">
				<div class="menu">

					<nav id="menu_mobi" style="height:0; overflow:hidden;"></nav>
					<div class="header"><a href="#menu_mobi" class="hien_menu"><i class="fa fa-bars" aria-hidden="true"></i> <i class="fa fa-caret-right" aria-hidden="true"></i></a>
						<a href="gio-hang.html" class="sp_cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>0</span><sup></sup></a> 

					</div>

					<nav id="menu">
						<ul>
							<li><a class="active" href="index.php">Trang chủ</a></li>
							<li class="line"></li>
							<li><a class="" href="trang/phuong-thuc-thanh-toan">Phương thức giao hàng</a></li>
							<li class="line"></li>
							<li><a class="" href="trang/phi-giao-hang">Phí giao hàng</a></li>
							<li class="line"></li>
							<li><a class="" href="trang/tu-van">Tư vấn</a></li>
							<li class="line"></li>
							<li><a class="" href="trang/lien-he">Liên hệ</a></li>
							<li class="line"></li>
						</ul>

					</nav>        </div><!---END .menu-->
				</div><!---END .wap_menu--> 

				<div class="bao_header">
					<a href="index.php" class="logo_header"><img src="public/images/<?php echo $config["config_logo"]; ?>" /></a>

					<div class="search">
						<form action="<?php echo site_url('search');?>" method = "post">
						<input type="text" name="search" id="search"  placeholder="Nhập từ khóa tìm kiếm...">
						<input type="submit"  class="timkiem1" name="timkiem1" value="TÌM KIẾM">
						</form>
					</div>

					<div class="hotline_header">
						<p class="dt1"><?php echo $config["config_phone"]; ?></p>
						<p>Hotline</p>
					</div>
					<div class="giohang_header">
						<div class="giohang1">
							<a class="giohang3" href="gio-hang"><img class="img_gh" src="public/images/giohang.png"></a>
						</div>
						<span class="sl_gh" ><p id="numbercart"><?php echo $this->cart->total_items(); ?></p></span>
					</div>

				</div>    </div><!---END #header-->

				<?php 



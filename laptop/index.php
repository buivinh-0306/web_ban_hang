<?php 
	require'../libs/function.php';
	$banner = show_banner();
	$slide = show_slide();
	disconnect_db();
?> 




<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>ROG - Republic of Gamers｜Global | The Choice of Champions</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css" >
	<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.8.3.min.js"></script> -->
	
</head>
<body>
	<div class="header header--black">
		<div class="wrap--main">
			<a href="#" class="wrap__logo" title="về trang chủ">
				<img src="../images/logo_rog.png" alt="" title="Trở Về Trang Chủ">
			</a>
			<div class="wrap__menu">
				<ul>
					<li>
						<a href="#">Products</a>
						<ul>
							<div>
								<li><a href="#">Laptops</a></li>
								<li><a href="#">Desktops</a></li>
								<li><a href="#">ROG phones</a></li>
								<li><a href="#">Components</a></li>
								<li><a href="#">Gaming Gears</a></li>
							</div>				
						</ul>

					</li>
					<li><a href="#">Innovation</a></li>
					<li><a href="#">Community</a></li>

					<li>
						<a href="#">Downloads</a>
						<ul>
							<div>
								<li><a href="#">Wallpapers</a></li>
								<li><a href="#">Aura Sync</a></li>
								<li><a href="#">Drivers</a></li>
							</div>
						</ul>
					</li>
					<li><a href="#">Support</a></li>
				</ul>
			</div>
		</div>
	</div>
	<?php foreach ($banner as  $item) { ?>
		<div href="<?php echo $item['link'] ?>" class="banner banner--show_product" style=" background: url('../<?php echo $item['images'] ?>');background-size: 100%;background-repeat: no-repeat;">
	
		<!-- trong này sẽ có text và đường dẫn của sản phẩm  -->	
	</div>
	<?php } ?>
	</body>
</html>
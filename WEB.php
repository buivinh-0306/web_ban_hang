<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" >
</head>
<body>
	<?php 
		include 'connect.php'
	?> 
	
	<div class="header header--black">
		<div class="wrap--main">
			<a href="#" class="wrap__logo" title="về trang chủ">
				<img src="image/logo_rog.png" alt="" title="Trở Về Trang Chủ">
			</a>
			<form action="#" method="get" class="wrap__form">
				<input type="text" placeholder="Tìm kiếm">
				<button class="btn--search" type="submit"></button>
			</form>
			<nav>
				<a href="#">Product</a>
				<a href="#">Downloads</a>
				<a href="#">Support</a>
				<a href="#">Liên Hệ</a>
				
			</nav>
		</div>
		<div class="clear"></div>
	</div>

	<div class="body"></div>
	<div class="footer"></div>

	
</body>
</html>
<?php 
	require'../libs/function.php';
	$banner = show_banner();
	$slide = show_slide();
	$sql = "SELECT count(productID) AS total FROM product WHERE GroupProduct = 'laptop'";
	$query = mysqli_query($conn, $sql);
	if($query){
		$row = mysqli_fetch_assoc($query);
	}
	$total_records = $row['total'];
	$group = "laptop";
	$data = group_product($group ,100);
	disconnect_db();
?> 




<!DOCTYPE html>
<html lang="vn">
<head>
	<meta charset="UTF-8">
	<title>ROG - Republic of Gamers｜Global | The Choice of Champions</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <link rel="stylesheet" type="text/css" href="../css/style.css" > -->
	<script src="../js/jquery.min.js"></script>	<style>
		@font-face{
			font-family: Xolonium-Regular;
			src: url(../fonts/Xolonium-Regular.woff);
		}

		* {
			margin: 0;
			padding: 0; 
			box-sizing: border-box;
		}


		body {
			background: #f0f0f0;
			height: auto;

		}

		.header {
			background-color:#202020;
			width: 100%;
			height: 60px;
			color: #ffffff;
			font-family: segoeui,Microsoft JhengHei,sans-serif;
			z-index: 1000;

		}

		.header .wrap--main {
			display: block; 
			max-width: 1200px;
			min-width: 1024px;
			width: 100%;
			height: 60px;
			background: #202020;
			margin: auto;
			position: relative;
			line-height: 55px;
		}

		.wrap__logo {
		
			width: 300px;
			display: block;
			padding-top: 3px;
			float: left;
		}

		.wrap__logo img {
			height: auto;
			width: 80%;
			margin-top: 5px; 
		}

		.wrap__menu ul{
			list-style-type:none; 
		}

		.wrap__menu ul li{
			float: left;
			width: 170px;
			height: 55px;
			line-height: 55px;
			text-align: center;
			font-size: 20px;
			background-color:#202020;
		}

		.wrap__menu ul li a{
			text-decoration: none;
			color: white;
			display: block;
		}

		.wrap__menu ul li ul div li{
			display: none;
		}

		.wrap__menu ul li ul div li a{color: black;}


		.wrap__menu ul li a:hover{
			color: #f7313f;
			margin-top: 5px;
			transition: ease 0.4s;
			
		
		}

		.wrap__menu ul li:hover ul div li{
			display: block;
			background-color: white;
			box-shadow: 0 8px  16px 0  rgba(0, 0, 0, 0.8);
		}
		.banner{
			z-index: -1;
			width: 100%;
			height: 37.6vw;
			position: relative;		
		}
		.footer__content{
			background:no-repeat #161616 url('../images/banner,background/07B097A3-E9C2-4AFF-9196-3ADE8F5B.png');
			background-size: auto;
			background-position: 50%;
			height: 520px;
			padding: 0 65px;
			color: #fff;
			
		}
		.footer__content__about{
			padding:27px 0 40px ;
			border-bottom: 1px solid #333;
			display: flex;
			justify-content: space-between;
			
		}
		.footer__content__about ul{
			list-style: none;
			display: flex;
		}
		.footer__content__about ul li{
			width: 2em;
			height: 2em;
			margin-left:60px;
		}
		.footer__content__about ul li a{
			text-decoration: none;
			vertical-align: middle;
		}

		.footer__content__about ul li a img{
			width: 100%;
			height: 100%;
		}
		.footer__content__about--link span a{
			color: #bfbfbf;
			margin-right: 50px;
			font-size: 16px;
			display: inline-block;
			text-transform: uppercase;
			font-family:segoeui,Microsoft JhengHei,sans-serif;
			text-decoration: none;
		}


		.footer__content__about--link span a:hover{
			color: #ff0029;
		}
		.footer__content__copyright{
			display: flex;
			justify-content: space-between;
			padding:27px 0 40px ;
			font-family:segoeui,Microsoft JhengHei,sans-serif;
		}

		.footer__content__copyright a{text-decoration: none;}

		.footer__content__copyright a p{
			text-decoration: none;
			color: #999999;
			font-size:14px;
			display: block;
		}
		.footer__content__copyright a p:hover{
			color: #ff0029;
		}
		.footer__content__copyright div span{
			text-transform: uppercase;
			font-size: 12px;
			color: #999999;
		}

		.footer__content__copyright div span a{
			display: inline-block;
			text-decoration: none;
			color: #999999;
		}

		.footer__content__copyright div span a:hover{
			color: #ff0029;
		}
		.footer__content__copyright div span{
			margin-left:30px ;
		}
		.show{
			padding: 0 65px 85px 65px;
			height: auto;
			width: 100%;
		}
		.show__Wrapper{
			display: flex;
			
			width: 100%;
			height: auto;
			font-family: segoeui,Microsoft JhengHei,sans-serif;
			direction: ltr;
			flex-wrap: wrap;
		}
		.show__Wrapper>a{
			width: calc((100% - 111px)/4);
			background-color: #fff;
			text-decoration: none;
			padding: 28px;
			color: #161616;
			
		}
		.show__Wrapper a img{
			width: 100%;
			height: auto;
			margin-bottom: 35px;
		}
			
		.show__Wrapper>a span{
			font-size: 20px;
			
		}
		.show__Wrapper>a ul{
			font-size: 14px;
			text-transform: capitalize;
			margin: 35px 0;
		}
		.show__Wrapper>a ul li{
			
			padding: 9px   9px 9px 0;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		.show__Wrapper>a span:hover{
			color: #f7313f;
		}

		.show__Wrapper__item{
			margin-right: 27px;
			margin-bottom: 30px;
		}
		.show__Wrapper__item__button{
			font-size: 17px;
			border: 1px solid;
			width: 55%;
			padding: 10px;
			margin: 0 auto;
			text-align: center;
			text-transform: capitalize;
		}
		.show__Wrapper__item__button:hover{
			color: #ff0029;
		}
		.title--product{
			font-weight: 400;
			font-size: 36px;
			text-transform: uppercase;
			font-family: Xolonium-Regular;
			line-height: 23px;
			margin-top: 85px;
			margin-bottom: 85px;
			text-align: center;
			color: #202020;
		}
		.show__Wrapper__item__name{
			height: 5%;
		}
		.show__Wrapper__item__info{
			margin-top: 70px;
		}
		.show__Wrapper__button{
			width: 100%;
    		padding: 0 65px 85px 65px;
		}
		.show__Wrapper__button>a{
			width: 40%;
			margin: 0 auto;
			display: block;
			text-align: center;
			text-decoration: none;
			font-size: 26px;
			text-transform: capitalize;
			color: #202020;
			cursor: pointer;
		}
		.show__Wrapper__button>a:hover{
			color: #ff0029 ;
			text-decoration: underline;
			transition: .4s ease-in-out;
		}
		.show__Wrapper__button>span{
			border: 1px solid #202020;
    		padding: 2px;
		}
	</style>
	
</head>
<body>
	<div class="header header--black">
		<div class="wrap--main">
			<a href="../index.php" class="wrap__logo" title="về trang chủ">
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
	<h2 class="title--product">LAPTOPS</h2>
	<div class="show show--product">
		<div class="show__Wrapper">
			<?php foreach($data as $item) { ?>
			<a href="detail/?id=<?php echo $item['productID']?>" class="show__Wrapper__item">
				<img src="../<?php echo $item['ProductImage']; ?>">
				<div class="show__Wrapper__item__name">
					<span><?php echo $item['ProductName']; ?></span>
				</div>
				<div class="show__Wrapper__item__info">
					<ul>
						<li><?php echo $item['Display']; ?></li>
						<li><?php echo $item['OS']; ?></li>
						<li><?php echo $item['Card']; ?></li>
					</ul>
				</div>
				<div class="show__Wrapper__item__button">
					buy now
				</div>
			</a>
			<?php } ?>
			<!-- <div class="show__Wrapper__button">
				<a class="show__Wrapper__button__link">
					View <span>
						<?php// echo $total_records-8;?> 
					</span>Products
				</a>
			</div> -->
		</div>
	</div>
	<div class="footer__content">
			<div class="footer__content__about">
				<div class="footer__content__about--link">
					<span >
						<a href="">about rog</a>
					</span>
					<span>
						<a href="">home</a>
					</span>
				</div>
				<ul>
					<li><a href="" title="facebook"><img src="../images/icon/facebook.png" alt="" ></a></li>
					<li><a href="" title="twitter"><img src="../images/icon/twitter.png" alt=""></a></li>
					<li><a href="" title="youtube"><img src="../images/icon/youtube.png" alt="" ></a></li>
					<li><a href=""  title="instagram"><img src="../images/icon/instagram.png" alt=""></a></li>
					
				</ul>
			</div>
			<div class="footer__content__copyright">
				<a href="#">
					<p>Global/English</p>
				</a>
				<div>
					<span> &#169; ASUSTeK Computer Inc. All rights reserved.</span>
					<span><a href="">Terms of Use Notice</a></span>
					<span><a href="">Privacy Policy</a></span>
				</div>
			</div>
		</div>
	</div>
	<!-- <script type="text/javascript">
		var current = 1;
		var group = "Laptop";
		var limit = 8;
		$(document).ready(function() {
			$('.show__Wrapper__button__link').click(function(event) {
				total = $('span',this).html()
				total-=8
				$('span',this).html(total)
				if($('span',this).html()<=0){
					$(this).css('display','none')
				}
				current+=1;
				$.get('../pagination.php',{i:current,group:group,limit:limit},function(data){
					$('.show__Wrapper').append(data)
				})
			});

		});
	</script> -->
	</body>
</html>
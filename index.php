<?php 
	require'libs/function.php';
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
	<link rel="stylesheet" type="text/css" href="css/style.css" >
	<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.8.3.min.js"></script> -->
	
</head>
<body>

	<div class="header header--black">
		<div class="wrap--main">
			<a href="#" class="wrap__logo" title="về trang chủ">
				<img src="images/logo_rog.png" alt="" title="Trở Về Trang Chủ">
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
		<div href="<?php echo $item['link'] ?>" class="banner banner--show_product" style=" background: url('<?php echo $item['images'] ?>');background-size: 100%;background-repeat: no-repeat;">
	
		<!-- trong này sẽ có text và đường dẫn của sản phẩm  -->	
	</div>
	<?php } ?>
	<h2 class="title--slide">EXPLORE OUR PRODUCTS</h2>
	<div class="slide--container">
		 <div class="slide__carousel"   onmouseover="clickable()" onmouseout="clickdisable()" >
			<div class="slide__carousel__WrapperOut">
				<div class="slide__carousel__WrapperOut__Wrapper">
					<?php foreach($slide as $item) { ?>
					<div class="Wrapper__item">
						<div class="item">
							<a href="<?php echo $item['link']?>">
								<img src="<?php echo $item['images']?>" alt="">
								<div class="item__name"><?php echo $item['slideName']?></div>                         
							</a>
						</div>  
					</div><?php } ?>
				</div>
			</div>
			
			<div class="control__buttons" id="control__button--prev">
				<img src="images/icon/btn_prev.png" alt="">
			</div>
			<div class="control__buttons" id="control__button--next">
				<img src="images/icon/btn_next.png" alt="">
			</div>	
		</div>
	</div>
	<div class="Actions--container">
		<div class="Actions__Wrapper">
			<h2>Recent releases</h2>
			<div class="Actions__News"> 
				<a href="" class="Actions__News__Item Item__top" >
					<div class="Action__News__Item__ContentImage" style="background:url('images/159357332572.png') no-repeat #1c1c1c 50%/cover;">
						<!--  lấy dữ liệu từ database xong chuyển vào background -->
					</div>	
					<div class="Actions__News__TitleContent"></div>
				</a>
				<a href="" class="Actions__News__Item Item__top">
					<div class="Action__News__Item__ContentImage" style="background:url('images/1592525257289.png') no-repeat #1c1c1c 50%/cover;"></div>	
					<div class="Actions__News__TitleContent"></div>
				</a>
				<a href="" class="Actions__News__Item Item__top" >
					<div class="Action__News__Item__ContentImage" style="background:url('images/1590059437977.png') no-repeat #1c1c1c 50%/cover;"></div>	
					<div class="Actions__News__TitleContent"></div>
				</a>
				<a href="" class="Actions__News__Item Item__bottom" >
					<div class="Action__News__Item__ContentImage " style="background:url('images/1588232525303.png') no-repeat #1c1c1c 50%/cover;"></div>	
					<div class="Actions__News__TitleContent"></div>
				</a>
				<a href="" class="Actions__News__Item Item__bottom" >
					<div class="Action__News__Item__ContentImage " style="background:url('images/1587083542860.png') no-repeat #1c1c1c 50%/cover;"></div>	
					<div class="Actions__News__TitleContent"></div>
				</a>
			</div>
			<div class="Actions__MoreButton">
				<a href="#" class="Actions__MoreButton__link">
					<span> learn more &#10095;</span>
				</a>
			</div>
		</div>

	</div>
	<h2 class="title--RogInAction">ROG IN ACTION</h2>
	<div class="RogInAction--container">
		<div class="RogInAction__Wrapper">
			<a href="" class="RogInAction__News">
				<img src="images/1593747298677.png" alt="">
				<div class="RogInAction__News__GamerText">
					<div class="RogInAction__News__GamerText__Info">
						<i><span>Gaming</span></i>
						<p class="RogInAction__News__GamerText__Info__title">Scratch your post-apocalyptic gaming itch with picks from the ROG team</p>
						<p class="RogInAction__News__GamerText__Info__Content">Got a post-apocalyptic gaming itch and a PC to scratch it with? The ROG team has some favorites in the genre for you to choose from.</p>
					</div>		
				</div>
			</a>
			<a href="" class="RogInAction__News">
				<img src="images/1593158709204.png" alt="">
				<div class="RogInAction__News__GamerText">
					<div class="RogInAction__News__GamerText__Info">
						<i><span>Gaming</span></i>
						<p class="RogInAction__News__GamerText__Info__title">Scratch your post-apocalyptic gaming itch with picks from the ROG team</p>
						<p class="RogInAction__News__GamerText__Info__Content">This month, the ROG team revisits the universes of Persona, Final Fantasy, and Half-Life, and crash-lands on an asteroid in Oxygen Not Included.</p>
					</div>		
				</div>
			</a>
			<a href="" class="RogInAction__News">
				<img src="images/1592635305794.png" alt="">
				<div class="RogInAction__News__GamerText">
					<div class="RogInAction__News__GamerText__Info">
						<i><span>Gaming</span></i>
						<p class="RogInAction__News__GamerText__Info__title">Scratch your post-apocalyptic gaming itch with picks from the ROG team</p>
						<p class="RogInAction__News__GamerText__Info__Content">VR isn't just fun—pioneering developers are turning it into a real workout. We got sweaty to see what VR fitness has in store.</p>
					</div>		
				</div>
			</a>
		</div>
	    <div class="RogInAction__MoreButton">
			<a href="#" class="RogInAction__MoreButton__link">
				<span> learn more &#10095;</span>
			</a>
		</div> 
	</div>
	<div class="footer">
		<div class="footer__story">
			<div class="footer__story__container">
				<h3 class="footer__story__container__title">The art of the rog universe</h3>
				<p class="footer__story__container__content">Technology never sleeps, nor should the action. For those keen on winning power, 
					the Republic of Gamers awaits. Driven by relentless innovation, ROG is committed to producing out-of-thi
					s-world experiences for gamers and enthusiasts everywhere.
				</p>
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
					<li>
						<a href="" title="facebook">
							<img src="images/icon/facebook.png" alt="" >	
						</a>
					</li>
					<li><a href="" title="twitter"><img src="images/icon/twitter.png" alt=""></a></li>
					<li><a href="" title="youtube"><img src="images/icon/youtube.png" alt="" ></a></li>
					<li><a href=""  title="instagram"><img src="images/icon/instagram.png" alt=""></a></li>
					
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
	
	
	<script type="text/javascript" src="js/javascript.js"></script>
	
</body>
</html>



<?php 
	require'libs/function.php';
	$banner = show_banner();
	$slide = show_slide();
	disconnect_db();
?> 




<!DOCTYPE html>
<html lang="vn">
<head>
	<meta charset="UTF-8">
	<title>ROG - Republic of Gamers｜Global | The Choice of Champions</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/style.css" >
	<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.8.3.min.js"></script> -->
	<style>
		.header {
    height: auto;
    width: 100%;
    color: #fff;
    font-family: segoeui,Microsoft JhengHei,sans-serif;
}

.header__wrapper{
    height: auto;
    width: 100%;
    padding: 0 65px;
    display: flex;
    justify-content: space-between;
    direction: ltr;
    background-color: #202020;
    box-shadow: 0 5px 5px 1px rgba(0,0,0,.1);
}

.header__wrapper__logo{
    width: 15.899999999%;
    padding: 12px 0;
    display: block;
}

.header__wrapper__logo img{
    width: 100%;
}

.header__wrapper__list{
    display: flex;
    list-style: none;
    padding: 12px 0;
    font-size: 15px;
    align-items: center;
}

.header__wrapper__list>li{
    margin: 0 19px;
}
.header__wrapper__list>li a{
    text-decoration: none;
    color: #fff;
    display: block;
}

.header__wrapper__list>li a:hover{
    color: #f7313f;
    transition: cubic-bezier(0.4, 0, 1, 1)  .4s;
}

.header__wrapper__icon{
    width: 8.899999999%;
    padding: 12px 0;
    display: flex;
    align-items: center;
}
.icon__child__2nd,.icon__child__1st{
    width: 50%;
}
.icon__child__2nd span,
.icon__child__1st span{
    display: block;
    cursor: pointer;
}

.icon__child__1st img{
    width: 40%;
}

.icon__child__2nd img{
    width:37%;

}
.header__seach{
    background-color: #202020;
    width: 100%;
    height: 122px;
    box-shadow: 0 5px 5px 1px rgba(0,0,0,.1);
    display: none;
    align-items: center;
    padding: 36px 0;
}
.header__seach__input{
    margin: 0 auto;
    border: 1px solid #767676;
    display: flex;
    padding: 11px;
    align-items: center;
}

.header__seach__input input{
    background-color: transparent;
    border: none;
    color: #767676;
    outline: none;
    font-size: 17px;
    width: 100%;
    height: 100%;
}

.header__seach img{
    width: 50%;
    margin-left: 13px;
}
.header__seach__input__icon{
    width: 6%;
}

.header__seach__wrapper{
    display: flex;
    align-items: center;
    margin: 0 auto;
}

.header__seach__close{
    margin-left: 50px;
    width: 20px;
    height: 20px;
}

.header__seach__close a{
    color: #767676;
    text-decoration: none;
    font-size: 20px;
    font-weight: 600;
}
	</style>
</head>
<body>
		<div class="header header--black">
			<div class="header__wrapper">
				<a href="" class="header__wrapper__logo">
					<img src="images/banner,background/logo_rog.png" alt="">
				</a>
				<ul class="header__wrapper__list">
					<li> <a href="">PRODUCTS</a></li>
					<li> <a href="">INNOVATION</a></li>
					<li> <a href="">DOWNLOAD</a></li>
					<li> <a href="">COMMUNITY</a></li>
					<li> <a href="">WHAT'S HOT</a></li>
					<li> <a href="">SUPPORT</a></li>
				</ul>
				<div class="header__wrapper__icon">
					<div class="icon__child__1st"> 
					<span id="open"> <img src="images/icon/seach.png" alt=""></span>
					</div>
					<div class="icon__child__2nd"> 
						<span><img src="images/icon/icon__user.png" alt=""></span>
					</div>
					
				</div>
			</div>
			<div class="header__seach">
				<div class="header__seach__wrapper">
					<div class="header__seach__input">
						<div class="header__seach__input__icon">
							<img src="images/icon/seach__input.png" alt="">
						</div>
						<input type="text">                
					</div>
					<div class="header__seach__close">
					<a href="" id="close">X</a> 
					</div>
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



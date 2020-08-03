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
	<link href="../images/banner,background/favicon.ico" rel="shortcut icon" type="image/x-icon" sizes="16x16">
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

		.header__wrapper{
    height: auto;
    width: 100%;
    padding: 0 65px;
    display: flex;
    justify-content: space-between;
    direction: ltr;
    background-color: #202020;
    box-shadow: 0 5px 5px 1px rgba(0,0,0,.1);
    font-family: segoeui,Microsoft JhengHei,sans-serif;
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
			margin: 0 auto;
			width: 100%;
			height: auto;
			font-family: segoeui,Microsoft JhengHei,sans-serif;
			direction: ltr;
			flex-wrap: wrap;
		}
		.show__Wrapper>a{
			width: calc((100% - 81px)/4);
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
		.show__Wrapper__item:nth-child(4n){
			margin-right:0;
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
			<div class="header__wrapper">
				<a href="../" class="header__wrapper__logo">
					<img src="../images/banner,background/logo_rog.png" alt="">
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
					<span id="open"> <img src="../images/icon/seach.png" alt=""></span>
					</div>
					<div class="icon__child__2nd"> 
						<span><img src="../images/icon/icon__user.png" alt=""></span>
					</div>
					
				</div>
			</div>
			<div class="header__seach">
				<div class="header__seach__wrapper">
					<div class="header__seach__input">
						<div class="header__seach__input__icon">
							<img src="../images/icon/seach__input.png" alt="">
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
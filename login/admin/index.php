<!DOCTYPE html>
<html lang="vn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMIN | Republic of Gamers</title>
    <style>
         * {
            margin: 0;
            padding: 0; 
            box-sizing: border-box;
        }

        body {
            background: #fff;
            height: auto;
            font-family: segoeui,Microsoft JhengHei,sans-serif;
        }

        .header {
            background-color:#202020;
            width: 100%;
            height: 60px;
        }

        .header .wrap--main {
            max-width: 1200px;
            min-width: 1024px;
            width: 100%;
            height: 60px;
            background: #202020;
            margin: auto;
            position: relative;
            line-height: 55px;
            display: flex;
            justify-content: center;
        }

        .wrap__logo {
            width: 20%;
            display: block;
            padding-top: 3px;
            
        }

        .wrap__logo img {
            height: auto;
            width: 100%;
            margin-top: 5px; 
        }

        .container__column{
            width: 15%;
            height: auto;
            background-color:#1a1a1ac9 ;
           
        }

        ul.container__column__menu li a{
            width: 100%;
            display: block;
            text-decoration: none;
            color: #fff;
            font-size: 17px;
            text-align: left;
            padding: 35px;
            text-transform: capitalize;
        }

        ul.container__column__menu li a:hover{
            background-color: #202020;
            color: #f7313f;
            transition: ease 0.4s ;
        }


        .container__column ul li{
            position: relative;
        }


        .container__column .container__column__menu__sub--menu{
            position: absolute;
            width: 100%;
            left: 202px;
            top: 0;
            list-style: none;
            background-color:#1a1a1ac9 ;
            display: none;
        }


        ul>.container__column__menu_sub--menu li a{
            width: 100%;
            text-decoration: none;
            color: #fff;
            font-size: 17px;
            text-align: left;
            padding: 35px;
            text-transform: capitalize;
        }

        .container__column li:hover .container__column__menu__sub--menu {
            display: block;
        }
        .container{
            display: flex;
            text-transform: capitalize;
            

            
        }
        .container__row{
            padding: 32px;
            line-height: 50px;
            
        }
        .copyright{
            display: flex;
            width: 100%;
            height: auto;
            background-color: #202020;
        }
        .copyright__logo a{
            padding: 20px;
            width: 65%;
            display: block;
        }

        .copyright__logo a img{
            width: 100%;
        }

        .copyright__content{
            display: flex;
        }
        .copyright__content div{
            margin: auto;
            color: #fff;
            padding: 0 65px;
        }
        .copyright__content span a{
            color: #fff;
            text-decoration: none;
            line-height: 40px;

        }
        .copyright__content span a:hover{
            text-decoration: underline;
            color: #f7313f;
        }
    </style>
</head>

<body>
	<div class="header header--black">
		<div class="wrap--main">
			<a class="wrap__logo" title="về trang chủ">
				<img src="../../images/logo_rog.png" alt="" title="Republic Of Gamers admin">
			</a>
		</div>
    </div>
   <div class="container">
        <div class="container__column">
        <ul class="container__column__menu">
            <li>
                    <a>sản phẩm</a>
                    <ul class="container__column__menu__sub--menu">
                        <li><a href="">chỉnh sửa</a></li>
                        <li><a href="add__product.php">thêm sản phẩm</a></li>
                        <li><a href="">theo dõi sản phẩm</a></li>
                        
                    </ul>
                </li>
                <li>   <a href="">   dịch vụ</a></li>
                <li>   <a href="">   hỏi đáp</a></li>
                <li>   <a href="">   quản lý user</a></li>
                <li>   <a href="">   báo cáo</a></li>
            </ul>
        </div>

        <div class="container__row">
            <h2>Chờ chút nhé !</h2>
            <p> đây là trang quản trị của chúng tôi,các thành viên tham gia phải chấp hành theo  mọi luật lệ chúng tôi đưa ra.</p>
        </div>
   </div>
   <div class="copyright">
   
    <div class="copyright__logo">
        <a href="">
            <img src="../../images/logo_rog.png" alt="">
        </a>
    </div>
    <div class="copyright__content">
        <div>
            <span>&#169;ASUSTEK COMPUTER INC. ALL RIGHTS RESERVED.</span>
        </div>
        <div>
            <span><a href=""> TERMS OF USE NOTICE</a></span>
            <span><a href="">PRIVACY POLICY</a></span>
        </div>
        
    </div>
   </div>
</body>
</html>
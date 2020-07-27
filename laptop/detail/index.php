<?php 
   session_start();
	require'../../libs/function.php';
	$banner = show_banner();
	$slide = show_slide();
<<<<<<< HEAD
   disconnect_db();
   $id = $_GET['id'];
   $sql = "SELECT * FROM product JOIN promotion ON product.productID = promotion.productID JOIN detail ON product.productID = detail.productID WHERE product.productID = '$id'";
   $query = mysqli_query($conn,$sql);
   $product = mysqli_fetch_assoc($query);
   disconnect_db();
   if(empty($product)){
       header('localtion:../');
    } 
=======
    connect_db();
    $id = $_GET['id'];
    $sql = "SELECT * FROM product JOIN promotion ON product.productID = promotion.productID JOIN detail ON product.productID = detail.productID WHERE product.productID = '$id'";
    $query = mysqli_query($conn,$sql);
    $product = mysqli_fetch_assoc($query);
    disconnect_db();
    if(empty($product)){
        header('localtion:../');
    }
>>>>>>> 574fd8d3e41d4879d156512cf0a418e18e433065
?> 








<!DOCTYPE html>
<html lang="vn">
    <head>
        <meta charset="UTF-8">
        <title>ROG - Republic of Gamers｜Global | The Choice of Champions</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="../../js/jquery.min.js"></script>
        <link rel="stylesheet" href="css/mystyle.css">
        
    </head>
    <body>
        <div class="header header--black">
            <div class="wrap--main">
                <a href="../../index.php" class="wrap__logo" title="về trang chủ">
                    <img src="../../images/logo_rog.png" alt="" title="Trở Về Trang Chủ">
                </a>
                <div class="wrap__menu">
                    <ul>
                        <li>
                            <a href="#">Products</a>
                            <ul>
                                <div>
                                    <li><a href="../">Laptops</a></li>
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
        <div class="footpath">
            <ul>
                <li><a href="../../">home</a><span>›</span></li>
                <li><a href="../"><?php echo $product['GroupProduct']; ?></a><span>›</span></li>
                <li><a href="../../"><?php echo $product['Brand']; ?></a></li>
            </ul>
        </div>
        <h1 class="product--name"><?php if(isset($product['ProductName'])) echo $product['ProductName']; ?></h1>
        <div class="row--separate"></div>
        <div class="product--info">
            <div class="product__image">
                <img src="<?php if(isset($product['ProductName'])) echo '../../'.$product['ProductImage'] ?>" alt="">
            </div>
            <div class="product__order">
                <div class="product__order__price">
                    <strong><?php echo number_format($product['PriceCurrent'],0,"","."); ?>đ</strong>  
                    <div class="product__order__price__installment">
                        trả góp 0%
                   </div>
                </div>
                <div class="product__order__promotions">
                    <strong>promotion:</strong>
                    <div class="product__order__promotions__info">
                        <span> <?php echo $product['promo1']; ?></span>
                        <span> <?php if($product['promo2']!=null || $product['promo2']!='') echo $product['promo2']; ?></span>
                        <span><?php if($product['promo3']!=null || $product['promo2']!='') echo $product['promo3']; ?></span>
                        <span> <?php if($product['promo4']!=null || $product['promo2']!='') echo $product['promo4']; ?></span>
                        <span> <?php if($product['promo5']!=null || $product['promo2']!='') echo $product['promo5']; ?></span>
                    </div>
                    <div class="product__order__vipsevice">
                        <strong>sevices:</strong>
                        <span><input type="checkbox">Giao ngay từ cửa hàng gần bạn nhất</span>
                        <span><input type="checkbox">Hướng dẫn sử dụng, giải đáp thắc mắc sản phẩm</span>
                        <span><input type="checkbox">Giao hàng ngay trong ngày</span>
                    </div>
                </div>
            </div>
            <div class="product__BuyandMore">
                <div class="product__BuyandMore__policy">
                    <ul>
                        <li><span>&#10151; Bộ sản phẩm gồm: Sách hướng dẫn,Adapter, Vỏ hộp, Sản phẩm</span></li>
                        <li><span>&#10151; Bảo hành chính hãng lên đến 1 năm</span></li>
                        <li class="child"><span> &#10151; Lỗi là đổi mới trong 1 tháng tại cửa hàng nơi nhận sản phẩm</span></li>
                    </ul>
                </div>
                <div class="product__BuyandMore__buy">
                    <a href="#" class="product__BuyandMore__buy__now">
                        <b>buy now</b>
                        <span>Giao tận nơi hoặc nhận tại siêu thị gần nhất</span>
                    </a>
                    <div class="product__BuyandMore__buy__installment">
                        <a href="#">
                            <b>mua trả góp 0%</b>
                            <span>thủ tục đơn giản</span>
                        </a>
                        <a href="#">
                            <b>trả góp qua thẻ</b>
                            <span>visa,master,jcb</span>
                        </a>
                    </div>
                </div>      
            </div> 
        </div>
        <div class="row--separate"></div>
        <div class="parameter">
            <div class="parameter__detail">
            <strong>thông số sản phẩm :</strong>
                <ul>
                    <li>
                        <span class="parameter__detail__span__1">Display :</span>
                        <span  class="parameter__detail__span__2"><?php echo $product['Display']; ?></span>
                    </li>
                    <li>
                        <span class="parameter__detail__span__1">Card :</span>
                        <span class="parameter__detail__span__2"><?php echo $product['Card']; ?></span>
                    </li>
                    <li>
                        <span class="parameter__detail__span__1">OS :</span>
                        <span  class="parameter__detail__span__2"><?php echo $product['OS']; ?>/span>
                    </li>
                    <li>
                        <span class="parameter__detail__span__1">RAM :</span>
                        <span  class="parameter__detail__span__2"><?php echo $product['RAM']; ?></span>
                    </li>
                    <li id="end">
                        <span class="parameter__detail__span__1">CPU :</span>
                        <span  class="parameter__detail__span__2"><?php echo $product['CPU']; ?></span>
                    </li>
                </ul>
                <div class="parameter__detail__ViewMore">
                    <a href="">xem thêm cấu hình chi tiết</a>
                </div>
            </div>
            <div class="parameter__VideoReview">
                <strong>video review sản phẩm:</strong>
                <span id="parameter__VideoReview__title">đặc điểm nổi bật của <?php if(isset($product['ProductName'])) echo $product['ProductName']; ?></span>                <!-- phpphpphphphphphp-->
                <img src="../../images/1593158709204.png" alt="">
                <img src="../../images/icon/youtube.png" alt="" id="parameter__VideoReview__icon">
            </div>
        </div>
        <div class="footer">
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
                                <img src="../../images/icon/facebook.png" alt="" >	
                            </a>
                        </li>
                        <li><a href="" title="twitter"><img src="../../images/icon/twitter.png" alt=""></a></li>
                        <li><a href="" title="youtube"><img src="../../images/icon/youtube.png" alt="" ></a></li>
                        <li><a href=""  title="instagram"><img src="../../images/icon/instagram.png" alt=""></a></li>
                        
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


    </body>
</html>
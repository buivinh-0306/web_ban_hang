<?php  
     global $conn;
    function connect_db(){
        global $conn;
        if(!$conn){
            $conn = mysqli_connect('localhost:3306', 'root', '','rog_web') or die ('không thể kết nối tới database');
            mysqli_set_charset($conn,'UTF8');
        }
    }
       
    function disconnect_db(){
        global $conn;
        if($conn){
            mysqli_close($conn);
        }
    }
 
    function show_banner(){
        global $conn;
        connect_db();
        $sql = 'SELECT * FROM banner';
        $query = mysqli_query($conn , $sql);
        $result = array();
        if($query){
         while($row = mysqli_fetch_assoc($query)){
                $result[] = $row;
            }
        }
        return $result;
    }

    function show_slide(){
        global $conn;
        connect_db();
        $sql = 'SELECT * FROM slide';
        $query = mysqli_query( $conn, $sql);
        $result = array();
        if($query){
            while($row = mysqli_fetch_assoc($query)){
                $result[] = $row;
            }
        }
        return $result;
    }


    function group_product($group,$limit){
		global $conn;
		connect_db();
		$sql = "SELECT * FROM product JOIN detail ON product.productID = detail.productID WHERE product.GroupProduct = '$group' LIMIT $limit";
		$query = mysqli_query($conn,$sql);
		$result = array();
		if($query) {
			while($row = mysqli_fetch_assoc($query)){
				$result[] = $row;
			}
		}
		return $result;
	}
    function addpromo($Promo1,$Promo2,$Promo3,$Promo4,$Promo5,$productname){
	
		global $conn;
		connect_db();
		$sql = "INSERT INTO promotion(Promo1,Promo2,Promo3,Promo4,Promo5,productID) VALUES ('$Promo1','$Promo2','$Promo3','$Promo4','$Promo5',(SELECT product.productID FROM product WHERE product.ProductName='$productname'))";
		$query = mysqli_query($conn, $sql);
		return $query;
	}
	
    function add_product($product,$image,$pricepromo,$pricecurrent,$brand,$quantity,$group,$folder){
		global $conn;
		connect_db();
		$sql = "INSERT INTO product(ProductName,ProductImage,PriceCurrent,PricePromo,Brand,Quantity,GroupProduct,folder) VALUES ('$product','$image','$pricecurrent','$pricepromo','$brand','$quantity','$group','$folder')";
		$query = mysqli_query($conn, $sql);
		return $query;
	}

?> 

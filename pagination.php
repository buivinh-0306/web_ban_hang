<?php
/*require'libs/function.php';
$i = $_GET['i'];
$group = $_GET['group'];
$linit = $_GET['limit'];
settype($i,'int');
function total_record($group){
    connect_db();
    global $conn;
    $sql = "SELECT count(productID) AS total FROM product WHERE GroupProduct = '$group'";
	$query = mysqli_query($conn, $sql);
	if($query){
		$row = mysqli_fetch_assoc($query);
	}
	return $row;
}
$total_records = total_record($group);
$total_records = $total_records['total'];
$total_page = ceil($total_records / $limit);
if ($i > $total_page){
    $i = $total_page;
}else if ($i < 1){
    $i = 1;
}
$start = ($i-1)*$limit;
function page($group,$start,$limit){

	connect_db();
	global $conn;
	$sql = "SELECT * FROM product JOIN detail ON product.productID = detail.productID WHERE product.GroupProduct = '$group' LIMIT $start,$limit";
	$query = mysqli_query($conn, $sql);
	$result = array();
	if($query){
		while($row = mysqli_fetch_assoc($query)){
			$result[] =$row;
		}
	}
    return $result;
}

$result = page($group,$start,$limit);

disconnect_db();

foreach($result as $data){
    echo'<a href="detail/?id='.$data['productID'].'"class="show__Wrapper__item">
                <img src="../'.$data["ProductImage"].'">
                <div class="show__Wrapper__item__name">
                    <span> '.$data['ProductName'].'</span>
                </div>
                <div class="show__Wrapper__item__info">
                    <ul>
                        <li>'.$data['Display'].'</li>
                        <li>'.$data['OS'].'</li>
                        <li>'.$data['Card'].'</li>
                    </ul>
                </div>
                <div class="show__Wrapper__item__button">
                    buy now
                </div>
            </a>
        ';




}


*/






?>
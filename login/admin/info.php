<?php
    require'../../libs/function.php';
	connect_db();
    global $conn;
	$data = array();
	
    function adddetail($Display,$Card,$gateway,$OS,$RearCamera,$FrontCamera,$CPU,$RAM,$ROM,$network,$battery,$design,$productname){
	
		global $conn;
		connect_db();
		$sql = "INSERT INTO detail(Display,Card,gateway,OS,RearCamera,FrontCamera,CPU,RAM,ROM,Network,battery,design,ProductID) VALUES ('$Display','$Card','$gateway','$OS','$RearCamera','$FrontCamera','$CPU','$RAM','$ROM','$network','$battery','$design',(SELECT product.productID FROM product WHERE product.ProductName='$productname'))";
		$query = mysqli_query($conn, $sql);
		return $query;
	}

    if (isset($_POST['submit'])) {
		$data['productname'] = $_POST['productname'];
		$data['Display'] = $_POST['Display'];
		$data['Card'] = $_POST['Card'];
		$data['gateway'] = $_POST['gateway'];
		$data['OS'] = $_POST['OS'];
		$data['RearCamera'] = $_POST['RearCamera'];
		$data['FrontCamera'] = $_POST['FrontCamera'];
		$data['CPU'] = $_POST['CPU'];
		$data['RAM'] = $_POST['RAM'];
		$data['ROM'] = $_POST['ROM'];
		$data['network'] = $_POST['network'];
		$data['battery'] = $_POST['battery'];
		$data['design'] = $_POST['design'];

	
		adddetail($data['Display'],$data['Card'],$data['gateway'],$data['OS'],$data['RearCamera'],$data['FrontCamera'],$data['CPU'],$data['RAM'],$data['ROM'],$data['network'],$data['battery'],$data['design'],$data['productname']);
		header('location: add__product.php');
	}
 	disconnect_db();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Thêm mới sản phẩm</title>
	<style type="text/css">
		*{
			padding: 0;
			margin: 0;
			box-sizing: border-box; 
		}
		body{
            font-size: 16px ;
            font-family: sans-serif;
		    color: #333;
		    background: #f0f0f0;
		    outline: none;
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
		.main-body{
			padding: 0 15px;
			background: #fff;
			text-align: center;
		}
		.container{
			padding: 15px;
			width: 1024px;
			margin: auto;
		}
		table{
			width: 100%;
			border: 1px solid #f0f0f0;
		}
		th{
			width: 300px;
			color: #768192;
		    background-color: #d8dbe0;
		}
		td{
		    text-align: center;
		}
		table input{
			margin: 0 auto;
			padding: 0.7em;
			width: 100%;
		}
		input:focus{
			outline: none
		}
		input[type="submit"]{
			display: block;
			padding: 15px;
			transition: all 0.5s;
			cursor: pointer;
			background-color: #d8dbe0;
			border: #202020 1px solid;
			outline: none;
			margin: 0 auto;
			text-transform: uppercase;
			border-radius: 12px;
		}
		input[type="submit"]:hover{
			background-color:  #202020 ;
			border: #f7313f 1px solid;
			color: #f7313f;
		}
		.btn-add{
			margin-top: 25px;
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
	<div class="main-body">
		<div class="back"><a href="add__product.php">Quay lại</a></div>
		<div class="container">
			<form action="" method="POST">
					<caption>Bảng thông số kỹ thuật của sản phẩm</caption>
					<table>
						<tr>
							<th>Tên sản phẩm</th>
							<td>
							<input type="text" name="productname" value="<?php echo !empty($data['productname']) ? $data['productname'] : '' ?>">
						</td>					
						</tr>
						<tr>
							<th>Màn hình</th>
							<td>
								<input class="able" type="text" name="Display" value="" required> 
							</td>				
						</tr>
						<tr>
							<th>Card (Đối với sản phẩm laptop)</th>
							<td>
								<input class="able" type="text" name="Card" value="" required>
							</td>				
						</tr>
						<tr>
							<th>Cổng kết nối </th>
							<td>
								<input class="able" type="text" name="gateway" value="" required>
							</td>				
						</tr>
						<tr>
							<th>Hệ điều hành</th>
							<td>
								<input class="able" type="text" name="OS" value="" required>
							</td>				
						</tr>
						<tr>
							<th>Camera sau</th>
							<td>
								<input class="able" type="text" name="RearCamera" value="" required>
							</td>				
						</tr>
						<tr>
							<th>Camera trước</th>
							<td>
								<input class="able" type="text" name="FrontCamera" value="" required>
							</td>				
						</tr>
						<tr>
							<th>CPU</th>
							<td>
								<input class="able" type="text" name="CPU" value="" required>
							</td>				
						</tr>
						<tr>
							<th>RAM</th>
							<td>
								<input class="able" type="text" name="RAM" value="" required>
							</td>				
						</tr>
						<tr>
							<th>ROM</th>
							<td>
								<input class="able" type="text" name="ROM" value="" required>
							</td>				
						</tr>
						<tr>
							<th>Kết nối mạng</th>
							<td>
								<input class="able" type="text" name="network" value="" required>
							</td>				
						</tr>
						<tr>
							<th>Dung lượng pin</th>
							<td>
								<input class="able" type="text" name="battery" value="" required>
							</td>				
						</tr>
						<tr>
							<th>Thiết kế (Đối với sản phẩm laptop)</th>
							<td>
								<input class="able" type="text" name="design" value="" required>
							</td>				
						</tr>
				</table>
				<div class="btn-add"><input type="submit" name="submit" value="Thêm"></div>
			</form>
		</div>
	</div>
</body>
</html>
<?php
    require'../../libs/function.php';
	connect_db();
    global $conn;
	$data = array();

    if (isset($_POST['submit'])) {
		$data['productname'] = $_POST['productname'];
		$data['image'] = 'images/product/'.$_POST['image'];
		$data['pricepromo'] = $_POST['pricepromo'];
		$data['pricecurrent'] = $_POST['pricecurrent'];
		$data['brand'] = $_POST['brand'];
		$data['quantity'] = $_POST['quantity'];
		$data['group'] = $_POST['group'];
		$data['folder'] = $_POST['folder'];

		$data['Promo1'] = $_POST['Promo1'];
		$data['Promo2'] = $_POST['Promo2'];
		$data['Promo3'] = $_POST['Promo3'];
		$data['Promo4'] = $_POST['Promo4'];
		$data['Promo5'] = $_POST['Promo5'];

		addpromo($data['Promo1'],$data['Promo2'],$data['Promo3'],$data['Promo4'],$data['Promo5'],$data['productname']);

		add_product($data['productname'],$data['image'],$data['pricepromo'],$data['pricecurrent'],$data['brand'],$data['quantity'],$data['group'],$data['folder']);
		header('location: info.php');
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
			margin: auto;
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
			background-color: #00a88a;
			border: #00a88a 1px solid;
			outline: none;
		}
		input[type="submit"]:hover{
			background-color: #fed700;
			border: #fed700 1px solid;
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
		<div class="back"><a href="index.php">Quay lại</a></div>
		<div class="container">
			<form action="#" method="POST">
				<table>
					<h2>Bảng thông tin chung của sản phẩm</h2>
					<tr>
						<th>Tên sản phẩm</th>
						<td>
							<input type="text" name="productname" value="" required>
						</td>				
					</tr>
					<tr>
						<th>Hình ảnh</th>
						<td>
							<input type="file" name="image" value="" required>
						</td>				
					</tr>
					<tr>
						<th>Giá khuyến mãi(Nếu có)</th>
						<td>
							<input type="number" name="pricepromo" value="" required>
						</td>				
					</tr>
					<tr>
						<th>Giá gốc</th>
						<td>
							<input type="number" name="pricecurrent" value="" required>
						</td>				
					</tr>
					<tr>
						<th>Thương hiệu</th>
						<td>
							<input type="text" name="brand" value="" required>
						</td>				
					</tr>
					<tr>
						<th>Số lượng</th>
						<td>
							<input type="number" name="quantity" value="" required>
						</td>				
					</tr>
					<tr>
						<th>Nhóm sản phẩm</th>
						<td>
							<input type="text" name="group" value="" required>
						</td>				
					</tr>
					<tr>
						<th>Folder</th>
						<td>
							<input type="text" name="folder" value="" required>
						</td>				
					</tr>
				</table>
				<table>
					<caption>Bảng thông tin khuyến mãi của sản phẩm</caption>
					<tbody>
						<tr>
							<th>Khuyến mãi 1</th>
							<td>
								<input class="able" type="text" name="Promo1" value="">
							</td>				
						</tr>
						<tr>
							<th>Khuyến mãi 2</th>
							<td>
								<input class="able" type="text" name="Promo2" value="">
							</td>				
						</tr>
						<tr>
							<th>Khuyến mãi 3</th>
							<td>
								<input class="able" type="text" name="Promo3" value="">
							</td>				
						</tr>
						<tr>
							<th>Khuyến mãi 4</th>
							<td>
								<input class="able" type="text" name="Promo4" value="" >
							</td>				
						</tr>
						<tr>
							<th>Khuyến mãi 5</th>
							<td>
								<input class="able" type="text" name="Promo5" value="">
							</td>				
						</tr>
					</tbody>
				</table>
				
				<div class="btn-add"><input type="submit" name="submit" value="Thêm"></div>
			</form>
		</div>
	</div>
</body>
</html>
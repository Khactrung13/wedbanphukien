<?php
	if(isset($_GET['trang'])){
		$page = $_GET['trang'];
	}else{
		$page ='1';
	}
	if($page == '' || $page==1){
		$begin = 0;
	}
	else{
		$begin = ($page*12)-12;
	}
	$sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc =tbl_danhmuc.id_danhmuc
	ORDER BY tbl_sanpham.id_sanpham DESC LIMIT $begin,12";
    $query_pro= mysqli_query($mysqli,$sql_pro);
?>	
<h3 style=" padding-left: 20px;
			font-size: 20px;
			margin-top: 7px;
			margin-bottom: 5px;"> Sản phẩm mới nhất</h3>
				<ul class ="product_list">
					<?php
						while($row =mysqli_fetch_array($query_pro)){
					?>
					<li>
						<a href="index.php?ql=sanpham&id=<?php echo $row['id_sanpham'] ?>">
							<img src ="../admincp/uploads/<?php echo $row['hinhanh'] ?>  ">
							<p class="title_product"> <?php echo $row['tensanpham'] ?></p>
							<p class="price">Giá : <?php echo number_format($row['giasp'],0,',','.').' VND' ?></p>
							<p style="text-align: center;
									font-size: 12px;
									font-weight: bold;
									color: blueviolet;">
									Danh mục : <?php echo $row['tendanhmuc'] ?></p>
						</a>
					</li>
					<?php
						}
					?>
					
				</ul>
				<div style="clear: both;"></div>
				<?php
					$sql_trang= mysqli_query($mysqli,"SELECT * FROM tbl_sanpham");
					$row_count = mysqli_num_rows($sql_trang);
					$trang= ceil($row_count/12);
				?>
				<p class="trang">Trang hiện tại : <?php echo $page?>/<?php echo $trang?> </p>
				<ul class="list_trang">
					<?php
						for($i =1 ;$i<=$trang;$i++){
					?>
							<li><a <?php if($i == $page){ 
								echo 'style="color:red"';
								}else{
								echo '';
								} 
								?> 
							href="index.php?trang=<?php echo $i?>"><?php  echo $i ?></a></li>
					<?php
						}
					?>
			
				</ul>
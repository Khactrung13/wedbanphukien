
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
	$id=$_GET['id'];	
	$sql_pro = "SELECT * FROM tbl_sanpham WHERE tbl_sanpham.id_danhmuc ='$_GET[id]' 
	ORDER BY id_sanpham DESC lIMIT $begin,12";
    $query_pro= mysqli_query($mysqli,$sql_pro);
	//get ten danh muc
	$sql_cate = "SELECT * FROM tbl_danhmuc WHERE tbl_danhmuc.id_danhmuc ='$_GET[id]' LIMIT 1";
    $query_cate= mysqli_query($mysqli,$sql_cate);
	$row_title = mysqli_fetch_array($query_cate);
?>
<h3 style="padding-left: 20px;font-size: 20px;margin-top:7px;margin-bottom: 5px;"> Danh mục sản phẩm : <?php echo $row_title['tendanhmuc']?> </h3>
				<ul class ="product_list">
					<?php
					while($row_pro =mysqli_fetch_array($query_pro)){
					?>
					<li>
						<a href="index.php?ql=sanpham&id=<?php echo $row_pro['id_sanpham'] ?>">
							<img src ="../admincp/uploads/<?php echo $row_pro['hinhanh'] ?>  ">
							<p class="title_product">Tên sản phẩm : <?php echo $row_pro['tensanpham'] ?></p>
							<p class="price"><?php echo number_format($row_pro['giasp'],0,',','.').'vnd' ?></p>
						</a>
					</li>
					<?php
					}
					?>
				</ul>

				<div style="clear: both;"></div>
				<?php
					$sql_trang= mysqli_query($mysqli,"SELECT * FROM tbl_sanpham WHERE id_danhmuc = '$_GET[id]'");
					$row_count = mysqli_num_rows($sql_trang);
					$trang= ceil($row_count/12);
				?>
				<p class="trang">Trang hiện tại : <?php echo $page?>/<?php echo $trang?> </p>
				<ul class="list_trang">
					<?php
						for($i =1 ;$i<=$trang;$i++){
					?>
							<li><a <?php if($i == $page){ 
								echo 'style="color:black"';
								}else{
								echo '';
								} 
								?> 
						href="index.php?ql=danhmucsanpham&id=<?php echo $id?>&trang=<?php echo $i?>"><?php  echo $i ?></a></li>
					<?php
						}
					?>
			
				</ul>
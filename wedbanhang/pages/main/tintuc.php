
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
		$begin = ($page*6)-6;
	}
	$id=$_GET['id'];	
	$sql_probv = "SELECT * FROM tbl_baiviet
	ORDER BY id_baiviet DESC lIMIT $begin,6";
    $query_probv= mysqli_query($mysqli,$sql_probv);
	//get ten danh muc
	$sql_catebv = "SELECT * FROM tbl_danhmucbaiviet WHERE tbl_danhmucbaiviet.id_danhmucbaiviet ='$_GET[id]' LIMIT 1";
    $query_catebv= mysqli_query($mysqli,$sql_catebv);
	$row_title = mysqli_fetch_array($query_catebv);
?>
<h3 style="padding-left: 20px;font-size: 20px;margin-top:7px;margin-bottom: 5px;"> Tin tức mới nhất <?php echo $row_title['tendanhmuc_baiviet']?> </h3>
				<ul>
					<?php
					while($row_pro =mysqli_fetch_array($query_probv)){
					?>
					<li class ="danhmucbaiviet">
						<a href="index.php?ql=baiviet&id=<?php echo $row_pro['id_baiviet'] ?>">
							<img style ="width: 100%;height: 120px;"src ="../admincp/uploadsbaiviet/<?php echo $row_pro['hinhanh'] ?>  ">
							<p style="text-decoration: none;text-align: center;font-size: 20px;font-weight: bold;color:black" class="danhmuc"><?php echo $row_pro['tenbaiviet'] ?></p>
                        	<b style="color:black;font-weight: 400;"><?php echo $row_pro['tomtat']?></b>

						</a>

					</li>
					<?php
					}
					?>
				</ul>
				<div style="clear: both;"></div>
				<?php
					$sql_trang= mysqli_query($mysqli,"SELECT * FROM tbl_baiviet");
					$row_count = mysqli_num_rows($sql_trang);
					$trang= ceil($row_count/6);
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
						href="index.php?ql=tintuc&id=<?php echo $id?>&trang=<?php echo $i?>"><?php  echo $i ?></a></li>
					<?php
						}
					?>
			
				</ul>
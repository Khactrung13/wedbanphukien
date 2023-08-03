<div class="a">
<div class="sidebar">
				<ul class="list_sidebar">
				<p 
				style="font-size: 20px;
						font-weight: bold;
						padding: 5px;
						color: brown;
						font-size: 20px;
    					padding-left: 25px;
						margin: auto;text-transform:uppercase"
				>Danh mục sản phẩm</p>
				<?php
					$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
					$query_danhmuc= mysqli_query($mysqli,$sql_danhmuc);
					while($row=mysqli_fetch_array($query_danhmuc)){
				?>
				<li><a style="text-transform:uppercase;padding-left: 20px;" href="index.php?ql=danhmucsanpham&id=<?php echo $row['id_danhmuc'] ?>"><?php echo $row['tendanhmuc']?></a></li>
				
				<?php
					}
				?>
			</ul>
			<ul class="list_sidebar">
				<p 
				style="font-size: 20px;
						font-weight: bold;
						padding: 5px;
						color: brown;
						padding-left: 30px;
						margin: auto;text-transform:uppercase"
				>Danh mục bài viết</p>
				<?php
					$sql_danhmucbv = "SELECT * FROM tbl_danhmucbaiviet ORDER BY id_danhmucbaiviet DESC";
					$query_danhmucbv= mysqli_query($mysqli,$sql_danhmucbv);
					while($row=mysqli_fetch_array($query_danhmucbv)){
				?>
				<li><a style="text-transform:uppercase;padding-left: 20px;" href="index.php?ql=danhmucbaiviet&id=<?php echo $row['id_danhmucbaiviet'] ?>"><?php echo $row['tendanhmuc_baiviet']?></a></li>
				
				<?php
					}
				?>
			</ul>
			</div>
</div>
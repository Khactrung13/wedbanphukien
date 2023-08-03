<div class="clear"></div>
<div class="main">
<?php
				if(isset($_GET['action']) && $_GET['query']){
					$tam =$_GET['action'];
					$query = $_GET['query'];
				}
				else{
					$tam ='' ;
					$query='';
				}
				if($tam=='quanlydanhmucsanpham' && $query=='them' ){
					include('them.php');
                    include('lietke.php');
				}else if($tam=='quanlydanhmucsanpham' && $query=='sua'){
					include('sua.php');
				}else if($tam=='quanlysp' && $query=='them'){
					include('themsp.php');
                    include('lietkesp.php');
				}else if($tam=='quanlysp' && $query=='sua'){
					include('suasp.php');
				}else if($tam=='dangxuat' &&$query=='dangxuat'){
					unset($_SESSION['dangnhap']);
					header('Location:login.php');
				}
				else if($tam=='doimatkhau' &&$query=='doimatkhau'){
					include('doimatkhau.php');
				}
				else if($tam=='quanlydonhang' &&$query=='lietke'){
					include('lietkedonhang.php');
				}
				else if($tam=='donhang' &&$query=='xemdonhang'){
					include('xemdonhang.php');
				}
				else if($tam=='quanlylienhe' &&$query=='capnhat'){
					include('quanlylienhe.php');
				}
				else if($tam=='quanlydanhmucbaiviet' &&$query=='them'){
					include('themdanhmucbaiviet.php');
					include('lietkedanhmucbaiviet.php');
				}
				else if($tam=='quanlydanhmucbaiviet' &&$query=='sua'){
					include('suadanhmucbaiviet.php');
				}
				else if($tam=='quanlybaiviet' &&$query=='them'){
					include('thembaiviet.php');
					include('lietkebaiviet.php');
				}
				else if($tam=='quanlybaiviet' &&$query=='sua'){
					include('suabaiviet.php');
				}
				else{
					include('modules/dashboard.php');
				}

				?>
</div>
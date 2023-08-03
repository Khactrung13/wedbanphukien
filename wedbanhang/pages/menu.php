<?php
    session_start();
    $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
    $query_danhmuc= mysqli_query($mysqli,$sql_danhmuc);
?>
<?php
    if(isset($_GET['dangxuat']) && $_GET['dangxuat']==1){
        unset($_SESSION['dangky']);
        unset($_SESSION['dangnhap']);
        
    }
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="    width: 100%;">
  <a class="navbar-brand" style="margin-left: 10px;
    margin-right: 10px;" href="index.php">Trang chủ </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">

        <a style="color:white;margin-left: 10px;
    margin-right: 10px;" class="nav-link" href="index.php?ql=giohang">Giỏ hàng </a>
      <li  class="nav-item"><a style="color:white;margin-left: 10px;
    margin-right: 10px;" class="nav-link" href="index.php?ql=tintuc"> Tin tức</a></li>
      <li  class="nav-item"><a style="color:white;margin-left: 10px;
    margin-right: 10px;" class="nav-link" href="index.php?ql=lienhe"> Liên hệ</a></li>
      <li class="nav-item dropdown">
        <a style="color:white;margin-left: 10px;
    margin-right: 10px;"  class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Danh mục sản phẩm 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <?php
                while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
                ?>
          <a style="color:black"  class="dropdown-item" href="index.php?ql=danhmucsanpham&id=<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc']?></a>
          <?php
                }
                ?>
        </div>
      </li><?php
                    if(isset($_SESSION['dangky']) || isset($_SESSION['dangnhap'])){
                        ?>
                        <li class="nav-item "><a style="color:white"  class="nav-link" href="index.php?dangxuat=1"> Đăng xuất : <?php if(isset($_SESSION['dangky'])){ echo $_SESSION['dangky'];} ?> </a></li>

                        <li class="nav-item"><a style="color:white" class="nav-link" href="index.php?ql=thaydoimatkhau"> Đổi mật khẩu </a></li>
                        <?php
                    }else{
                        ?>
                        <li class="nav-item"><a style="color:white"  class="nav-link" href="index.php?ql=dangky"> Đăng ký</a></li>
                        <?php
                    }
                ?>

    </ul>
    <form class="form-inline my-2 my-lg-0" action="index.php?ql=timkiem" method="POST">
      <input class="form-control mr-sm-2" type="search" placeholder="Từ khoá ....." aria-label="Search" name="tukhoa">
      <button style="color: white;border: 1px solid;"class="btn btn-outline-success my-2 my-sm-0" type="submit" name="timkiem">Tìm kiếm </button>
    </form>
  </div>
</nav>


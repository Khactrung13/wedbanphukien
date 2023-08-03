<?php
include('config/config.php');

$tendanhmucbaiviet = $_POST['tendanhmucbaiviet'];
$thutu = $_POST['thutu'];

if(isset($_POST['themdanhmucbaiviet'])){
    $sql_them ="INSERT INTO tbl_danhmucbaiviet(tendanhmuc_baiviet,thutu) 
    VALUES('".$tendanhmucbaiviet."','".$thutu."')";
    mysqli_query($mysqli,$sql_them);
    header('Location:index.php?action=quanlydanhmucbaiviet&query=them');
}
else if(isset($_POST['suadanhmucbaiviet'])){
    $sql_sua ="UPDATE tbl_danhmucbaiviet SET tendanhmuc_baiviet='".$tendanhmucbaiviet."' ,thutu='".$thutu."' 
    WHERE id_danhmucbaiviet='$_GET[idbaiviet]' ";
    mysqli_query($mysqli,$sql_sua);
    header('Location:index.php?action=quanlydanhmucbaiviet&query=them');
}
else {
    $id=$_GET['idbaiviet'];
    $sql_xoa = "DELETE FROM tbl_danhmucbaiviet WHERE id_danhmucbaiviet='".$id."' ";
    mysqli_query($mysqli,$sql_xoa);
    header('Location:index.php?action=quanlydanhmucbaiviet&query=them');
}

?>
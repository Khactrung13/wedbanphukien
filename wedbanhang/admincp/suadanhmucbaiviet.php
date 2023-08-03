<?php
    $sql_sua_danhmucbv = "SELECT * FROM tbl_danhmucbaiviet WHERE id_danhmucbaiviet =$_GET[idbaiviet] LIMIT 1";
    $query_sua_danhmucbv = mysqli_query($mysqli,$sql_sua_danhmucbv);
?>
<p style="font-size: 30px;
    font-weight: bold;
    padding-left: 500px;">Quản lý danh mục bài viết</p>
<p style="font-size: 18px;
    font-weight: bold;padding-left:20px">Sửa danh mục sản bài viết
</p>
<table border="1" width = "50%" style="border-collapse:collapse">
<form method="POST" action="xulydanhmucbaiviet.php?idbaiviet=<?php echo $_GET['idbaiviet']?>">
  <?php
    while ($dong= mysqli_fetch_array($query_sua_danhmucbv)){
  ?>
  <tr>
    <td>Tên danh mục bài viết</td>
    <td><input type ="text" value="<?php echo $dong['tendanhmuc_baiviet'] ?>" name="tendanhmucbaiviet"></td>
  </tr>
  <tr>
    <td>Thứ tự </td>
    <td><input type ="text" value="<?php echo $dong['thutu'] ?>"name="thutu"></td>
  </tr>
  <tr>
    <td colspan ="2"><input type ="submit" name="suadanhmucbaiviet" value="Cập nhật danh mục bài viết"></td>
  </tr>
  <?php
    }
  ?>
</form>
</table>

<p style="font-size: 30px;
    font-weight: bold;
    padding-left: 530px;">Quản lý bài viết</p>
<p style="font-size: 18px;
    font-weight: bold;padding-left:20px">Thêm bài viết</p>
<table border="1" width = "100%" style="border-collapse:collapse">
<form method="POST" action="xulybaiviet.php" enctype="multipart/form-data">
  <tr>
    <td>Tên bài viết</td>
    <td><input  style="width: 800px;margin-left: 5px" type ="text" name="tenbaiviet"></td>
  </tr>
  <tr>
    <td>Hình ảnh</td>
    <td><input type ="file" name="hinhanh" ></td>
  </tr>
  <tr>
    <td>Nội dung</td>
    <td><textarea row = "15" cols="100" name = "noidung" style="resize:none"></textarea></td>
  </tr>
  <tr>
    <td>Tóm tắt</td>
    <td><textarea row = "15" cols="100" name = "tomtat" style="resize:none"></textarea></td>
  </tr>
  <tr>
    <td>Danh mục bài viết </td>
    <td>
        <select name="iddanhmuc">
            <?php
            $sql_danhmuc = "SELECT * FROM tbl_danhmucbaiviet ORDER BY id_danhmucbaiviet DESC";
            $query_danhmuc= mysqli_query($mysqli,$sql_danhmuc);
            while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
            ?>
            <option value="<?php echo $row_danhmuc['id_danhmucbaiviet'] ?>"><?php echo $row_danhmuc['tendanhmuc_baiviet'] ?></option>
            <?php
            }
            ?>
        </select>
    </td>
  </tr>
  <tr>
    <td>Tình trạng </td>
    <td>
        <select name="tinhtrang">
            <option value="1">Kích hoạt</option>
            <option value="0">Ẩn</option>
        </select>
    </td>
  </tr>
  <tr>
    <td colspan ="2"><input type ="submit" name="thembaiviet" value="Thêm bài viết"></td>
  </tr>
</form>
</table>
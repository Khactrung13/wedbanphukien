<?php
    $sql_lietke_danhmucbv = "SELECT * FROM tbl_danhmucbaiviet ORDER BY thutu DESC";
    $query_lietke_danhmucbv = mysqli_query($mysqli,$sql_lietke_danhmucbv);
?>
<p style="font-size: 18px;
    font-weight: bold;padding-left:20px">Liệt kê danh mục bài viết</p>
<table style="width:100%;text-align:center" border="1" style="border-collapse:collapse">
  <tr>
    <th>Id</th>
    <th>Tên danh mục</th>
    <th>Quản lý</th>
  </tr>
    <?php
    $i = 0;
    while($row = mysqli_fetch_array($query_lietke_danhmucbv)){
        $i++;
    ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['tendanhmuc_baiviet'] ?></td>

    <td>
        <a href="xulydanhmucbaiviet.php?idbaiviet=<?php echo $row['id_danhmucbaiviet'] ?>">Xoá</a> |
        <a href="?action=quanlydanhmucbaiviet&query=sua&idbaiviet=<?php echo $row['id_danhmucbaiviet']?>">Sửa</a>
    </td>  
  </tr>
    <?php
    }
    ?>
</table>
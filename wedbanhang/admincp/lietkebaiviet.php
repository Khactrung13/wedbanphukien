<?php
    $sql_lietke_baiviet = "SELECT * FROM tbl_baiviet,tbl_danhmucbaiviet 
    WHERE tbl_baiviet.id_danhmucbaiviet=tbl_danhmucbaiviet.id_danhmucbaiviet
    ORDER BY  tbl_baiviet.id_baiviet DESC";
    $query_lietke_baiviet = mysqli_query($mysqli,$sql_lietke_baiviet);
?>
<p style="font-size: 18px;
    font-weight: bold;padding-left:20px">Liệt kê bài viết</p>
<table style="width:100%;text-align:center" border="1" style="border-collapse:collapse">
  <tr>
    <th>Id</th>
    <th>Tên bài viết</th>
    <th>Hình ảnh</th>
    <th>Danh mục</th>
    <th>Tóm tắt</th>
    <th>Trạng thái</th>
    <th>Quản lý</th>
  </tr>
    <?php
    $i = 0;
    while($row = mysqli_fetch_array($query_lietke_baiviet)){
        $i++;
    ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['tenbaiviet'] ?></td>
    <td><img src="uploadsbaiviet/<?php echo $row['hinhanh'] ?> " width="150px"></td>
    <td><?php echo $row['tendanhmuc_baiviet'] ?></td>
    <td><?php echo $row['tomtat'] ?></td>
    <td><?php if($row['tinhtrang']==1){
        echo 'Kích hoạt';
      }else{
        echo 'Ẩn';
      }
    ?></td>
    <td>
        <a href="xulybaiviet.php?idbaiviet=<?php echo $row['id_baiviet']?>">Xoá</a> |
        <a href="?action=quanlybaiviet&query=sua&idbaiviet=<?php echo $row['id_baiviet']?>">Sửa</a>
    </td>  
  </tr>
    <?php
    }
    ?>
</table>

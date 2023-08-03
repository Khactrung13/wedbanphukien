<p style="font-size: 18px;
    font-weight: bold;padding-left:20px">Quản lý thông tin Wedsite</p>
<?php
    $sql_lh= "SELECT * FROM tbl_lienhe WHERE id=1";
    $query_lh = mysqli_query($mysqli,$sql_lh);
?>
<table border="1" width = "100%" style="border-collapse:collapse">
  <?php
    while ($dong= mysqli_fetch_array($query_lh)){
  ?>
<form method="POST" action="xulylienhe.php?id=<?php echo $dong['id']?>" enctype="multipart/form-data">

  <tr>
    <td>Thông tin liên hệ</td>
    <td><textarea row = "15" cols="100" name = "thongtinlienhe" style="resize:none"><?php echo $dong['thongtinlienhe'] ?></textarea></td>
  </tr>
  
  <tr>
    <td colspan ="2"><input type ="submit" name="xuly" value="Cập nhật"></td>
  </tr>
  <?php
    }
  ?>
</form>
</table>
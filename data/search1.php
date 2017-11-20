<?php

$conn = mysqli_connect(
  '127.0.0.1', 'root', '', 'yoka', 3306);
mysqli_query($conn, "SET NAMES UTF8");
$kw=$_REQUEST["term"];
$sql="SELECT title FROM yoka_product_list WHERE title LIKE '%".$kw."%' ORDER BY lid DESC LIMIT 10";
$result = mysqli_query($conn, $sql);
$arr=[];
foreach($result as $row){
  $arr[]=$row["title"];
}
echo json_encode($arr);
?>
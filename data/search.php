<?php
header('Content-Type: application/json;charset=UTF-8');
require_once("init.php");

@$kw=$_REQUEST["kw"];
$kws=explode(' ',$kw);
$cond="";
for($i=0;$i<count($kws);$i++){
  $kws[$i]="title LIKE '%".$kws[$i]."%' ";
}
$sql="SELECT title,info,price FROM yoka_product_list where ".join(" AND ",$kws)." ORDER BY price DESC";

echo json_encode(sql_execute($sql));
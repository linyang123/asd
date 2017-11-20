<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("init.php");

$sql="SELECT count(*) FROM yoka_product_list ";
$output=[
  "recordCount"=>0, 
  "pageSize"=>9, "pageCount"=>0,"pno"=>1,      
  "data"=>null   
];
$output["recordCount"]=
  sql_execute($sql)[0]["count(*)"];
$output["pageCount"]=ceil(
  $output["recordCount"]/$output["pageSize"]
);
$sql="SELECT lid,title,price,pic FROM yoka_product_list ";
@$pno=$_REQUEST["pno"];
if($pno){
  $output["pno"]=$pno;
  $start=$output["pageSize"]*($pno-1);
  $sql=$sql." limit $start,".$output["pageSize"];
}
$output["data"]=sql_execute($sql);
echo json_encode($output);
?>
<?php
require_once("init.php");
@$uname=$_REQUEST["uname"] or die ("uname required");
@$upwd=$_REQUEST["upwd"] or die ("upwd required");
$sql="INSERT INTO yoka_user(uname,upwd) VALUES('$uname','$upwd')";
$result=mysqli_query($conn,$sql);
if($result === true){
	echo "注册成功";
}else{
	echo "注册失败";
}
?>
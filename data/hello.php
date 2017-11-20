<?php
header("Content-Type:text/plain;charset=UTF-8");
session_start();
@$uid=$_SESSION["uid"];
if($uid){
  require_once("init.php");
  $sql="select uname from yoka_user where uid=$uid";
  $uname=sql_execute($sql)[0]["uname"];
  echo "Welcome ".$uname;
}else
  echo '<a href="#">登录</a>';
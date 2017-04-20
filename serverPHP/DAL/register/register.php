<?php
	header("Access-Control-Allow-Origin: http://localhost:8080");
    include "../../Global/Global.php";
     $phone = $_GET["phone"];
     $code = $_GET["code"];
	 $psw = $_GET["psw"];
	 $check = $_GET["check"];
	 $num = $_GET["num"];
	 $db = new MySQLi("localhost","root","","fruit");
	 !mysqli_connect_error() or die("连接失败！");
	$sql = "insert into user values('{$phone}','{$code}','{$psw}','{$check}','{$num}')";
	$result = $db->query($sql);
	echo $phone;
 ?>

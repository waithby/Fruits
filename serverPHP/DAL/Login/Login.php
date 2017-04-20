<?php
		header("Access-Control-Allow-Origin: http://localhost:8080");
//		header("Access-Control-Allow-Origin: *");
//      include "../../Global/Global.php";
        include "../../Global/DBHelper.php";
        $phone = $_GET["phone"];
        $psw = $_GET["psw"];
	    $sql = "select * from userName where phone ='".$phone."'and psw='".$psw."'";   
	    $array = query($sql);    
	    if(count($array) > 0){
	        session_start();
	        $_SESSION["phone"] = $phone;//session_id	    	
	        echo '{"state":true,"message":"成功","phone":'.$phone.'}';
	    }else{
	        echo '{"state":false,"message":"失败"}';
	    }
//?>
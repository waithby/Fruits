<?php
    header("Access-Control-Allow-Origin: http://localhost:8080");
	include "../../Global/Global.php";
	$sql = new sql();
    class Fruits{
        public $fruit_type;
        public $fruit_oldprice;
        public $fruit_newprice;
        public $fruit_orign;
        public $fruit_ids;
        public $fruit_imgs;
        public $user_review;
        public $user_satisfacy;
    }
    $con = new mysqli($sql->host,$sql->user,$sql->password,$sql->table);
    $con->query("set names utf8"); //设置编码为utf8 显示中文
    $sql = 'select * from fruit_info';
    $res = $con->query($sql);
    $arr = array();
    if($res->num_rows > 0){

        while($row = $res->fetch_assoc()){
            $fruits = new  Fruits();
            $fruits->fruit_type = $row["fruit_type"];
            $fruits->fruit_oldprice= $row["fruit_oldprice"];
            $fruits->fruit_newprice= $row["fruit_newprice"];
            $fruits->fruit_orign = $row["fruit_orign"];
            $fruits->fruit_ids= $row["fruit_ids"];
            $fruits->fruit_imgs = $row["fruit_imgs"];
            $fruits->user_review= $row["user_review"];
            $fruits->user_satisfacy = $row["user_satisfacy"];
            array_push($arr, $fruits);

        }

        //返回json字符串
    }else {
        array_push($arr, "没有商品");
    }
    //判断是否是jsonp的请求
    //isset(var) 判断变量是否被定义
    if(isset($_REQUEST['callback'])){
        // 表示是一个jsonp的请求
        //找到callback 的函数名称
        $callback = $_REQUEST['callback'];
        //调用callback的函数
        $str = json_encode($arr);
        print_r( $callback."('$str')");

    }else{
         $str = json_encode($arr);
        // echo json_encode($arr);
         print_r($str);

    }

 ?>

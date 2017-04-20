<?php
    //解决跨域问题
//  header("Access-Control-Allow-Origin: http://localhost:8080");
    include "../../Global/Global.php";
    $sql = new sql();
    class Goods{
        public $goodsId;
        public $goodsName;
        public $goodsImg;
        public $goodsType;
        public $goodsRemarks;
        public $goodsPrice;
        public $goodsOldPrice;
        public $goodsDis;
        public $goodsDisImg;
        public $goodsOldImg;
        public $goodsNewImg;
        public $goodsMes;
    }
    $con = new mysqli($sql->host,$sql->user,$sql->password,$sql->table);
    // mysqli_query($con,"set names utf8");
    $con->query("set names utf8"); //设置编码为utf8 显示中文
    $sql = 'select * from goods';
    $res = $con->query($sql);
    // echo $res;
    $arr = array();
    if($res->num_rows > 0){

        while($row = $res->fetch_assoc()){
            $goods = new Goods();
            $goods->goodsId = $row["goods_id"];
            $goods->goodsPrice = $row["goods_price"];
            $goods->goodsOldPrice = $row["goods_old_price"];
            $goods->goodsName = $row["goods_name"];
            $goods->goodsDis = $row["goods_discount"];
            $goods->goodsMes = $row["goods_message"];
            $goods->goodsType = $row["goods_type"];
            $goods->goodsRemarks = $row["goods_remarks"];
            $goods->goodsImg = $row["goods_img_src"];
            $goods->goodsDisImg = $row["goods_dis_img"];
            $goods->goodsOldImg = $row["goods_old_img"];
            $goods->goodsNewImg = $row["goods_new_img"];

            array_push($arr, $goods);
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
         // print_r( $str );
         print_r( $str);

    }

  //  print_r($str)

 ?>

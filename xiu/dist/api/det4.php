<?php

include 'conn.php';
header("content-type:text/html;charset=utf-8");
    $gongneng = isset($_POST['gongneng']) ? $_POST['gongneng'] : '';
    $tel = isset($_POST['tel']) ? $_POST['tel'] : '';
    $uid = isset($_POST['uid']) ? $_POST['uid'] : '';
    // $qty = isset($_POST['qty']) ? $_POST['qty'] : '';
    $cun_img = isset($_POST['cun_img']) ? $_POST['cun_img'] : '';
    $cun_content = isset($_POST['cun_content']) ? $_POST['cun_content'] : '';
    $cun_brand = isset($_POST['cun_brand']) ? $_POST['cun_brand'] : '';
    $cun_discount = isset($_POST['cun_discount']) ? $_POST['cun_discount'] : '';
    $cun_money = isset($_POST['cun_money']) ? $_POST['cun_money'] : '';
    $cun_size = isset($_POST['cun_size']) ? $_POST['cun_size'] : '';
    $cun_main = isset($_POST['cun_main']) ? $_POST['cun_main'] : '';
    $qty = isset($_POST['qty']) ? $_POST['qty'] : '';
 
    // var_dump($cun_img',$tel,$uid,$cun_main,$cun_money,$cun_size,$cun_content,$cun_discount,$qty)
    // $sql="INSERT INTO carlist (img,tel,uid,main,money,size,content,discount,brand,qty)VALUES ('$cun_img','$tel','$uid','$cun_main','$cun_money','$cun_size','$cun_content','$cun_discount','$qty)";

    if($gongneng=="tianjia"){
        $sql="INSERT INTO carlist (img,tel,uid,main,money,size,content,discount,qty,brand)VALUES ('$cun_img','$tel','$uid','$cun_main','$cun_money','$cun_size','$cun_content','$cun_discount',$qty,'$cun_brand')";
        $res = $conn->query($sql);
       if($res) {
          //注册成功
          echo 'yes';
      }else{
          echo 'no';
      };

  }
?>
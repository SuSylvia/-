<?php

include 'conn.php';
header("content-type:text/html;charset=utf-8");

    $tel = isset($_POST['tel']) ? $_POST['tel'] : '';
    $pad = isset($_POST['pad']) ? $_POST['pad'] : '';
    //6、接收用户的相关信息，插入数据库，插入成功返回状态给前端
    
//  echo $tel, $pad;//在前端的netword检测是否接收到响应

    $sql = "INSERT INTO reg(tel,pad) VALUES ($tel,$pad)";
    
    //执行
    $res = $conn -> query($sql);
    

//  var_dump($res);
    if($res) {
        //注册成功
        echo 'yes';
    }else{
        echo 'no';
    };
    
    // 关闭数据库
//  $res->close();
//  $conn->close();
    
?>


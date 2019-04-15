<?php

  //查询所有添加到页面
  header("content-type:text/html;charset=utf-8");
    $tel = isset($_POST['tel']) ? $_POST['tel'] : '';
    $sql = "SELECT * FROM carlist WHERE TEL='$tel'";
    $res = $conn->query($sql);//执行语句

    if($res->num_rows > 0) {
      
        $arr = $res ->fetch_all(MYSQLI_ASSOC);
        echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    }else{
        //不存在
        echo 'no';
    }


?>
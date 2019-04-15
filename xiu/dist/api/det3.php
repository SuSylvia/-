<?php

include 'conn.php';
// "tel=" + parseInt(getName)+"&uid="+parseInt(dets)+"&gongneng=det",
header("content-type:text/html;charset=utf-8");
    $tel = isset($_POST['tel']) ? $_POST['tel'] : '';
    $ordNum = isset($_POST['ordNum']) ? $_POST['ordNum'] : '';
    $qty = isset($_POST['qty']) ? $_POST['qty'] : '';
    $uid = isset($_POST['uid']) ? $_POST['uid'] : '';
    $gongneng = isset($_POST['gongneng']) ? $_POST['gongneng'] : '';

    
    if($gongneng=="xuanran"){
            $sql = "SELECT * FROM carlist WHERE TEL='$tel'";
        $res = $conn->query($sql);//执行语句

        if($res->num_rows > 0) {
        
            $arr = $res ->fetch_all(MYSQLI_ASSOC);
            echo json_encode($arr,JSON_UNESCAPED_UNICODE);
        }else{
            //不存在
            echo 'no';
        }
    };
    if($gongneng=="updeta"){
        $sql2 = "update carlist set qty ='$qty' where orderNum ='$ordNum' ";

        // $sql2="UPDATE kad_cart SET num=$nowNum WHERE uid=$uid";
        $res2=$conn->query($sql2);
        if($res2) {
            echo 'yes';
        }else{
            echo 'no';
        };
    };
    if($gongneng=="det"){
        $sql3="DELETE from carlist where uid='$uid' and tel='$tel'";
        $res3=$conn->query($sql3);
        if($res3) {
            echo 'yes';
        }else{
            echo 'no';
        };
    }



?>
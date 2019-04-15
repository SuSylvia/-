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
        $cun_discount = isset($_POST['un_discount']) ? $_POST['un_discount'] : '';
        $cun_money = isset($_POST['cun_money']) ? $_POST['cun_money'] : '';
        $cun_size = isset($_POST['cun_size']) ? $_POST['cun_size'] : '';
        $cun_main = isset($_POST['cun_main']) ? $_POST['cun_main'] : '';
        $qty = isset($_POST['qty']) ? $_POST['qty'] : '';
        //6、接收用户的相关信息，插入数据库，插入成功返回状态给前端
        
    //  echo $tel, $uid;//在前端的netword检测是否接收到响应

    // SELECT * FROM  carlist WHERE uid=1 AND qty='3' AND TEL='18888888888';
    // echo $gongneng;
    if($gongneng=="none"){
        $sql="SELECT * FROM showlist WHERE uid1='$uid' ";   
        $res = $conn->query($sql);
        if($res->num_rows > 0) {
            // //存在
            // echo 'yes';
            $res =$conn->query($sql);
            $arr = $res ->fetch_all(MYSQLI_ASSOC);
            echo json_encode($arr,JSON_UNESCAPED_UNICODE);
        }else{
            //不存在
            echo 'no';
        }
    };
   


   

    ?>


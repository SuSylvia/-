<?php

    include 'conn.php';
    header("content-type:text/html;charset=utf-8");
    $gongneng = isset($_POST['gongneng']) ? $_POST['gongneng'] : '';
    $tel = isset($_POST['tel']) ? $_POST['tel'] : '';
    // $uid = isset($_POST['uid']) ? $_POST['uid'] : '';
    // $qty = isset($_POST['cun_qty']) ? $_POST['cun_qty'] : '';
    // $cun_img = isset($_POST['cun_img']) ? $_POST['cun_img'] : '';
    // $cun_content = isset($_POST['cun_content']) ? $_POST['cun_content'] : '';
    // $cun_brand = isset($_POST['cun_brand']) ? $_POST['cun_brand'] : '';
    // $cun_discount = isset($_POST['cun_discount']) ? $_POST['cun_discount'] : '';
    // $cun_money = isset($_POST['cun_money']) ? $_POST['cun_money'] : '';
    // $cun_size = isset($_POST['cun_size']) ? $_POST['cun_size'] : '';
    // $cun_main = isset($_POST['cun_main']) ? $_POST['cun_main'] : '';
    //6、接收用户的相关信息，插入数据库，插入成功返回状态给前端
    
//  echo $tel, $uid;//在前端的netword检测是否接收到响应

// SELECT * FROM  carlist WHERE uid=1 AND qty='3' AND TEL='18888888888';
// echo $gongneng;


    if($gongneng=="carAll"){
        $sql="SELECT * FROM carlist WHERE TEL='$tel' ";  
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
    }
    if($gongneng=="chaxun"){
        $sql1 = "SELECT * FROM carlist WHERE TEL='$tel' AND uid='$uid'";
        $res1 = $conn->query($sql1);
      
        if($res1->num_rows){
            $data = $res1->fetch_all(MYSQLI_ASSOC);
            $oldQty = $data[0]['qty'];
            // $aa = $data[0]['price']; //原单价//原本数量加上用户传过来的数量
            $newQty=$qty+$oldQty;

            $sql2 = "update carlist set qty ='$newQty' where uid ='$uid' ";

            // $sql2="UPDATE kad_cart SET num=$nowNum WHERE uid=$uid";
            $res2=$conn->query($sql2);
            if($res2) {
                echo 'y9999';
            }else{
                echo 'no';
            };
      
        }else{
            $sql3="INSERT INTO carlist (img,tel,uid,main,money,size,content,discount,qty,brand)VALUES ('$cun_img','$tel','$uid','$cun_main','$cun_money','$cun_size','$cun_content','$cun_discount',$qty,'$cun_brand')";
            $res3 = $conn->query($sql3);
            if($res3) {
                echo 'yes';//成功
            }else{
                echo 'no';
            };
        }
    }
    // $content = json_decode($content,false);
	// //4.遍历多维数组
	// for($i=0;$i<count($content);$i++){
	// 	if($content[$i]->id == $id){
	// 		$content[$i]->likecnt++;
	// 		echo $content[$i]->likecnt;
	// 	}
	// }
// 
// if($gongneng=="cungouwuche"){
    // $sql1 = "select num from shoppingCar where id ='$goodid' and userName ='$userName'";
    // $res1 = $conn->query($sql1);
    // $content = $res1->fetch_all(MYSQLI_ASSOC);
    // // var_dump($content)
    
    // if($res1->num_rows){
    //     $num1 = $content[0]['num'];
    //     $num = $num + $num1;
    //     $sql = "update shoppingCar set num = $num where id = $goodid";
    //     $res = $conn->query($sql);
    //     echo 1;
    // }else{
    //     $sql = "insert into shoppingCar (id,good_no,userName,goodname,price_nomal,price_no5,num) values ('$goodid','$good_no','$userName','$goodname','$price_nomal','$price_no5','$num')";
    //     $res = $conn->query($sql);
    //     echo 0;
    // }

    //         //  $sql1="select * from shoppingCar where userName = '$userName'";
    //         // $res1 = $conn->query($sql1);
    //         // $content1 = $res1->fetch_all(MYSQLI_ASSOC);
    //         // echo json_encode($content1,JSON_UNESCAPED_UNICODE);
    //         if($res2){
    //             echo "yes";
    //         }else{
    //             echo "no";
    //         }
    //     }else{
    //         echo 'no';
    //     }
    // }


// if($gongneng=="cungouwuche"){
//         $sql1 = "select num from shoppingCar where id ='$goodid' and userName ='$userName'";
//         $res1 = $conn->query($sql1);
//         $content = $res1->fetch_all(MYSQLI_ASSOC);
//         // var_dump($content)
        
//         if($res1->num_rows){
//             $num1 = $content[0]['num'];
//             $num = $num + $num1;
//             $sql = "update shoppingCar set num = $num where id = $goodid";
//             $res = $conn->query($sql);
//             echo 1;
//         }else{
//             $sql = "insert into shoppingCar (id,good_no,userName,goodname,price_nomal,price_no5,num) values ('$goodid','$good_no','$userName','$goodname','$price_nomal','$price_no5','$num')";
//             $res = $conn->query($sql);
//             echo 0;
//         }
//     }
        

// <!-- if($gongneng=="cungouwuche"){
//     $sql1 = "select num from shoppingCar where id ='$goodid' and userName ='$userName'";
//     $res1 = $conn->query($sql1);
//     $content = $res1->fetch_all(MYSQLI_ASSOC);
//     // var_dump($content)
    
//     if($res1->num_rows){
//         $num1 = $content[0]['num'];
//         $num = $num + $num1;
//         $sql = "update shoppingCar set num = $num where id = $goodid";
//         $res = $conn->query($sql);
//         echo 1;
//     }else{
//         $sql = "insert into shoppingCar (id,good_no,userName,goodname,price_nomal,price_no5,num) values ('$goodid','$good_no','$userName','$goodname','$price_nomal','$price_no5','$num')";
//         $res = $conn->query($sql);
//         echo 0;
//     }
//      -->

?>


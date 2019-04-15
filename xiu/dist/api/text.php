<?php




/**
 * 
 * @Author: Marte
 * @Date:   2019-03-04 19:19:02
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-03-04 21:21:26
 */
    header("content-type:text/html;charset=utf-8");

include "conn.php";

// {a:1,name:"xiaobai"};
//接收数据
$a = isset($_POST["a"])?$_POST["a"]:"";
$contentarr = json_decode($a,false);

for($i=0;$i<count($contentarr);$i++){
    $sql = "INSERT INTO carlist(uid,tel) VALUES ('".$contentarr[$i]->a."','".$contentarr[$i]->name."')";
}
$res = $conn->query($sql);
    var_dump($res);
	



// for($i=0;$i<count($contentarr);$i++){
//     if($contentarr[$i]["a"] == $currentId){
//         break;
//     }
// }
// $tel = isset($_POST['tel']) ? $_POST['tel'] : '';
// $pad = isset($_POST['pad']) ? $_POST['pad'] : '';
// $sql = "SELECT * FROM  reg WHERE TEL='$contentarr->a' AND PAD=''$contentarr->name''";

// var_dump($contentarr[0]->a);
// $sql = "INSERT INTO reg(tel,pad) VALUES ('1','1')";

// $sql = "INSERT INTO reg(tel,pad) VALUES ('".$contentarr[0]->a."','".$contentarr[0]->name."')";
	
	//执行语句
    // $res = $conn->query($sql);
    // var_dump($res);
	
	// if($res) {
	// 	//存在：登陆成功
	// 	echo 'yes';
	// }else{
	// 	//不存在：登陆失败
	// 	echo 'no';
	// }
// fwrite($file,json_encode($contentarr,JSON_UNESCAPED_UNICODE));

// var_dump($contentarr);
// echo($contentarr)


    // 取所有查询到的记录内容


    // echo json_encode($arr,JSON_UNESCAPED_UNICODE);






?>

<?php

include 'conn.php';
header("content-type:text/html;charset=utf-8");
// data: 

// $tel,
    $gongneng = isset($_POST['gongneng']) ? $_POST['gongneng'] : '';
    $tel = isset($_POST['tel']) ? $_POST['tel'] : '';
    $uid = isset($_POST['uid']) ? $_POST['uid'] : '';
    $cun_img = isset($_POST['cun_img']) ? $_POST['cun_img'] : '';
    $cun_content = isset($_POST['cun_content']) ? $_POST['cun_content'] : '';
    $cun_brand = isset($_POST['cun_brand']) ? $_POST['cun_brand'] : '';
    $cun_discount = isset($_POST['un_discount']) ? $_POST['un_discount'] : '';
    $cun_money = isset($_POST['cun_money']) ? $_POST['cun_money'] : '';
    $cun_size = isset($_POST['cun_size']) ? $_POST['cun_size'] : '';
    $cun_main = isset($_POST['cun_main']) ? $_POST['cun_main'] : '';
    $qty = isset($_POST['qty']) ? $_POST['qty'] : '';
    
    // $qty = isset($_POST['qty']) ? $_POST['qty'] : '';

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
}
}
else if($gongneng=="sel_btn"){
    $sql = "SELECT * FROM  carlist WHERE TEL='$tel' AND uid='$uid'";

    $res = $conn->query($sql);//执行语句
    if($res->num_rows > 0) {
        // //存在
        echo 'yes';
        // $res =$conn->query($sql);
        // $arr = $res ->fetch_all(MYSQLI_ASSOC);
        // echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    }else{
        //不存在
        echo 'no';
    }
    else if($gongneng=="tianjia"){
        $sql="INSERT INTO carlist (img,tel,uid,main,money,size,content,discount,brand,qty)VALUES ('$cun_img',$tel,$uid,'$cun_main','$cun_money','$cun_size','$cun_content','$cun_discount',$qty)"
          $res = $conn->query($sql);
         if($res) {
            //注册成功
            echo 'yes';
        }else{
            echo 'no';
        };

    }


}
?>


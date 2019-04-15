<?php

include 'conn.php';
header("content-type:text/html;charset=utf-8");
	$gongneng = isset($_POST['gongneng']) ? $_POST['gongneng'] : '';
	$tel = isset($_POST['tel']) ? $_POST['tel'] : '';
	$orderNum = isset($_POST['orderNum']) ? $_POST['orderNum'] : '';
	$qty = isset($_POST['qty']) ? $_POST['qty'] : '';
	$uid = isset($_POST['uid']) ? $_POST['uid'] : '';

	//6、接收用户的相关信息，插入数据库，插入成功返回状态给前端
	
//  echo $tel, $orderNum;//在前端的netword检测是否接收到响应

// SELECT * FROM  carlist WHERE orderNum=1 AND qty='3' AND TEL='18888888888';


if($gongneng=="sel_btn"){
    $sql = "SELECT * FROM  carlist WHERE TEL='$tel' AND uid='$uid'";

	// $sql="UPDATE carlist SET qty='$qty' WHERE orderNum='$orderNum'";

//执行语句

	$res = $conn->query($sql);
	if($res) {
		//存在
		echo 'yes';
		// // $sql2="SELECT * FROM  carlist WHERE orderNum=1 AND qty='3' AND TEL='18888888888'"
		// $res =$conn->query($sql);
		// $arr = $res ->fetch_all(MYSQLI_ASSOC);
		// echo json_encode($arr,JSON_UNESCAPED_UNICODE);
		// if($gongneng=="fengxin_qty")


	}else{
		//不存在
		echo 'no';
	}

// if($gongneng=="insbtn_qty"){

}

?>


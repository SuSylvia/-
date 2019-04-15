<?php
	
	//登陆功能：接收前端的数据做查询
	
	include 'conn.php';
	
	//接收数据
	$tel = isset($_POST['tel']) ? $_POST['tel'] : '';
	$pad = isset($_POST['pad']) ? $_POST['pad'] : '';
	
	//查询该用户的账号和密码是否和数据库一致
	$sql = "SELECT * FROM  reg WHERE TEL='$tel' AND PAD='$pad'";
	
	//执行语句
	$res = $conn->query($sql);
	
	if($res->num_rows > 0) {
		//存在：登陆成功
		echo 'yes';
	}else{
		//不存在：登陆失败
		echo 'no';
	}
	
?>
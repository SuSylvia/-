<?php
    header("content-type:text/html;charset=utf-8");
	//配置参数
	$servername = 'localhost';
	$username = 'root';
	$passname = 'root';
	$dbname = 'show';
	
	//建立链接：$conn对象  js中调用对象的属性  arr.lenght 
	//php调用属性和方法  ->   $conn -> lenght
	$conn = new mysqli($servername,$username,$passname,$dbname);
    
    
	//判断是否连接成功
	if($conn->connect_error) {
		die('出错原因是:'.$conn->connect_error);
	}
	// header("Content-Type:text/html;charset=gb2312");
    // var_dump( $conn);
   
	// header('Content-type:html/text;charset = utf-8');
	
	
?>
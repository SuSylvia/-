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
//接收数据
$page = isset($_GET["page"])?$_GET["page"]:"";

$num = isset($_GET["num"])?$_GET["num"]:"";

// $index=($page-1)*$num;


// $sql = "SELECT *FROM xiu LIMIT $index,$num";//查询需求
//执行结果
$sql = "SELECT *FROM xiu LIMIT $page,$num";//查询需求

$res =$conn->query($sql);

$arr = $res ->fetch_all(MYSQLI_ASSOC);//获取所有查询到的记录内容


// var_dump($res);


    // 取所有查询到的记录内容


    echo json_encode($arr,JSON_UNESCAPED_UNICODE);

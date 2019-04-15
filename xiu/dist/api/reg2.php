<?php

    header("content-type:text/html;charset=utf-8");

include "conn.php";

// {a:1,name:"xiaobai"};
//接收数据
$goodslist = isset($_POST["goodslist"])?$_POST["goodslist"]:"";

$tel = isset($_POST["tel"])?$_POST["tel"]:"";

//对象需要更改为字符串才能遍历,flase为字符串,true是对象
$contentarr = json_decode($goodslist,false);

// if($CarBtnId=="CokList"){//数据库是int类型,传参必需就是int
   for($i=0;$i<count($contentarr);$i++){
    $sql = "SELECT * FROM carlist WHERE TEL='$tel' AND uid='".$contentarr[$i]->guid."'";

    // $sql = "INSERT INTO carlist(uid,img,content,brand,discount,money,size,qty,main,tel) VALUES (
// ;    

    $res = $conn->query($sql); 
    if($res->num_rows) {
        $data = $res->fetch_all(MYSQLI_ASSOC);
        $oldQty = $data[0]['qty'];
        // $aa = $data[0]['price']; //原单价//原本数量加上用户传过来的数量
        $newQty=$contentarr[$i]->qty+$oldQty;
        //存在：登陆成功
        $sql2 = "update carlist set qty ='$newQty' where uid ='".$contentarr[$i]->guid."' ";
        $res2=$conn->query($sql2);
        if($res2){
            echo '222';
        }else{
            echo '111';
        }
        

    }else{
        //不存在
        $sql3 = "INSERT INTO carlist(uid,img,content,brand,discount,money,size,qty,main,tel) VALUES (
               '".$contentarr[$i]->guid."',
                '".$contentarr[$i]->img."',
                  '".$contentarr[$i]->content."',
                  '".$contentarr[$i]->brand."',
                 '".$contentarr[$i]->discount."',  
                 '".$contentarr[$i]->money."',
                 '".$contentarr[$i]->size."',
                '".$contentarr[$i]->qty."',
               '".$contentarr[$i]->main."',
                 '".$tel."')";
                 $res3 = $conn->query($sql3); 
                 if($res3){
                    echo 'yes';
                }else{
                    echo '3444';
                }
    }
    } ;




?>
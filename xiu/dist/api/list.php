    <?php

    header("content-type:text/html;charset=utf-8");

    include "conn.php";
    //接收数据
    $page = isset($_POST["page"])?$_POST["page"]:1;

    $num = isset($_POST["num"])?$_POST["num"]:3;
    $moneyBtn = isset($_POST["moneyBtn"])?$_POST["moneyBtn"]:"up";
    // $moneyBtnDown = isset($_POST["moneyBtnDown"])?$_POST["moneyBtnDown"]:"";
    // $moneyNone = isset($_POST["moneyNone"])?$_POST["moneyNone"]:"";

    $index=($page-1)*$num;
   //查询需求
    if($moneyBtn == "up"){
        $sql ="SELECT * FROM showlist ORDER BY money LIMIT $index,$num";
        $res =$conn->query($sql);
        $arr = $res ->fetch_all(MYSQLI_ASSOC);

        $sql2 = "SELECT * FROM showlist";
        $res2 =$conn->query($sql2);//执行结果
            // 取所有查询到的记录内容
        $list = array(
            'data' => $arr,
            'total'=> $res2->num_rows,
            'page' => $page,
            'num'  => $num
            );
            // var_dump($list);
        echo json_encode($list,JSON_UNESCAPED_UNICODE);

    }else if($moneyBtn == "down"){
        $sql ="SELECT * FROM showlist ORDER BY money DESC LIMIT $index,$num";
        $res =$conn->query($sql);
        $arr = $res ->fetch_all(MYSQLI_ASSOC);
        // var_dump($arr);
        $sql2 = "SELECT * FROM showlist";
        $res2 =$conn->query($sql2);//执行结果
            // 取所有查询到的记录内容
        $list = array(
            'data' => $arr,
            'total'=> $res2->num_rows,
            'page' => $page,
            'num'  => $num
            );
            // var_dump($list);
            echo json_encode($list,JSON_UNESCAPED_UNICODE);
    }else{
        $sql = "SELECT * FROM showlist LIMIT $index,$num";
        $res =$conn->query($sql);
        $arr = $res ->fetch_all(MYSQLI_ASSOC);
        // var_dump($arr);
        $sql2 = "SELECT * FROM showlist";
        $res2 =$conn->query($sql2);//执行结果
            // 取所有查询到的记录内容
        $list = array(
            'data' => $arr,
            'total'=> $res2->num_rows,
            'page' => $page,
            'num'  => $num
            );
            // var_dump($list);
            echo json_encode($list,JSON_UNESCAPED_UNICODE);
    };
    // $res =$conn->query($sql);
    // $sql2 = "SELECT * FROM showlist";
    // $res2 =$conn->query($sql2);//执行结果
    //     // 取所有查询到的记录内容
    // $list = array(
    //     'data' => $arr,
    //     'total'=> $res2->num_rows,
    //     'page' => $page,
    //     'num'  => $num
    //     );
    //     // var_dump($list);
    //     echo json_encode($list,JSON_UNESCAPED_UNICODE);

<?php

    require_once('./connect.php');

	header("content-type:text/html;charset=utf-8"); 
	header('Content-Type:application/json; charset=utf-8');
	
	$name = $_REQUEST['name'];
	$email = $_REQUEST['email'];
	$title = $_REQUEST['title'];
	$comment = $_REQUEST['comment'];

	$sql = "INSERT INTO `msg_tab`( `name`, `email`, `title`, `comment`) VALUES ('$name','$email','$title', '$comment')";

	if ($result = $db->_insert($sql)) {
		echo '保存成功';
		exit;
	} else {
		echo '保存失败';
	}

?>
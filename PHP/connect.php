<?php

	class DB {
		private $conn;
		private $db_user="root";
		private $db_pwd="123456";
		private $db_localhost="localhost";
		private $db_database="msg_database";
	    private $arr = array();

		//构造函数，连接数据库
		function __construct(){

			$this->conn = new mysqli($this->db_localhost, $this->db_user, $this->db_pwd, $this->db_database);

			if (!mysqli_set_charset($this->conn, "utf8")) {
			    printf("Error loading character set utf8: %s\n", mysqli_error($link));
			}
		}

		public function _insert($sql){

			if($sql==""){

	               exit();

			}else{
				
				return mysqli_query($this->conn, $sql);

			}
		}

		public function _query($sql){

			if($sql==""){

	               exit();

			}else{

				$result = mysqli_query($this->conn, $sql);

				$num=mysqli_num_rows($result);
				
				$arr = array();

				if($num > 0){

					$i = 0;

					while($arr1 = mysqli_fetch_assoc($result)){

					 	$this->arr[$i]=$arr1;

					 	$i++;

					}

					return $this->arr;

				}else{	

					return false;

				}
			}
		}
	}

	$db = new DB();

?>
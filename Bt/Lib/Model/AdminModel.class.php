<?php
	/**
	* 
	*/
	class AdminModel extends Model{
		function __construct()
		{
			parent::__construct();
		}
		function salt(){
			$salt=mt_rand(100000,999999);
			return $salt;
		}
		function login($pass){
			$admin=$this->find(1);
			$salt=$admin['salt'];
			$password=md5(md5($pass).$salt);
			if($password==$admin['pass']){
				$_SESSION['admin']=1;
				$re['status']=true;
				$re['con']="现在进入后台！";
				$this->login_info();
			}else{
				$re['status']=false;
				$re['con']="密码错误！";
			}
			return $re;	
		}
		function change_pass($pass,$new_pass){
			$admin=$this->find(1);
			$salt=$admin['salt'];
			$password=md5(md5($pass).$salt);
			if($password==$admin['pass']){
				$admin['salt']=$this->salt();
				$admin['pass']=md5(md5($new_pass).$admin['salt']);
				$this->save($admin);
				$re['status']=true;
				$re['con']="修改成功！";
			}else{
				$re['status']=false;
				$re['con']="失败！与原密码不相符";
			}
			return $re;
		}
		function logout(){
			unset($_SESSION['admin']);
		}
		function login_info(){
			$info['time']=time();
			$info['ip']=$_SERVER['REMOTE_ADDR'];
			if($_SESSION['admin']==1){
				$admin=$this->find(1);
				$admin_info=json_decode($admin['login_info'],true);
				$admin_info[]=$info;
				$admin['login_info']=json_encode($admin_info);
				$this->save($admin);
			}
		}

	}
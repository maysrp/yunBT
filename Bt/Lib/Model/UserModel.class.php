<?php
	/**
	* 
	*/
	class UserModel extends Model
	{
		public $user;
		
		function __construct()
		{
			parent::__construct();

			if($_SESSION['uid']){
				$this->user=$this->find($_SESSION['uid']);
			}else{
				$this->cookie();
			}
		}
		function login_info(){
			$login_info=json_decode($this->user['login_info'],true);
			$this_time['ip']=$_SERVER['REMOTE_ADDR'];
			$this_time['time']=time();
			$login_info[]=$this_time;
			$this->user['login_info']=json_encode($login_info);
			$this->save($this->user);
		}
		function salt(){
			return mt_rand(100000,999999);
		}
		function cookie(){
			$where['cookie']=$_COOKIE['cookie'];
			$user=$this->where($where)->select();
			if($user){
				$_SESSION['uid']=$user['uid'];
				$this->user=$user[0];
			}
		}
		function set_cookie(){
			$uid=$_SESSION['uid'];
			$salt=$this->salt();
			$time=time();
			$cookie=md5($uid.$salt.$time);
			$user['cookie']=$cookie;
			$user['uid']=$uid;
			$this->save($user);
			setcookie("cookie",$cookie,time()+86400*30);
		}
		function destroy_cookie(){
			$_SESSION['uid']=false;
			setcookie("cookie",$cookie,time()-36000);
			$this->user['cookie']="";
			$this->save($this->user);
		}
		function login($name,$pass){
			$jugg=$this->jugg_login();
			if($jugg){
				$re['status']=false;
				$re['con']="你已经登入";
				return $re;
			}
			$user=$this->name($name);
			if($user){
				$password=md5(md5($pass).$user['salt']);
				if($password==$user['pass']){
					$_SESSION['uid']=$user['uid'];
					$re['status']=true;
					$re['con']="成功登入";
					$this->set_cookie();
				}else{
					$re['status']=false;
					$re['con']="密码错误";
				}
			}else{
				$re['status']=false;
				$re['con']="无该用户名";
			}
			return $re;
		}
		function join($name,$pass,$email){
			$jugg=$this->jugg_login();
			if($jugg){
				$re['status']=false;
				$re['con']="你已经登入";
				return $re;
			}
			$jugg_name=$this->name($name);
			$jugg_email=$this->email($email);
			if($jugg_name){
				$re['status']=true;
				$re['con']="该用户已经注册";
			}
			if ($jugg_email) {
				$re['status']=true;
				$re['con']=$re['con']."该邮箱已经注册";
			}
			if($re['status']){
				$re['status']=false;
				return $re;
			}
			$user['join_ip']=$_SERVER['REMOTE_ADDR'];
			$user['join_time']=time();
			$info[]=$user;
			$user['login_info']=json_encode($info);
			$user['salt']=$this->salt();
			$user['name']=$name;
			$user['email']=$email;
			$user['pass']=md5(md5($pass).$user['salt']);
			$uid=$this->add($user);
			if($uid){
				$_SESSION['uid']=$uid;
				$this->set_cookie();
				$re['status']=true;
				$re['con']="注册成功!";
			}else{
				$re['status']=false;
				$re['con']="注册失败，未知原因！";
			}
			return $re;
		}
		function logout(){
			$jugg=$this->jugg_login();
			if(!$jugg){
				$re['status']=false;
				$re['con']="你还未登入";
			}else{
				$re['status']=true;
				$re['con']="你已经登出";
				$this->destroy_cookie();
			}
			return $re;
		}
		function jugg_login(){
			if($_SESSION['uid']){
				$re=true;
			}else{
				$re=false;
			}
			return $re;
		}
		function name($name){
			$where['name']=$name;
			$in=$this->where($where)->select();
			if($in){
				return $in[0];
			}else{
				return false;
			}
		}
		function email($email){
			$where['email']=$email;
			$in=$this->where($where)->select();
			if($in){
				return $in[0];
			}else{
				return false;
			}
		}
		function now_num_add($num=1){
			$jugg=$this->jugg_login();
			if($jugg){
				$re=false;
				return $re;
			}
			$this->user['now_num']=$this->user['now_num']+$num;
			$this->save($this->user);
		}
		function now_size_add($size){
			$jugg=$this->jugg_login();
			if($jugg){
				$re=false;
				return $re;
			}
			$this->user['now_size']=$this->user['now_size']+$size;
			$this->save($this->user);
		}
		function active(){
			if($this->user['active']<$this->user['max_active']){
				return true;
			}
		}
		function active_add($num=1){
			$jugg=$this->active();
			if($jugg){
				$this->user['active']=$this->user['active']+$num;
				$this->save($this->user);
			}
		}
		function pass_change($old_pass,$new_pass){
			$jugg=$this->jugg_login();
			if(!$jugg){
				$re['status']=false;
				$re['con']="你还未登入";
				return $re;
			}
			$password=md5(md5($old_pass).$this->user['salt']);
			if($password==$this->user['pass']){
				$this->user['salt']=$this->salt();
				$this->user['pass']=md5(md5($new_pass).$this->user['salt']);
				$this->save($this->user);
				$re['status']=true;
				$re['con']="修改成功";
			}else{
				$re['status']=false;
				$re['con']="修改失败";
			}
			return $re;
		}
		function oid_json($oid){//add
			$oid_json=json_decode($this->user['oid_json'],true);
			if($oid_json){
				if(in_array($oid, $oid_json['oid'])){
				}else{
					$oid_json['oid'][]=$oid;
					$more['oid']=$oid;
					$more['time']=time();
					$oid_json['info'][]=$more;
					$this->user['oid_json']=json_encode($oid_json);
					$this->save($this->user);
				}
			}else{
				$ne['oid'][]=$oid;
				$more['oid']=$oid;
				$more['time']=time();
				$ne['info'][]=$more;
				$this->user['oid_json']=json_encode($ne);
				$this->save($this->user);

			}
		}
		function oid_del($oid){
			$oid_ar=json_decode($this->user['oid_json'],true);
			$key=array_search($oid, $oid_ar['oid']);
			unset($oid_ar['oid'][$key]);
			$this->user['oid_json']=json_encode($oid_ar);
			$this->user['active']=$this->user['active']-1;
			$this->save($this->user);
		}
		function size_add($size=10000000000){
			$jugg=$this->jugg_login();
			if($jugg){
				$re=false;
				return $re;
			}
			$this->user['size']=$this->user['size']+$size;
			$this->save($this->user);
		}
		function num_add($num=10){
			$jugg=$this->jugg_login();
			if($jugg){
				$re=false;
				return $re;
			}
			$this->user['num']=$this->user['num']+$size;
			$this->save($this->user);
		}
		function jugg_oid($oid){
			$oid_ar=json_decode($this->user['oid_json'],true);
			$key=array_search($oid, $oid_ar['oid']);
			if($key){
				return true;
			}else{
				return false;
			}
		}
		
	}
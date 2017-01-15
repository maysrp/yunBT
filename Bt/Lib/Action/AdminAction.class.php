<?php
	/**
	* 
	*/
	class AdminAction extends Action
	{
		public $Aria2;
		function __construct()
		{
			parent::__construct();
			if($_SESSION['admin']){
				include "Aria2.php";
    			$this->Aria2=new Aria2('http://127.0.0.1:6800/jsonrpc');
			}
		}
		function session(){
			if($_SESSION['admin']!=1){
				$this->error("请先登入",U("Admin/login"));
				return;
			}
		}
		function index(){
			if($_SESSION['admin']){
			$strs = @file("/proc/net/dev"); 
			for ($i = 2; $i < count($strs); $i++ ){
				preg_match_all( "/([^\s]+):[\s]{0,}(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)/", $strs[$i], $info );
				$btserver['in'] = $btserver['in']+$info[2][0];
				$btserver['out']  = $btserver['out']+$info[10][0];
			}
			$all_server[]=$btserver;
			$this->assign("all_server",$all_server);
				$goinfo=$this->Aria2->getGlobalStat();
				$this->assign("goinfo",$goinfo['result']);
				if(isset($_GET['t'])){
					$info=$this->achive_t($_GET['t']);
				}else{
					$info=$this->achive_t("active");
				}
				$sys['user']=M('User')->count();
				$sys['download']=M('Ondo')->count();
				$yqm=M('Code')->count();
				$talk=M('Question')->count();
				$site=M('site')->find(1);
				$this->assign("talk",$talk);
				$this->assign("site",$site);
				$this->assign("yqm",$yqm);
				$this->assign("sys",$sys);
				$this->assign("info",$info);
				$this->display();
            	
			}else{
				$this->error("请先登入",U("Admin/login"));
			}
		}
		function logout(){
			unset($_SESSION['admin']);
			$this->success("你已经登出",U("Admin/login"));
		}
		function login(){
			if($_SESSION['admin']){
				$this->error("你已经登入",U("Admin/index"));
			}
			if($_POST){
				if($_SESSION['verify']!=md5($_POST['verify'])){
					$this->error("验证码错误！");
				}
				if(strtolower($_POST['name'])=="admin"){
					$pass=$_POST['pass'];

					$re=D('Admin')->login($pass);
					if($re['status']){
						$this->success($re['con'],U("Admin/index"));
					}else{
						$this->error($re['con']);
					}
				}else{
					$this->error("登入失败");
				}
			}else{
				$this->display();
			}
		}
		function achive_t($t){
			if($t=="active"){
				$info=$this->Aria2->tellActive();
				return $info['result'];
			}else{
				$num=(int)$t;
				$info=$this->Aria2->tellWaiting(-1,$num);
				return $info['result'];
			}
		}
		function unpauseAll(){
			$this->session();
			$gid=$_GET['gid'];
			$this->Aria2->unpauseAll();
			header("Location:".$_SERVER['HTTP_REFERER']);
		}
		function pauseAll(){
			$this->session();
			$gid=$_GET['gid'];
			$this->Aria2->pauseAll();
			header("Location:".$_SERVER['HTTP_REFERER']);
		}
		function remove(){
			$this->session();
			$gid=$_GET['gid'];
			$this->Aria2->remove($gid);
			header("Location:".$_SERVER['HTTP_REFERER']);

		}
		function pause(){
			$this->session();
			$gid=$_GET['gid'];
			$this->Aria2->pause($gid);
			header("Location:".$_SERVER['HTTP_REFERER']);
		}
		function unpause(){
			$this->session();
			$gid=$_GET['gid'];
			$this->Aria2->unpause($gid);
			header("Location:".$_SERVER['HTTP_REFERER']);
		}
		function user(){
			$this->session();
			import('ORG.Util.Page');
			$user=M('User')->order('join_time desc')->select();
			$count=@count($user);
			$Page=new Page($count,25);
			$Page->setConfig('header',"位用户");
			if($_GET['p']<1){
            	$_GET['p']=1;
        	}else{
               $_GET['p']=(int)$_GET['p'];//
        	}
        	$list=array_slice($user, 25*($_GET['p']-1),25);
        	$show=$Page->show();
        	$this->assign("page",$show);
			$this->assign("user",$list);
			$this->display();
		}
		function user_e(){
			$this->session();
			if($_POST){
				if(strlen($_POST['pass'])>3){
					$save['salt']=mt_rand(100000,999999);
					$save['pass']=md5(md5($_POST['pass']).$save['salt']);
				}
					switch ($_POST['lv']) {
						case '4':
							$active=1000;
							$lv=$_POST['lv'];
							break;
						case '3':
							$active=100;
							$lv=$_POST['lv'];
							break;
						case '2':
							$lv=$_POST['lv'];
							$active=15;
							break;
						case '1':
							$lv=$_POST['lv'];
							$active=3;
							break;
						default:
							$active=false;
							break;
					}
						$save['lv']=$lv;
						$save['max_active']=$active;
						$save['uid']=(int)$_POST['uid'];
						$ion=M('User')->save($save);
						if($ion){
							$this->success("修改成功！");
						}else{
							$this->error("修改失败！");
						}

			}else{
				$uid=$_GET['uid'];
				$info=M('User')->find($uid);
				if($info){
					$oid_ar=json_decode($info['oid_json'],true);
					foreach ($oid_ar['oid'] as $key => $value) {
						$swap=D('Ondo')->find($value);
						$oid_user[]=$swap;
					}
					$_SESSION['uid']=$info['uid'];
					$this->assign("oid_user",$oid_user);
					$this->assign("user",$info);
					$this->display();
				}else{
					$this->error("无该用户");
				}
			}
		}
		function oid_list(){
			$this->session();
			import('ORG.Util.Page');
			$oidlist=M('Ondo')->order('time desc')->select();
			$count=@count($oidlist);
			$Page=new Page($count,25);
			$Page->setConfig('header',"条任务");
			if($_GET['p']<1){
            	$_GET['p']=1;
        	}else{
               $_GET['p']=(int)$_GET['p'];//
        	}
        	$list=array_slice($oidlist, 25*($_GET['p']-1),25);
        	$show=$Page->show();
        	$this->assign("page",$show);
			$this->assign("list",$list);
			$this->display("list");
		}
		function dir(){
			$this->session();
			$oid=(int)$_GET['oid'];
			$info=M('Ondo')->find($oid);
			if($info){
				$_SESSION['dir']=$info['dir'];
				header("Location:/dir.php");
			}
		}
		function create_code(){
			$this->session();
			$num=(int)$_GET['num']?(int)$_GET['num']:10;
			$re=D('Code')->code($num);
			$this->ajaxReturn($re);
		}
		function code(){
			$this->session();
			import('ORG.Util.Page');
			$code=M('Code')->select();
			$count=@count($code);
			$Page=new Page($count,50);
			$Page->setConfig('header',"条邀请码");
			if($_GET['p']<1){
            	$_GET['p']=1;
        	}else{
               $_GET['p']=(int)$_GET['p'];//
        	}
        	$list=array_slice($code, 50*($_GET['p']-1),50);
        	$show=$Page->show();
			$this->assign("code",$list);
			$this->assign("page",$show);
			$this->display();
		}
		function gg(){
			$this->session();
			$gg=trim($_POST['gg']);
			if(strlen($gg)>2){//防止不必要输入
				D('Site')->gg($gg);
				$re['status']=true;
				$re['con']="修改成功！";
				$this->success($re['con']);
			}
		}
		function fw(){
			$this->session();
			$fw=trim($_POST['fw']);
			if(strlen($fw)>2){//防止不必要输入
				D('Site')->fw($fw);
				$re['status']=true;
				$re['con']="修改成功！";
				$this->success($re['con']);
			}
		}
		function del_uid(){
			$this->session();
			$uid=(int)$_GET['uid'];
			$user=M('User')->find($uid);
			if(!$user){
				$this->error("没有该用户！");
				return;
			}
			$oid_ar=json_decode($user['oid_json'],true);
			$_SESSION['uid']=$uid;
			foreach ($oid_ar['oid'] as $key => $value) {
				D('Ondo')->del_user_oid($value);
			}
			M('User')->delete($uid);
			$this->success("删除成功！",U("Admin/user"));
		}
		function add_user(){
			$this->session();
			$_SESSION['uid']="";
			if(strlen($_POST['name'])>3){
				$name=$_POST['name'];
				$pass=$_POST['pass'];
				$email=$_POST['email'];
				$re=D('User')->join($name,$pass,$email);
				if($re['status']){
					$this->success($re['con'],U("Admin/user"));
				}else{
					$this->error($re['con'],U("Admin/user"));
				}
			}else{
					$this->error("用户名应该大于三位！",U("Admin/user"));
			}
		}
		function talk(){
			$this->session();
			import('ORG.Util.Page');
			$talklist=M('Question')->select();
			$count=@count($talklist);
			$Page=new Page($count,25);
			$Page->setConfig('header',"条会话");
			if($_GET['p']<1){
            	$_GET['p']=1;
        	}else{
               $_GET['p']=(int)$_GET['p'];//
        	}
        	$list=array_slice($talklist, 25*($_GET['p']-1),25);
        	$show=$Page->show();
        	$this->assign("page",$show);
			$this->assign("talk",$list);
			$this->display();

		}
		function talk_id(){
			$this->session();
			if($_POST['qid']){
				$qid=(int)$_POST['qid'];
				$info=$_POST['talk'];
				$re=D('Question')->addquestion($info,$qid);
				$re=json_decode($re,true);
				$this->ajaxReturn($re);
			}else{
				return false;
			}
		}
		function talk_uid(){
			$this->session();
			if($_POST['uid']){
				$uid=(int)$_POST['uid'];
				$info=$_POST['talk'];
				$re=D('Question')->addquestion_uid($info,$uid);
				$re=json_decode($re,true);
				$this->ajaxReturn($re);
			}else{
				return false;
			}
		}
		function pass(){
			$this->session();
			if($_POST['old']&&$_POST['new']){
				$old=trim($_POST['old']);
				$new_pass=trim($_POST['new']);
				if(strlen($new_pass)<=3){
					$this->error("密码必须大于3位！");
				}
				$re=D('Admin')->change_pass($old,$new_pass);
				if($re['status']){
					$this->success($re['con']);
				}else{
					$this->error($re['con']);
				}
			}else{
				$this->error("请输入密码！");
			}
		}
		function del_oid(){
			$this->session();
			$oid=(int)$_GET['oid'];
			$re=D('Ondo')->del_oid($oid);
			if($re['status']){
				$this->success($re['con'],U('Admin/oid_list'));
			}else{
				$this->error($re['con'],U('Admin/oid_list'));
			}
		}
		






		

	}
<?php
	class OndoAction extends Action{
		public $Aria2;
		function __construct(){
			parent::__construct();
			include "Aria2.php";
    		$this->Aria2=new Aria2('http://127.0.0.1:6800/jsonrpc');
		}
		function index(){
			$this->jugg_log();
			$user=D('User')->find($_SESSION['uid']);
			$oid_ar=json_decode($user['oid_json'],true);
			foreach ($oid_ar['oid'] as $key => $value) {
				$swap=D('Ondo')->find($value);
				$oid_user[]=$swap;
			}
			$this->assign("user",$user);
			$this->assign("oid_user",$oid_user);
			$this->display();
		}
		function curl(){
    			$active=$this->Aria2->tellActive();
				$wait=$this->Aria2->tellWaiting(-1,50);
				$stop=$this->Aria2->tellStopped(-1,50);
				$this->setinfo($stop);
				$this->setinfo($wait);
				$this->setinfo($active);
		}
		function dir(){
			$this->jugg_log();
			$oid=trim($_GET['oid']);
			$re=D('Ondo')->find_user_dir($oid);
			if($re['status']){
				$_SESSION['dir']=$re['con'];
				header("Location:/dir.php");
			}else{
				$this->error("您尚未下载该文件！");
			}
		}
		function del(){
			$this->jugg_log();
			$oid=(int)trim($_GET['oid']);
			$re=D('Ondo')->del_user_oid($oid);
			if($re['status']){
				$this->success("删除成功！");
			}else{
				$this->error("您尚未下载该文件！");
			}
		}
		function setinfo($inf){
	
			$info=$inf['result'];
			foreach ($info as $key => $value) {
				if($value['totalLength']>DO_SIZE*pow(2, 30)){
					$this->Aria2->remove($value['gid']);//超过10GB任务删除
					$value['status']="REMOVE";
				}
				D('Ondo')->update_info($value);
				$this->pause($value);
			}
		}
		function jugg_log(){
			if (!$_SESSION['uid']) {
				$this->error("请先登入",U('User/login'));
			}
		}
		function pause($info){
			$jugg=D('Aria2')->up($info);
			if(!$jugg){
				$this->Aria2->pause($info['gid']);
			}
		}
		function share(){
			if (!$_SESSION['uid']) {
				return false;
			}
			if($_GET['oid']){
				$oid=(int)$_GET['oid'];
				$re=D('Share')->create_code($oid);
				if($re['status']){
					$scode['scode']=$re['con'];
				}
				$this->ajaxReturn($scode);
			}
		}
		function share_ajax(){
			if (!$_SESSION['uid']) {
				return false;
			}
			$p=$_GET['p']?$_GET['p']:1;
			$rex=M('Share')->group('oid')->order("time desc")->limit(25)->select();
			$this->ajaxReturn($rex);
		}
		function add_share(){
			if (!$_SESSION['uid']) {
				return false;
			}
			$scode=trim($_GET['scode']);
			
                $re=D('Share')->add_scode($scode);
      
            if($re['status']){
            	$this->success($re['con']);
            }else{
            	$this->error($re['con']);
            }
		}
		function talk(){
			if(!$_SESSION['uid']){
				return false;
			}
			$name=uid_name($_SESSION['uid']);
			$info['name']=$name;
			$info['text']=trim($_POST['text']);
			$re=D('Talk')->add_one($info);
			$this->ajaxReturn($re);
		}
		





	}

<?php
	class OndoModel extends Model{
		function insert($hash="NE",$uri){//添加任务
			$add['uid']=$_SESSION['uid'];
			$add['hash']=$hash?$hash:"url";
			$add['uri']=$uri;
			$add['time']=time();
			if($add['hash']=="url"){
				$exp_a=explode("/", $uri);
				$name=array_pop($exp_a);
				$add['name']=$name;
			}
			$add['status']="waiting";
			$add['ip']=$_SERVER['REMOTE_ADDR'];
			$add['dir']=DIR."/download/".md5($hash.$uri);
			$uid_j[]=$add['uid'];
			$add['uid_json']=json_encode($uid_j);
			$oid=$oid=$this->add($add);
			D('User')->oid_json($oid);
			D('User')->active_add();
			$re['oid']=$oid;
			$re['dir']=$add['dir'];
			return $re;
		}
		function search($hash,$uri){//查找是否已经存在
			if(strlen($hash)>10){
				$where['hash']=$hash;
				$re=$this->where($where)->select();
			}else{
				$where['uri']=$uri;
				$re=$this->where($where)->select();
			}
			if($re){
				return $re['0'];
			}else{
				return false;//不存在 新下载
			}
		}

		function add_uri($hash,$uri){//添加任务
			$red=D('User')->active();
			if(!$red){
				$re['status']=false;
				$re['con']="你已经超过配额，请联系管理员！";
				return $re;
			}
			$nom=$this->search($hash,$uri);
			if($nom){
				$uid_json=json_decode($nom['uid_json'],true);
				if (in_array($_SESSION['uid'], $uid_json)) {
					$re['status']=false;
					$re['con']="你已经添加过该任务！";
					return $re;
				}else{
					$this->add_uid($nom);
					$re['status']=true;
					$re['con']="成功添加";
					return $re;
				}
			}else{
				$dir=$this->insert($hash,$uri);
				$re['status']=true;
				$re['dir']=$dir['dir'];
				$re['con']="成功添加";
				$re['oid']=$dir['oid'];
				return $re;
			}
			
		}
		function add_uid($info){//任务中添加用户
			$uid_a=json_decode($info['uid_json'],true);
			$uid_a[]=$_SESSION['uid'];
			$info['uid_json']=json_encode($uid_a);
			$this->save($info);
			$oid=$info['oid'];
			D('User')->oid_json($oid);
			D('User')->active_add();
		}
		function find_user_dir($oid){//返回任务的下载地址
			$info=$this->find($oid);
			$uid_json=json_decode($info['uid_json'],true);
			if(in_array($_SESSION['uid'], $uid_json)){
				$re['status']=true;
				$re['con']=$info['dir'];
			}else{
				$re['status']=false;
			}
			return $re;
		}
		function del_user_oid($oid){//用户删除任务
			$info=$this->find($oid);
			$uid_json=json_decode($info['uid_json'],true);
			if(in_array($_SESSION['uid'], $uid_json)){
				$key=array_search($_SESSION['uid'], $uid_json);
				unset($uid_json[$key]);
				$info['uid_json']=json_encode($uid_json);
				$this->save($info);
				D('User')->oid_del($oid);
				$re['status']=true;
			}else{
				$re['status']=false;
			}
			return $re;
		}
		function update_info($info){//后台刷新任务
			if($info['infoHash']){
				if($info['totalLength']<3*pow(2, 20)){
					return;
				}
				$where['hash']=$info['infoHash'];
				$where['status']=array('neq','complete');
				$where['_logic']='and';
				$rex=$this->where($where)->select();
				$ref=$rex[0];
				if($ref){
					$ref['gid']=$info['gid'];
					$ref['name']=$ref['name']?$ref['name']:$info['bittorrent']['info']['name'];
					$ref['status']=$info['status'];
					$ref['complete']=$info['completedLength'];
					$ref['total']=$info['totalLength'];
					$ref['speed']=$info['downloadSpeed'];
					$this->save($ref);
				}
			}else{//GID 非BT下载GID
				$where['gid']=$info['gid'];
				$where['status']=array('neq','complete');
				$where['_logic']='and';
				$rex=$this->where($where)->select();
				$ref=$rex[0];
				if($ref){
					//$ex_dir=explode("/", $ref['dir']);
					//$ref['name']=array_pop($ex_dir).":HTTP";//上面已经设置
					$ref['status']=$info['status'];
					$ref['complete']=$info['completedLength'];
					$ref['total']=$info['totalLength'];
					$ref['speed']=$info['downloadSpeed'];
					$this->save($ref);
				}
			}

		}
		function del_oid($oid){
			$info=$this->find($oid);
			if($info){
				$uid_array=json_decode($info['uid_json'],true);
				foreach ($uid_array as $key => $value) {
					$_SESSION['uid']=$value;
					D('User')->oid_del($oid);
				}
				$_SESSION['uid']="";
				$this->delete($oid);
				$re['status']=true;
				$re['con']="删除成功！";
			}else{
				$re['status']=false;
				$re['con']="无该任务！";
			}
			return $re;
		}
		function add_oid($oid){//添加成功 true 错 false
			$info=$this->find($oid);
			if($info){
				$uid_array=json_decode($info['uid_json'],true);
				$x=in_array($_SESSION['uid'], $uid_array);
				if($x){
					return false;
				}else{
					$uid_array[]=$_SESSION['uid'];
					$info['uid_json']=json_encode($uid_array);
					$this->save($info);
					D('User')->oid_json($oid);
					return true;
				}
			}else{
				return false;
			}

		}
	}
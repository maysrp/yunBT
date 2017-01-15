<?php
	class ShareModel extends Model
	{
		function scode($code){//通过scode获取分享信息
			$where['scode']=$code;
			$info=$this->where($where)->select();
			if($info){
				return $info[0];
			}else{
				return false;
			}
		}
		function oid($oid){//判断是否存在 oid
			$where['oid']=$oid;
			if(!$_SESSION['admin']){
				$where['uid']=$_SESSION['uid'];
			}
			$re=$this->where($where)->select();
			return $re[0];//存在返回信息
		}
		function create_code($oid){//创建scode 分享
			if($_SESSION['admin']){
				$scode=$this->c_scode($oid,"admin");
				$add['scode']=$scode;
				$add['time']=time();
					//	$add['uid']=$_SESSION['uid'];
				$add['oid']=$oid;
				$this->add($add);
				$re['status']=true;
				$re['con']=$scode;
				return $re;
			}else{
				$jugg=D('User')->jugg_oid($oid);//判断是否有该文件
				if($jugg){
					$is_o=$this->oid($oid);
					if(!$is_o){
						$scode=$this->c_scode($oid,$uid);
						$in=D('Ondo')->find($oid);
						$add['name']=$in['name'];
						$add['scode']=$scode;
						$add['time']=time();
						$add['uid']=$_SESSION['uid'];
						$add['oid']=$oid;
						$this->add($add);
						$re['status']=true;
						$re['con']=$scode;
						return $re;
					}else{
						$re['status']=true;
						$re['con']=$is_o['scode'];
						return $re;
					}
				}
			}

		}
		function c_scode($oid,$uid){
			$salt=mt_rand(100000,999999);
			$code=substr(md5($oid.$salt.$uid), 8,16);
			$scode="SCODE:".strtoupper($code);
			return $scode;
		}
		function del_scode($code){//删除分享
			$info=$this->scode($code);
			if(!$info){
				return false;
			}
			if($_SESSION['admin']){
				$this->delete($info['shid']);
				$re['status']=true;
				$re['con']="删除成功！";
			}else{
				if($_SESSION['uid']==$info['uid']){
					$this->delete($info['shid']);
					$re['status']=true;
					$re['con']="删除成功！";
				}else{
					$re['status']=false;
					$re['con']="未发现该信息";
				}
			}
			return $re;
		}
		function show_scode(){
			if($_SESSION['admin']){
				$all=$this->select();
				return $all;
			}else{
				$where['uid']=$_SESSION['uid'];
				$all=$this->where($where)->select();
				return $all;
			}
		}
		function add_scode($scode){//添加 个人获取
			$info=$this->scode($scode);
			$act=D('User')->active();
			if(!$act){
				$re['status']=false;
				$re['con']="你已经超过配额，请联系管理员！";
				return $re;
			}
			if($info){
				$se=D('Ondo')->add_oid($info['oid']);
				if($se){
					$re['status']=true;
					D('User')->active_add();
					$re['con']="分享添加成功！";
				}else{
					$re['status']=false;
					$re['con']="已添加或失败！";
				}
			}else{
				$re['status']=false;
				$re['con']="无该分享！";
			}
			return $re;
		}		
		
	}
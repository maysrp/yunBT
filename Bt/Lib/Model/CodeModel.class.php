<?php
	class CodeModel extends Model{
		function create_code($num=10){
			for($i=0;$i<$num;$i++){
				$rd=mt_rand(100000,999999);
				$time=microtime();
				$code=sha1($rd.$time);
				$re[]=$code;
			}
			return $re;
		}
		function insert($code){
			foreach ($code as $key => $value) {
				$where['code']=$value;
				$is_set=$this->where($where)->select();
				if(!$is_set){
					$where['time']=time();
					$this->add($where);
					$recon[]=$value;
				}
			}
			return $recon;
		}
		function code($num){
			$recode=$this->create_code($num);
			$re=$this->insert($recode);
			return $re;
		}
		function jugg($code){
			$where['code']=$code;
			$in=$this->where($where)->select();
			if($in){
				if($in[0]['uid']>0){
					$re['status']=false;
					$re['con']="该邀请码已经过期";
				}else{
					$re['status']=true;
				}
			}else{
				$re['status']=false;
				$re['con']="无效邀请码";
			}
			return $re;
		}
		function add_uid($code){//用户使用验证码
			if($_SESSION['uid']){
				$where['code']=$code;
				$save['code']=$code;
				$save['uid']=$_SESSION['uid'];
				$save['use_time']=time();
				$this->where($where)->save($save);
			}
		}
	}
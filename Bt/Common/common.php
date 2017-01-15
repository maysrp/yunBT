<?php
	function uid_name($uid){
		$info=D('User')->find($uid);
		return $info['name'];
	}
	function thesize($size){
		if($size<1024){
			return $size."B";
		}elseif ($size<pow(2, 20)) {
			return round($size/pow(2,10),2)."KB";
		}elseif ($size<pow(2, 30)) {
			return round($size/pow(2,20),2)."MB";
		}elseif ($size<pow(2, 40)) {
			return round($size/pow(2,30),2)."GB";
		}else{
			return round($size/pow(2,40),2)."TB";
		}
	}
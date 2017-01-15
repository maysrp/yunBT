<?php
	class TalkModel extends Model{
		function add_one($info){
			$re=$this->time_info();
			$talk_array=json_decode($re['com'],true);
			if(strlen($info['text'])){
				$add['time']=time();
				$add['text']=$info['text'];
				$add['ip']=$_SERVER['REMOTE_ADDR'];
				$add['name']=$info['name'];
				$talk_array[]=$add;
				$re['com']=json_encode($talk_array);
				$this->save($re);
			}
			return $talk_array;
		}
		function time_info(){
			$day=date("Ymd");
			$where['time']=$day;
			$re=$this->where($where)->select();
			if($re){
				return $re[0];
			}else{
				$add['time']=$day;
				$tid=$this->add($add);
				$re['tid']=$tid;
				$re['time']=$day;
				return $re;

			}
		}
		
	}
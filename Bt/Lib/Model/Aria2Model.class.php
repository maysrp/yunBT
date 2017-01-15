<?php
	class Aria2Model extends Model{
		function up($info){
			$where["gid"]=$info['gid'];
			$ina=$this->where($where)->select();
			if(!$ina){
				$add['gid']=$info['gid'];
				$add['time']=time();
				$add['stime']=time();
				$add['status']=$info['status'];
				$this->add($add);
				return true;
			}else{
				if (($info['status']=="active")&&($ina[0]['status']=="active")) {
					$time=time();
					$vat=$time-$ina[0]['time'];
					if($vat>21600){
						return false;//超过6小时暂停
					}else{
						return true;
					}					
				}else{
					if($info['status']!=$ina[0]['status']){
						$save['aid']=$ina[0]['aid'];
						$save['gid']=$info['gid'];
						$save['time']=time();
						$save['status']=$info['status'];
						$this->save($save);
						return true;
					}
					return true;
				}
			}

		}




	}
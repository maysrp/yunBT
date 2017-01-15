<?php
	class QuestionModel extends Model{
		function addquestion($info,$qid){//传回信息
			$question=$this->find($qid);
			$info=trim($info);
			if($info){
				$text=json_decode($question['text'],true);
				$qe['uid']=$_SESSION['uid'];
				$question['replay']=0;
				if($_SESSION['admin']==1){
					$qe['uid']="管理员";
					$question['replay']=1;
				}
				$qe['time']=time();
				$qe['text']=$info;
				$text[]=$qe;
				$question['talkcount']=$question['talkcount']+1;
				$question['replay_time']=time();
				$question['text']=json_encode($text);
				$this->save($question);
			}
			return $question['text'];
		}
		function addquestion_uid($info,$uid){//传回信息
			$where['uid']=$uid;
			$q_a=$this->where($where)->select();
			if($q_a){
				$question=$q_a[0];
				$info=trim($info);
				if($info){
					$text=json_decode($question['text'],true);
					$qe['uid']=$_SESSION['uid'];
					$question['replay']=0;
					if($_SESSION['admin']==1){
						$qe['uid']="管理员";
						$question['replay']=1;
					}
					$qe['time']=time();
					$qe['text']=$info;
					$text[]=$qe;
					$question['talkcount']=$question['talkcount']+1;
					$question['replay_time']=time();
					$question['text']=json_encode($text);
					$this->save($question);
				}
				return $question['text'];
			}else{
				$add['uid']=$uid;
				$add['time']=time();
				$this->add($add);
				return "";
			}
		}
		function question($info){
			$where['uid']=$_SESSION['uid'];
			$isq=$this->where($where)->select();
			if($isq){
				$re=$this->addquestion($info,$isq[0]['qid']);
			}else{
				$length=strlen(trim($info));
				if(!$length){
					return "";
				}
				$uq['time']=time();
				$uq['uid']=$_SESSION['uid'];
				$uq['text']=$info;
				$question[]=$uq;
				$add['text']=json_encode($question);
				$add['uid']=$_SESSION['uid'];
				$add['time']=time();
				$add['talkcount']=1;
				$this->add($add);
				$re=$add['text'];
			}
			return $re;
		}
	}
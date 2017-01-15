<?php
	class QuestionAction extends Action{
		function talk(){
			if($_SESSION['uid']||$_SESSION['admin']){
				$re=D('Question')->question($_POST['talk']);
				$back=json_decode($re,true);
				$this->ajaxReturn($back);
			}else{
				return false;
			}
		}
	}
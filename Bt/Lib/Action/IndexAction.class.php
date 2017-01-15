<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {
    public function index(){
        $site=D('Site')->find(1);
        $where['status']="complete";
        $where['hash']=array("neq","URL");
        $code=D('Ondo')->where($where)->limit(10)->order("time desc")->select();
        $this->assign("code",$code);
        $this->assign("site",$site);
		$this->display();
    }
    function offline(){
    	if($_FILES['bt']['size']>999){
    		if($_FILES['bt']['size']>12000000){
    			$this->error("种子过大");
    			return;
    		}
    		if($this->ex($_FILES['bt']['name'])=="torrent"){
    			include 'BEncode.php';
				include 'BDecode.php';
				$na=md5_file($_FILES['bt']['tmp_name']);
				$name="./uploads/".$na.".torrent";
				move_uploaded_file($_FILES['bt']['tmp_name'],$name );
				$torrent_content = file_get_contents($name);
				$desc = BDecode($torrent_content);
				$info = $desc['info'];
				$b_tr=BEncode($info);
				$hash = strtoupper(sha1($b_tr));//ADD 
				$uri="magnet:?xt=urn:btih:".$hash;
				$this->aria2($hash,$uri);
    		}else{
    			$this->error("请选择种子文件");
    		}
    	}else{
            if(strlen($_POST['uri'])<7){
                $this->error("地址错误！");
            }
    		$uri=trim($_POST['uri']);
    		$pg='/[a-fA-F0-9]{40}/';
            $pg_1='/[a-zA-Z0-9]{32}/';
            $pg_2='/SCODE:[a-fA-F0-9]{16}/';
    		if(preg_match($pg,$uri, $pp)){
    			$hash=$pp[0];
                $hash=strtoupper($hash);
                $uri="magnet:?xt=urn:btih:".$hash;
				$this->aria2($hash,$uri);  			
    		}elseif(preg_match($pg_1,$uri, $pp)){
                $hash=$pp[0];
                $hash=strtoupper($hash);
                $uri="magnet:?xt=urn:btih:".$hash;
                $this->aria2($hash,$uri);
    		}elseif(preg_match($pg_2,$uri, $pp)){
                $scode=$pp[0];
                $re=D('Share')->add_scode($scode);
                if($re['status']){
                    $this->success($re['con']);
                }else{
                    $this->error($re['con']);
                }
            }else{
                $this->aria2($hash,$uri);
            }
    	}
    }
    function aria2($hash="NE",$uri){
    	include "Aria2.php";
    	$Aria2=new Aria2('http://127.0.0.1:6800/jsonrpc');
    	$re=D('Ondo')->add_uri($hash,$uri);
    	if($re['status']){
    		if($re['dir']){
    			$dir=$re['dir'];
    			$rem=$Aria2->addUri(array($uri),array('dir'=>$dir));
    			if(!$hash){
    				$save['oid']=$re['oid'];
                    $save['gid']=$rem['result'];
    				D('Ondo')->save($save);
    			}
    		}else{
    		}
    		//redirect(U('Index/index'));
    		$this->success("添加成功！");
    	}else{
    		$this->error($re['con']);
    	}
    	

    }
    function ex($rmf){
    	$e_a=explode(".", $rmf);
    	$ex=array_pop($e_a);
    	$ex=strtolower($ex);
    	return $ex;
    }
}
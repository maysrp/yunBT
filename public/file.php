<?php
	session_start();
	function abs2($file){
		$dir=dirname($file);
		$filename=basename($file);
		chdir($dir);
		$abs_dir=getcwd();
		return $abs_dir.'/'.$filename;
       
	}
    $filedir=isset($_SESSION['think']['dir']['dir'])?$_SESSION['think']['dir']['dir']:'';
    if($filedir){
		$f1=getcwd().'/file/'.$_GET['file'];
		$o1=abs2($f1);
		$o2=abs2($_SESSION['think']['dir']['dir']);
		// echo strpos($o1,$o2);
		// echo strpos($o1,$o2)!==FALSE;
		if(strpos($o1,$o2)!==FALSE){
			header("Content-Type: application/octet-stream");
			header("X-Accel-Redirect: /afile/" . $_GET['file']);
		}else{
			header("http/1.1 404 Not Found");
		}
    }else{
        header("http/1.1 404 Not Found");
    }

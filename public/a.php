<?php
    $dir='./file/download/../download/aaa';
    $mm=pathinfo($dir);
    $dirx='./file/download/../download/';
    chdir($dirx);
    var_dump(getcwd());

    function abs2($file){
        if(is_file($file)){
            $dir=dirname($file);
            $filename=basename($file);
            chdir($dir);
            $abs_dir=getcwd();
            return $abs_dir.'/'.$filename;
        }
    }
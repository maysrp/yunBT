<?php
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use think\Db;

class CronController extends HomeBaseController
{
    public $gb;
    public function download(){
        $this->gb=gb();
        $this->aria2_force();
    }
    protected function aria2_force(){
        $info=aria2();
        $result=isset($info['result'])?$info['result']:false;
        if($result){
            foreach ($result as $key => $value) {
                $filesname=str_replace($value['dir'].'/','',$value['files'][0]['path']);
                $xz=explode('/',$filesname);
                $update['name']=$xz[0];
                if($value['completedLength']>3000000){
                    $where['dir']=$value['dir'];
                    $where['alldone']=0;
                    $update['gid']=$value['gid'];
                    $update['complete']=$value['completedLength'];
                    $update['total']=$value['totalLength'];
                    $update['speed']=$value['downloadSpeed'];
                    $in=Db::name('magnet')->where($where)->update($update);
                }
                if((int)$value['totalLength']>$this->gb){
                    aria2_delete($value['gid']);
                    $where['dir']=$value['dir'];
                    $update['total']=$value['totalLength'];
                    $update['gid']=$value['gid'];
                    $in=Db::name('magnet')->where($where)->update($update);
                }
            }
        }
    }
}
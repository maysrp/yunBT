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
    public function taskpool(){
        $where['size']=['>',1000];//100MB 
        $where['ffmpeg']=0;
        $where['del']=0;
        $info=Db::name('video')->where($where)->select();
        foreach($info as $value){
            $logname=$value['fid'].".log";
            $logdir=APP_PATH."../public/file/log".DS.$logname;
            $inser['fid']=$value['fid'];
            $inser['odir']=APP_PATH."../public".DS.$value['pdir'];
            $inser['osize']=$value['size'];
            $inser['log']=$logdir;
            $inser['dir']=APP_PATH."../public/file".DS.'live'.DS.md5($value['pdir']).".mp4";
            Db::name('cron_ffmpeg')->insert($inser);
            $value['ffmpeg']=time();
            Db::name('video')->update($value);
        }
    }
    public function videodo(){
        $where['del']=0;
        $where['starttime']=['>',0];
        $where['time']=0;
        $info=Db::name('cron_ffmpeg')->where($where)->select();
        foreach($info as $value){
            $this->videolog($value['log'],$value['cid']);
        }
    }
    public function tjtime($str){
        $this->str=$str;
        $this->time=[];
        $this->allsec();
        return $this->second();
    }
    protected function second(){
        return (int)$this->time[0]*60*60+(int)$this->time[1]*60+(int)$this->time[2];
    }
    protected function allsec(){
        $i=0;
        while ($i < 3) {
            $this->time[]=$this->ach();
            $i++;
        }
    }
    protected function ach(){
        preg_match('/\d+/',$this->str,$ba);
        $this->str=preg_replace('/\d+/','xx',$this->str,$limit=1);
        return $ba[0];
    }
    protected function videolog($file,$cid){
        if(is_file($file)){
            $file=file_get_contents($file);
            $ons=preg_match('/overhead/',$file,$ov);
            preg_match('/Duration:.*?,/',$file,$alltime);
            preg_match_all('/speed.*?x/',$file,$speed);
            preg_match_all('/time=.*?\./',$file,$done);
            $psp=array_pop($speed[0]);
            preg_match('/\d+\.\d+/',$psp,$speeda);
            $speed=$speeda[0];
            $duration=$this->tjtime($alltime[0]);
            $done=$this->tjtime(array_pop($done[0]));
            $logname=basename($file);
            if($info=$this->cid($cid)){
                $info['speed']=$speed;
                $info['duration']=$duration;
                $info['done_time']=$done;
                if((time()-$info['starttime'])>86400){
                    $info['del']=time();
                    if($video=$this->fid($info['fid'])){
                        $video['ffmpeg']=0;
                        Db::name('video')->update($video);
                    }
                }
                $info['size']=filesize($info['dir']);
                if($ons){
                    $video=$this->fid($info['fid']);
                    $info['time']=time();
                    $video['size']=$info['size'];
                    Db::name('video')->update($video);
                }
                Db::name('cron_ffmpeg')->update($info);
            }
        }
    }



}
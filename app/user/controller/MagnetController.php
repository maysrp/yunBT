<?php
namespace app\user\controller;
use cmf\controller\UserBaseController;
use think\Db;
class MagnetController extends UserBaseController
{
    public function mylist(){
        $user=cmf_get_current_user();
        $this->assign($user);
        $where['del']=0;
        $where['udel']=0;
        $where['uid']=cmf_get_current_user_id();
        $list=Db::name('magnet')->where($where)->order('addtime','desc')->paginate(50);
        $title='所有下载文件';
        $this->assign('list',$list);
        return $this->fetch('list');//LIST
    }
    public function udel(){
        $mid=input('param.mid/d');
        $where['uid']=cmf_get_current_user_id();
        $update['udel']=time();
        $where['mid']=$mid;
        if(Db::name('magnet')->where($where)->update($update)){
            return $this->success('删除成功');
        }else{
            return $this->error('删除失败');
        }
    }
    public function addone(){
        $user=cmf_get_current_user();
        $this->assign($user);
        $user=cmf_get_current_user();
        return $this->fetch('add');
    }
    public function rename(){
        $where['uid']=cmf_get_current_user_id();
        $where['mid']=input('param.mid/d');
        if($update['uname']=input('param.rename/s')){
            if(Db::name('magnet')->where($where)->update($update)){
                $re['status']=true;
            }else{
                $re['status']=False;
            }
        }else{
            $re['status']=False;
        }
        return json($re);
    }
    public function addone_xo(){
        $magnet=input('param.magnet/s');
        $re=is_download_link($magnet);
        if($re['status']){
            if($this->have_download()>0){
                if(strlen($re['con'])<10){
                    $mid=(int)$re['con'];
                    $info=Db::name('magnet')->find($mid);
                    $xinfo=$info;
                    unset($xinfo['mid']);
                    unset($xinfo['speed']);
                    unset($xinfo['complete']);
                    unset($xinfo['uname']);
                    $xinfo['cmid']=$info['mid'];
                    $xinfo['uid']=cmf_get_current_user_id();
                    $xinfo['addtime']=time();
                    $xinfo['starttime']=time();
                    Db::name('magnet')->insert($xinfo);
                    $where_user['id']=cmf_get_current_user_id();
                    Db::name('user')->where($where_user)->setInc('used',1);
                    $this->success('提交成功');
                }else{
                    $rexz=$this->download_url($magnet);
                    if($rexz['status']){
                        $where_user['id']=cmf_get_current_user_id();
                        Db::name('user')->where($where_user)->setInc('used',1);
                        $this->success('提交成功');
                    }else{
                        $this->error($rexz['con']);
                    }
                }
            }else{
                $this->error('剩余任务量不足，请联系管理员！');
            }
        }else{
            $this->error($re['con']);
        }
    }
    public function open_dir(){
        $mid=input('param.mid/d');
        $where['uid']=cmf_get_current_user_id();
        $where['mid']=$mid;
        $where['del']=0;
        $where['udel']=0;
        if($info=Db::name('magnet')->where($where)->find()){
            $dir['dir']=$info['dir'];
            $dir['name']=$info['uname']?$info['uname']:$info['name'];
            session('dir',$dir);
            $this->redirect('/dir.php');
        }
        $this->error('不存在该目录');
        
    }
    protected function have_download(){
        $info=uid(cmf_get_current_user_id());
        return $info['total']-$info['used'];
    }
    protected function download_url($magnet){
        $insert['dir']=APP_PATH.'../public/file/download/'.md5($magnet);
        $insert['magnet']=$magnet;
        $insert['addtime']=time();
        $insert['uid']=cmf_get_current_user_id();
        if($insert['gid']=$this->download($magnet,$insert['dir'])){
            $insert['starttime']=time();
            $re['status']=Db::name('magnet')->insert($insert);
            $re['con']='';
        }else{
            $re['status']=False;
            $re['con']='链接存在问题';
        }
        return $re;

    }
    protected function download($url,$dir){
        $ar=aria2_add($url,$dir);
        if(isset($ar['result'])){
            return $ar['result'];
        }else{
            return false;
        }
    }




}
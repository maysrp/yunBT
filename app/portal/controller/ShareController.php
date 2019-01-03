<?php
    namespace app\portal\controller;

    use cmf\controller\HomeBaseController;
    use think\Db;
    
    class ShareController extends HomeBaseController
    {
        public function index()
        {
            return $this->fetch(':index');
        }
        public function url(){
            $url=input('param.url/s');
            $hash=input('param.hash/s');
            $where['del']=0;
            $where['share_url']=$hash?$hash:$url;
            if($share=Db::name('share')->where($where)->find()){
                $this->assign('info',$share);
                return $this->fetch('show');
            }
            return $this->error('空无一物');
        }
        public function url_dir(){
            $user=cmf_get_current_user();
            $this->assign($user);
            $password=input('param.password/s');
            $password=trim($password);
            $hash=input('param.hash/s');
            $where['del']=0;
            $where['share_url']=$hash;
            $where['password']=$password;
            if($share=Db::name('share')->where($where)->find()){
                $mwhere['del']=0;
                $mwhere['udel']=0;
                $mwhere['sid']=$share['sid'];
                $mwhere['mid']=$share['mid'];
                Db::name('share')->where($where)->setInc('count',1);
                if($xinfo=Db::name('magnet')->where($mwhere)->find()){
                    $this->assign('info',$share);
                    $this->assign('xinfo',$xinfo);
                    $dir['dir']=$share['dir'];
                    $dir['name']=$share['uname']?$share['uname']:$share['name'];
                    session('save_mid',$share['mid']);
                    session('dir',$dir);//MID
                    redis_dir($dir['dir']);
                    session('mid',$share['mid']);                    
                    return $this->fetch('url');
                }
            }
            return $this->error('空无一物');
        }
        public function save(){
            if($uid=cmf_get_current_user_id()){
                $where['mid']=session('save_mid');//MID
                $where['del']=0;
                $where['udel']=0;
                $where['uid']=['<>',$uid];
                if($info=Db::name('magnet')->where($where)->find()){
                    $xinfo=$info;
                    unset($xinfo['mid']);
                    unset($xinfo['speed']);
                    unset($xinfo['complete']);
                    unset($xinfo['uname']);
                    $xinfo['cmid']=$info['mid'];
                    $xinfo['uid']=$uid;
                    $xinfo['addtime']=time();
                    $xinfo['starttime']=time();
                    Db::name('magnet')->insert($xinfo);
                    // $where_user['id']=cmf_get_current_user_id();
                    // Db::name('user')->where($where_user)->setInc('used',1);
                    $this->success('提交成功',url('user/magnet/mylist'));
                }
                $this->error('未知错误');
            }else{
                $this->error("请先登入",url('user/login/index'));
            }
        }
        public function viewmid(){
            $user=cmf_get_current_user();
            $this->assign($user);
            $where['mid']=session('mid');
            $where['del']=0;
            $where['udel']=0;
            if($info=Db::name('magnet')->where($where)->find()){
                $vw['mid']=$info['cmid']>0?$info['cmid']:$info['mid'];
                $vw['del']=0;
                if($list=Db::name('vf')->where($vw)->paginate(30)){
                    $this->assign('list',$list);
                    return $this->fetch('viewmid');
                }
            }
            return $this->error('空无一物');
            
        }
    }
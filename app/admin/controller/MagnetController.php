<?php

namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Db;

class MagnetController extends AdminBaseController
{
    public function __construct(){
        parent::__construct();

    }
    public function list_all(){
        $where['del']=0;
        $list=Db::name('magnet')->where($where)->order('addtime','desc')->paginate(50);
        $title='所有下载文件';
        $this->assign('title',"全部下载");
        $this->assign('list',$list);
        return $this->fetch('list');//LIST
    }
    public function list_downloading(){
        $where['del']=0;
        $where['cmid']=0;
        $where['total']=['<',gb()];
        $list=Db::name('magnet')->where($where)->where('complete!=total')->order('addtime','desc')->paginate(50);
        $title='正在下载文件';
        $this->assign('title',"全部下载");
        $this->assign('list',$list);
        return $this->fetch('list');//LIST
    }
    public function list_downloaded(){
        $where['del']=0;
        $where['cmid']=0;
        $list=Db::name('magnet')->where($where)->where('complete=total')->order('addtime','desc')->paginate(50);
        $title='完成下载文件';
        $this->assign('title',"全部下载");
        $this->assign('list',$list);
        return $this->fetch('list');//LIST
    }
    public function udel(){
        $mid=input('param.mid/d');
        $update['udel']=time();
        $where['mid']=$mid;
        if(Db::name('magnet')->where($where)->update($update)){
            return $this->success('删除用户内容成功');
        }else{
            return $this->error('删除用户内容失败');
        }
    }
    public function unudel(){
        $mid=input('param.mid/d');
        $update['udel']=0;
        $where['mid']=$mid;
        if(Db::name('magnet')->where($where)->update($update)){
            return $this->success('恢复用户内容成功');
        }else{
            return $this->error('恢复用户内容失败');
        }
    }
    public function del_it(){
        $mid=input('param.mid/d');
        $update['del']=time();
        $where['mid']=$mid;
        $whereOr['cmid']=$mid;
        Db::name('magnet')->where($where)->whereOr($whereOr)->update($update);
        return $this->success('删除成功');
    }
    public function open_dir(){
        $mid=input('param.mid/d');
        $where['mid']=$mid;
        if($info=Db::name('magnet')->where($where)->find()){
            $dir['dir']=$info['dir'];
            $dir['name']=$info['uname']?$info['uname']:$info['name'];
            session('dir',$dir);
            $this->redirect('/dir.php');
        }
        $this->error('不存在该目录');
    }
    public function magnet_set(){
        $size=input('param.size/d');
        if($size>0){
            $update['size']=$size;
            $update['mid']=1;
            Db::name('magnet_site')->update($update);
            $this->success('修改成功');
        }
        $info=Db::name('magnet_site')->find(1);
        $this->assign('info',$info);
        $free=@disk_free_space(".");//disk 
	    $xtotal=@disk_total_space(".");
        $this->assign('free',$free);
        $this->assign('xtotal',$xtotal);
        return $this->fetch();
    }
    public function aria2_force(){
        $info=aria2();
        $result=isset($info['result'])?$info['result']:false;
        if($result){
            foreach ($result as $key => $value) {
                $where['dir']=$value['dir'];
                $update['gid']=$value['gid'];
                $update['complete']=$value['completedLength'];
                $update['total']=$value['totalLength'];
                $update['speed']=$value['downloadSpeed'];
                $in=Db::name('magnet')->where($where)->update($update);
            }
        }
    }
    public function show_dead(){
        $where['del']=0;
        $where['total']=0;
        $list=Db::name('magnet')->where($where)->order('addtime','desc')->paginate(50);
        $this->assign('name',"未开始下载链接");
        $this->assign('list',$list);
        // echo "<div class='row'><h1 class='text-danger'>未开始下载链接</h1></div><div class='row'><p>若长时间未启动请删除！</p></div>";
        return $this->fetch('magnet_search_list');
    }
    public function magnet_remove_file(){
        $id=input('param.id');
        if($info=$this->is_mid($id)){
            if($info['rmdir']<222){//进去再删除
                $info['rmdir']=time();
                $mm=Db::name('magnet')->update($info);
                $this->success('删除下载文件');
            }
        }
        $this->error('错误');
    }


    public function ajax_magnet_remove_file(){
        $id=input('param.id');
        if($info=$this->is_mid($id)){
            if(!$info['rmdir']&&$info['done']){//只能删一次
                $info['rmdir']=time();
                $mm=Db::name('magnet')->update($info);
                $re['status']=true;
                return json($re);
            }
        }
        $re['status']=false;
        return json($re);
    }
    public function magnet_remove(){
        $id=input('param.id');
        if($info=$this->is_mid($id)){
            $info['done']=0;
            $mm=Db::name('magnet')->update($info);
            
            $this->success('等待重新转移！［请等待重新转移，绝对不要重复操作！］');
        }else{
            $this->error('错误');
        }
    }
    public function magnet_force(){
        //强制转移动
        $id=input('param.id');
        if($info=$this->is_mid($id)){
            $info['alldone']=1;
            $info['forcedo']=time();
            Db::name('magnet')->update($info);
            $this->success('等待转移！［请等强制转移！］');
        }else{
            $this->error('错误');
        }

    }
    public function magnet_edit(){
        $id=input('param.id');
        if($info=$this->is_mid($id)){
            $this->assign('info',$info);
            return $this->fetch();
        }else{
            $this->error('无该信息');
        }
    }
    public function magnet_edit_post(){
        $id=input('param.id');
        $name=input('param.name');
        $tag=input('param.tag');        
        if($info=$this->is_mid($id)){
            $up['mid']=$info['mid'];
            $up['name']=$name;
            $up['mid']=$id;
            $up['tag']=$tag;
            if(Db::name('magnet')->update($up)){
                $this->success('修改成果');
            }else{
                $this->error('修改失败');
            }
        }else{
            $this->error('无该信息');
        }
    }
    public function magnet_del(){
        $id=input('param.id');
        if($this->del_mid((int)$id)){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    public function magnet_array_del(){
        $ida=$_GET['ida'];
        $da=json_decode($ida,true);
        foreach ($da as $key => $value) {
            if($info=$this->is_mid($value)){
                $this->del_mid($value);
            }
        }
    }
    public function magnet_view(){
        $id=input('param.id');
        $info=$this->is_mid($id);
        if($info){
            $this->assign('info',$info);
            return $this->fetch();
        }else{
            $this->error('不存在该任务');
        }
    }
    public function magnet_search(){
        return $this->fetch();
    }
    public function magnet_search_list(){
        // $name=input('param.name');
        $name=isset($_POST['name'])?trim($_POST['name']):'';
        $where['del']=0;
        $where['name|tag']=['like',"%".$name."%"];
        $list=Db::name('magnet')->where($where)->order('addtime','desc')->paginate(25);
        $this->assign('name',$name);
        $this->assign('list',$list);
        return $this->fetch();
    }
    public function magnet_add_array(){
        return $this->fetch();
    }
    public function magnet_add_array_do(){
        $name=input('param.name/a');
        $tag=input('param.tag/a');
        $magnet=input('param.magnet/a');
        $re=[];
        $re['success']=[];
        $re['error']=[];
        if(count($name)==count($tag)||count($tag)==count($magnet)){
            for($i=0;$i<count($name);$i++){
                $n=trim($name[$i]);
                $m=trim($magnet[$i]);
                $t=trim($tag[$i]);
                if($n&&$m&&$t){
                    if($this->magnet_addonepost($n,$m,$t)){
                        $ere['name']=$n;
                        $ere['tag']=$t;
                        $ere['magnet']=$m;
                        $re['success'][]=$ere;
                    }else{
                        $ere['name']=$n;
                        $ere['tag']=$t;
                        $ere['magnet']=$m;
                        $re['error'][]=$ere;
                    }
                }else{
                    $ere['name']=$n;
                    $ere['tag']=$t;
                    $ere['magnet']=$m;
                    $re['error'][]=$ere;
                }
            }
            $this->assign('info',$re);
            // halt($re);
            return $this->fetch();
        }else{
            $this->error('数目不匹配');
        }
        
    }
    protected function magnet_addonepost($name,$magnet,$tag){
        if($name&&$magnet){
            if($this->is_download($magnet)){
                return false;
            }           
            $back=$this->add_magnet($name,$magnet,$tag);
            if($back['status']){
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
    public function ajax_add(){
        $name=input('param.name');
        $tag=input('param.tag');
        $magnet=input('param.magnet');
        $name=trim($name);
        $tag=trim($tag);
        $magnet=trim($magnet);
        $re['status']=$this->magnet_addonepost($name,$magnet,$tag);
        return json($re);
    }
    public function magnet_list(){
        $free=@disk_free_space(".");//disk 
	    $xtotal=@disk_total_space(".");
	    $used=$xtotal-$free;
	    $usp=round($used/$xtotal*100,2);//used %
        $where['del']=0;
        $list=Db::name('magnet')->where($where)->order('addtime','desc')->paginate(25);
        $total=$this->count_magnet();
        $complete=$this->count_complete();
        $this->assign('usp',$usp);
        $this->assign('free',$free);
        $this->assign('xtotal',$xtotal);
        $this->assign('complete',$complete);
        $this->assign('total',$total);
        $this->assign('list',$list);
        return $this->fetch('list');
    }
    public function magnet_add(){
        return $this->fetch('magnet_add');
    }
    public function magnet_add_post(){
        $name=trim(input('param.name'));
        $magnet=trim(input('param.magnet'));
        $tag=trim(input('param.tag'));
        if($name&&$magnet){
            if($this->is_download($magnet)){
                $this->error('该文件已经下载');
                return;
            }           
            $back=$this->add_magnet($name,$magnet,$tag);
            if($back['status']){
                $this->success('成功提交',url('admin/magnet/magnet_list'));
            }else{
                $this->error($back['con']);
            }
        }else{
            $this->error('name和magnet必须全部填写');
        }
    }
    public function download_line(){
        $where['del']=0;
        $where['total']=['>',0];
        $where['forcedo']=0;
        $info=Db::name('magnet')->where($where)->where('total>complete')->select();
        $this->assign('total',count($info));
        $this->assign('list',$info);
        return $this->fetch();
    }
    protected function is_download($magnet){
        $where['del']=0;
        $where['magnet']=$magnet;
        $info=Db::name('magnet')->where($where)->select();
        // var_dump($info); 
        if(count($info)){
            return $info;
        }else{
            return false;
        }
    }
    protected function download($url,$dir){
        $ar=aria2_add($url,$dir);
        if(isset($ar['result'])){
            return $ar['result'];
        }else{
            return false;
        }
    }
    protected function del_mid($mid){
        if($info=$this->is_mid($mid)){
            if($info['total']>$info['complete']){//aria2
                aria2_del($info['gid']);
            }
            $up['mid']=$mid;
            $up['del']=json_encode($_SERVER);
            if(Db::name('magnet')->update($up)){
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
    protected function is_mid($mid){
        $where['mid']=$mid;
        $where['del']=0;
        $info=Db::name('magnet')->where($where)->select();
        if(count($info)){
            return $info[0];
        }else{
            return false;
        }
    }
    protected function is_midx($mid){
        $where['total']=['>',0];
        $where['mid']=$mid;
        $where['del']=0;
        $where['done']=0;
        $info=Db::name('magnet')->where($where)->where('total=complete')->select();
        if(count($info)){
            return $info[0];
        }else{
            return false;
        }
    }
    protected function count_magnet(){// 文件总数
        $where['del']=0;
        return Db::name('magnet')->where($where)->count();
    }
    protected function count_complete(){//完成下载数
        $where['del']=0;
        $where['total']=['>',0];
        $where['starttime']=['>',0];
        return Db::name('magnet')->where($where)->where('total=complete')->count();

    }
    protected function add_magnet($name,$magnet,$tag){
        if($name&&$magnet){
            $rb=$this->is_magnet($magnet);
            if(!$rb['status']){
                return $rb;
            }else{
                $add['dir']=APP_PATH.'../public/download/'.md5($magnet.$name.$tag);
                $add['tag']=isset($tag)?$tag:'';
                $add['name']=$name;
                $add['magnet']=$magnet;
                $add['addtime']=time();
                $add['server']=json_encode($_SERVER);
                $add['admin']=cmf_get_current_admin_id();
                if($gid=$this->download($magnet,$add['dir'])){
                    $add['starttime']=time();
                }else{
                    $this->error('链接地址有误');
                    return;
                }
                $back['status']=Db::name('magnet')->insert($add);
                return $back;
            }
        }else{
            $back['status']=fasle;
            $back['con']='必须添加链接名和链接是必填项目';
            return $back;
        }

    } 
    protected function is_magnet($magnet){
        //True Error/is_exists
        $where['magnet']=$magnet;
        $where['del']=0;
        $x=Db::name('magnet')->where($where)->select();
        if(count($x)){
            $back['status']=false;
            $back['con']='该链接已经存在';
        }else{
            $back['status']=true;
            $back['con']='';
        }
        if(!stristr($magnet,'magnet:?xt=urn:btih:')){
            $back['status']=false;
            $back['con'].='   不是磁力链接';
        }
        return $back;
    }
}
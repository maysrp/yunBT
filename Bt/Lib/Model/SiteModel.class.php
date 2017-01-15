<?php
	class SiteModel extends Model{
		public $site;
		function __construct(){
			parent::__construct();
			$this->site=$this->find(1);
		}

		function gg($info){
			$site_gg['info']=$info;
			$site_gg['time']=time();
			$gg_info=json_decode($this->site['gg_history'],true);
			$gg_info[]=$site_gg;
			$this->site['gg_history']=json_encode($gg_info);
			$this->site['gg']=$info;
			$this->save($this->site);
		}
		function fw($info){
			$site_fw['info']=$info;
			$site_fw['time']=time();
			$fw_info=json_decode($this->site['fw_history'],true);
			$fw_info[]=$site_fw;
			$this->site['fw_history']=json_encode($fw_info);
			$this->site['fw']=$info;
			$this->save($this->site);
		}
	}
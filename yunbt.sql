-- MySQL dump 10.13  Distrib 5.5.60, for Linux (x86_64)
--
-- Host: localhost    Database: yunbt
-- ------------------------------------------------------
-- Server version	5.5.60-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `yunbt_admin_menu`
--

DROP TABLE IF EXISTS `yunbt_admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_admin_menu`
--

LOCK TABLES `yunbt_admin_menu` WRITE;
/*!40000 ALTER TABLE `yunbt_admin_menu` DISABLE KEYS */;
INSERT INTO `yunbt_admin_menu` VALUES (1,0,0,1,20,'admin','Plugin','default','','插件中心','cloud','插件中心'),(2,1,1,1,10000,'admin','Hook','index','','钩子管理','','钩子管理'),(3,2,1,0,10000,'admin','Hook','plugins','','钩子插件管理','','钩子插件管理'),(4,2,2,0,10000,'admin','Hook','pluginListOrder','','钩子插件排序','','钩子插件排序'),(5,2,1,0,10000,'admin','Hook','sync','','同步钩子','','同步钩子'),(6,0,0,1,0,'admin','Setting','default','','设置','cogs','系统设置入口'),(7,6,1,1,50,'admin','Link','index','','友情链接','','友情链接管理'),(8,7,1,0,10000,'admin','Link','add','','添加友情链接','','添加友情链接'),(9,7,2,0,10000,'admin','Link','addPost','','添加友情链接提交保存','','添加友情链接提交保存'),(10,7,1,0,10000,'admin','Link','edit','','编辑友情链接','','编辑友情链接'),(11,7,2,0,10000,'admin','Link','editPost','','编辑友情链接提交保存','','编辑友情链接提交保存'),(12,7,2,0,10000,'admin','Link','delete','','删除友情链接','','删除友情链接'),(13,7,2,0,10000,'admin','Link','listOrder','','友情链接排序','','友情链接排序'),(14,7,2,0,10000,'admin','Link','toggle','','友情链接显示隐藏','','友情链接显示隐藏'),(15,6,1,1,10,'admin','Mailer','index','','邮箱配置','','邮箱配置'),(16,15,2,0,10000,'admin','Mailer','indexPost','','邮箱配置提交保存','','邮箱配置提交保存'),(17,15,1,0,10000,'admin','Mailer','template','','邮件模板','','邮件模板'),(18,15,2,0,10000,'admin','Mailer','templatePost','','邮件模板提交','','邮件模板提交'),(19,15,1,0,10000,'admin','Mailer','test','','邮件发送测试','','邮件发送测试'),(20,6,1,0,10000,'admin','Menu','index','','后台菜单','','后台菜单管理'),(21,20,1,0,10000,'admin','Menu','lists','','所有菜单','','后台所有菜单列表'),(22,20,1,0,10000,'admin','Menu','add','','后台菜单添加','','后台菜单添加'),(23,20,2,0,10000,'admin','Menu','addPost','','后台菜单添加提交保存','','后台菜单添加提交保存'),(24,20,1,0,10000,'admin','Menu','edit','','后台菜单编辑','','后台菜单编辑'),(25,20,2,0,10000,'admin','Menu','editPost','','后台菜单编辑提交保存','','后台菜单编辑提交保存'),(26,20,2,0,10000,'admin','Menu','delete','','后台菜单删除','','后台菜单删除'),(27,20,2,0,10000,'admin','Menu','listOrder','','后台菜单排序','','后台菜单排序'),(28,20,1,0,10000,'admin','Menu','getActions','','导入新后台菜单','','导入新后台菜单'),(29,6,1,1,30,'admin','Nav','index','','导航管理','','导航管理'),(30,29,1,0,10000,'admin','Nav','add','','添加导航','','添加导航'),(31,29,2,0,10000,'admin','Nav','addPost','','添加导航提交保存','','添加导航提交保存'),(32,29,1,0,10000,'admin','Nav','edit','','编辑导航','','编辑导航'),(33,29,2,0,10000,'admin','Nav','editPost','','编辑导航提交保存','','编辑导航提交保存'),(34,29,2,0,10000,'admin','Nav','delete','','删除导航','','删除导航'),(35,29,1,0,10000,'admin','NavMenu','index','','导航菜单','','导航菜单'),(36,35,1,0,10000,'admin','NavMenu','add','','添加导航菜单','','添加导航菜单'),(37,35,2,0,10000,'admin','NavMenu','addPost','','添加导航菜单提交保存','','添加导航菜单提交保存'),(38,35,1,0,10000,'admin','NavMenu','edit','','编辑导航菜单','','编辑导航菜单'),(39,35,2,0,10000,'admin','NavMenu','editPost','','编辑导航菜单提交保存','','编辑导航菜单提交保存'),(40,35,2,0,10000,'admin','NavMenu','delete','','删除导航菜单','','删除导航菜单'),(41,35,2,0,10000,'admin','NavMenu','listOrder','','导航菜单排序','','导航菜单排序'),(42,1,1,1,10000,'admin','Plugin','index','','插件列表','','插件列表'),(43,42,2,0,10000,'admin','Plugin','toggle','','插件启用禁用','','插件启用禁用'),(44,42,1,0,10000,'admin','Plugin','setting','','插件设置','','插件设置'),(45,42,2,0,10000,'admin','Plugin','settingPost','','插件设置提交','','插件设置提交'),(46,42,2,0,10000,'admin','Plugin','install','','插件安装','','插件安装'),(47,42,2,0,10000,'admin','Plugin','update','','插件更新','','插件更新'),(48,42,2,0,10000,'admin','Plugin','uninstall','','卸载插件','','卸载插件'),(49,110,0,1,10000,'admin','User','default','','管理组','','管理组'),(50,49,1,1,10000,'admin','Rbac','index','','角色管理','','角色管理'),(51,50,1,0,10000,'admin','Rbac','roleAdd','','添加角色','','添加角色'),(52,50,2,0,10000,'admin','Rbac','roleAddPost','','添加角色提交','','添加角色提交'),(53,50,1,0,10000,'admin','Rbac','roleEdit','','编辑角色','','编辑角色'),(54,50,2,0,10000,'admin','Rbac','roleEditPost','','编辑角色提交','','编辑角色提交'),(55,50,2,0,10000,'admin','Rbac','roleDelete','','删除角色','','删除角色'),(56,50,1,0,10000,'admin','Rbac','authorize','','设置角色权限','','设置角色权限'),(57,50,2,0,10000,'admin','Rbac','authorizePost','','角色授权提交','','角色授权提交'),(58,0,1,0,10000,'admin','RecycleBin','index','','回收站','','回收站'),(59,58,2,0,10000,'admin','RecycleBin','restore','','回收站还原','','回收站还原'),(60,58,2,0,10000,'admin','RecycleBin','delete','','回收站彻底删除','','回收站彻底删除'),(61,6,1,1,10000,'admin','Route','index','','URL美化','','URL规则管理'),(62,61,1,0,10000,'admin','Route','add','','添加路由规则','','添加路由规则'),(63,61,2,0,10000,'admin','Route','addPost','','添加路由规则提交','','添加路由规则提交'),(64,61,1,0,10000,'admin','Route','edit','','路由规则编辑','','路由规则编辑'),(65,61,2,0,10000,'admin','Route','editPost','','路由规则编辑提交','','路由规则编辑提交'),(66,61,2,0,10000,'admin','Route','delete','','路由规则删除','','路由规则删除'),(67,61,2,0,10000,'admin','Route','ban','','路由规则禁用','','路由规则禁用'),(68,61,2,0,10000,'admin','Route','open','','路由规则启用','','路由规则启用'),(69,61,2,0,10000,'admin','Route','listOrder','','路由规则排序','','路由规则排序'),(70,61,1,0,10000,'admin','Route','select','','选择URL','','选择URL'),(71,6,1,1,0,'admin','Setting','site','','网站信息','','网站信息'),(72,71,2,0,10000,'admin','Setting','sitePost','','网站信息设置提交','','网站信息设置提交'),(73,6,1,0,10000,'admin','Setting','password','','密码修改','','密码修改'),(74,73,2,0,10000,'admin','Setting','passwordPost','','密码修改提交','','密码修改提交'),(75,6,1,1,10000,'admin','Setting','upload','','上传设置','','上传设置'),(76,75,2,0,10000,'admin','Setting','uploadPost','','上传设置提交','','上传设置提交'),(77,6,1,0,10000,'admin','Setting','clearCache','','清除缓存','','清除缓存'),(78,6,1,1,40,'admin','Slide','index','','幻灯片管理','','幻灯片管理'),(79,78,1,0,10000,'admin','Slide','add','','添加幻灯片','','添加幻灯片'),(80,78,2,0,10000,'admin','Slide','addPost','','添加幻灯片提交','','添加幻灯片提交'),(81,78,1,0,10000,'admin','Slide','edit','','编辑幻灯片','','编辑幻灯片'),(82,78,2,0,10000,'admin','Slide','editPost','','编辑幻灯片提交','','编辑幻灯片提交'),(83,78,2,0,10000,'admin','Slide','delete','','删除幻灯片','','删除幻灯片'),(84,78,1,0,10000,'admin','SlideItem','index','','幻灯片页面列表','','幻灯片页面列表'),(85,84,1,0,10000,'admin','SlideItem','add','','幻灯片页面添加','','幻灯片页面添加'),(86,84,2,0,10000,'admin','SlideItem','addPost','','幻灯片页面添加提交','','幻灯片页面添加提交'),(87,84,1,0,10000,'admin','SlideItem','edit','','幻灯片页面编辑','','幻灯片页面编辑'),(88,84,2,0,10000,'admin','SlideItem','editPost','','幻灯片页面编辑提交','','幻灯片页面编辑提交'),(89,84,2,0,10000,'admin','SlideItem','delete','','幻灯片页面删除','','幻灯片页面删除'),(90,84,2,0,10000,'admin','SlideItem','ban','','幻灯片页面隐藏','','幻灯片页面隐藏'),(91,84,2,0,10000,'admin','SlideItem','cancelBan','','幻灯片页面显示','','幻灯片页面显示'),(92,84,2,0,10000,'admin','SlideItem','listOrder','','幻灯片页面排序','','幻灯片页面排序'),(93,6,1,1,10000,'admin','Storage','index','','文件存储','','文件存储'),(94,93,2,0,10000,'admin','Storage','settingPost','','文件存储设置提交','','文件存储设置提交'),(95,6,1,1,20,'admin','Theme','index','','模板管理','','模板管理'),(96,95,1,0,10000,'admin','Theme','install','','安装模板','','安装模板'),(97,95,2,0,10000,'admin','Theme','uninstall','','卸载模板','','卸载模板'),(98,95,2,0,10000,'admin','Theme','installTheme','','模板安装','','模板安装'),(99,95,2,0,10000,'admin','Theme','update','','模板更新','','模板更新'),(100,95,2,0,10000,'admin','Theme','active','','启用模板','','启用模板'),(101,95,1,0,10000,'admin','Theme','files','','模板文件列表','','启用模板'),(102,95,1,0,10000,'admin','Theme','fileSetting','','模板文件设置','','模板文件设置'),(103,95,1,0,10000,'admin','Theme','fileArrayData','','模板文件数组数据列表','','模板文件数组数据列表'),(104,95,2,0,10000,'admin','Theme','fileArrayDataEdit','','模板文件数组数据添加编辑','','模板文件数组数据添加编辑'),(105,95,2,0,10000,'admin','Theme','fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存','','模板文件数组数据添加编辑提交保存'),(106,95,2,0,10000,'admin','Theme','fileArrayDataDelete','','模板文件数组数据删除','','模板文件数组数据删除'),(107,95,2,0,10000,'admin','Theme','settingPost','','模板文件编辑提交保存','','模板文件编辑提交保存'),(108,95,1,0,10000,'admin','Theme','dataSource','','模板文件设置数据源','','模板文件设置数据源'),(109,95,1,0,10000,'admin','Theme','design','','模板设计','','模板设计'),(110,0,0,1,10,'user','AdminIndex','default','','用户管理','group','用户管理'),(111,49,1,1,10000,'admin','User','index','','管理员','','管理员管理'),(112,111,1,0,10000,'admin','User','add','','管理员添加','','管理员添加'),(113,111,2,0,10000,'admin','User','addPost','','管理员添加提交','','管理员添加提交'),(114,111,1,0,10000,'admin','User','edit','','管理员编辑','','管理员编辑'),(115,111,2,0,10000,'admin','User','editPost','','管理员编辑提交','','管理员编辑提交'),(116,111,1,0,10000,'admin','User','userInfo','','个人信息','','管理员个人信息修改'),(117,111,2,0,10000,'admin','User','userInfoPost','','管理员个人信息修改提交','','管理员个人信息修改提交'),(118,111,2,0,10000,'admin','User','delete','','管理员删除','','管理员删除'),(119,111,2,0,10000,'admin','User','ban','','停用管理员','','停用管理员'),(120,111,2,0,10000,'admin','User','cancelBan','','启用管理员','','启用管理员'),(121,0,0,1,30,'portal','AdminIndex','default','','门户管理','th','门户管理'),(122,121,1,1,10000,'portal','AdminArticle','index','','文章管理','','文章列表'),(123,122,1,0,10000,'portal','AdminArticle','add','','添加文章','','添加文章'),(124,122,2,0,10000,'portal','AdminArticle','addPost','','添加文章提交','','添加文章提交'),(125,122,1,0,10000,'portal','AdminArticle','edit','','编辑文章','','编辑文章'),(126,122,2,0,10000,'portal','AdminArticle','editPost','','编辑文章提交','','编辑文章提交'),(127,122,2,0,10000,'portal','AdminArticle','delete','','文章删除','','文章删除'),(128,122,2,0,10000,'portal','AdminArticle','publish','','文章发布','','文章发布'),(129,122,2,0,10000,'portal','AdminArticle','top','','文章置顶','','文章置顶'),(130,122,2,0,10000,'portal','AdminArticle','recommend','','文章推荐','','文章推荐'),(131,122,2,0,10000,'portal','AdminArticle','listOrder','','文章排序','','文章排序'),(132,121,1,1,10000,'portal','AdminCategory','index','','分类管理','','文章分类列表'),(133,132,1,0,10000,'portal','AdminCategory','add','','添加文章分类','','添加文章分类'),(134,132,2,0,10000,'portal','AdminCategory','addPost','','添加文章分类提交','','添加文章分类提交'),(135,132,1,0,10000,'portal','AdminCategory','edit','','编辑文章分类','','编辑文章分类'),(136,132,2,0,10000,'portal','AdminCategory','editPost','','编辑文章分类提交','','编辑文章分类提交'),(137,132,1,0,10000,'portal','AdminCategory','select','','文章分类选择对话框','','文章分类选择对话框'),(138,132,2,0,10000,'portal','AdminCategory','listOrder','','文章分类排序','','文章分类排序'),(139,132,2,0,10000,'portal','AdminCategory','delete','','删除文章分类','','删除文章分类'),(140,121,1,1,10000,'portal','AdminPage','index','','页面管理','','页面管理'),(141,140,1,0,10000,'portal','AdminPage','add','','添加页面','','添加页面'),(142,140,2,0,10000,'portal','AdminPage','addPost','','添加页面提交','','添加页面提交'),(143,140,1,0,10000,'portal','AdminPage','edit','','编辑页面','','编辑页面'),(144,140,2,0,10000,'portal','AdminPage','editPost','','编辑页面提交','','编辑页面提交'),(145,140,2,0,10000,'portal','AdminPage','delete','','删除页面','','删除页面'),(146,121,1,1,10000,'portal','AdminTag','index','','文章标签','','文章标签'),(147,146,1,0,10000,'portal','AdminTag','add','','添加文章标签','','添加文章标签'),(148,146,2,0,10000,'portal','AdminTag','addPost','','添加文章标签提交','','添加文章标签提交'),(149,146,2,0,10000,'portal','AdminTag','upStatus','','更新标签状态','','更新标签状态'),(150,146,2,0,10000,'portal','AdminTag','delete','','删除文章标签','','删除文章标签'),(151,0,1,0,10000,'user','AdminAsset','index','','资源管理','file','资源管理列表'),(152,151,2,0,10000,'user','AdminAsset','delete','','删除文件','','删除文件'),(153,110,0,1,10000,'user','AdminIndex','default1','','用户组','','用户组'),(154,153,1,1,10000,'user','AdminIndex','index','','本站用户','','本站用户'),(155,154,2,0,10000,'user','AdminIndex','ban','','本站用户拉黑','','本站用户拉黑'),(156,154,2,0,10000,'user','AdminIndex','cancelBan','','本站用户启用','','本站用户启用'),(157,153,1,1,10000,'user','AdminOauth','index','','第三方用户','','第三方用户'),(158,157,2,0,10000,'user','AdminOauth','delete','','删除第三方用户绑定','','删除第三方用户绑定'),(159,6,1,1,10000,'user','AdminUserAction','index','','用户操作管理','','用户操作管理'),(160,159,1,0,10000,'user','AdminUserAction','edit','','编辑用户操作','','编辑用户操作'),(161,159,2,0,10000,'user','AdminUserAction','editPost','','编辑用户操作提交','','编辑用户操作提交'),(162,159,1,0,10000,'user','AdminUserAction','sync','','同步用户操作','','同步用户操作'),(163,0,1,1,5,'admin','magnet','default','','下载控制','magnet',''),(164,163,1,1,10000,'admin','magnet','list_all','','全部下载','',''),(165,163,1,1,10000,'admin','magnet','list_downloading','','正在下载','',''),(166,163,1,1,10000,'admin','magnet','list_downloaded','','完成任务','',''),(167,163,1,1,10000,'admin','magnet','magnet_set','','下载设置','',''),(168,163,1,1,10000,'admin','magnet','show_share','','分享列表','',''),(170,163,1,1,10000,'admin','magnet','show_all_videofile','','视频文件','','');
/*!40000 ALTER TABLE `yunbt_admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_asset`
--

DROP TABLE IF EXISTS `yunbt_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_asset`
--

LOCK TABLES `yunbt_asset` WRITE;
/*!40000 ALTER TABLE `yunbt_asset` DISABLE KEYS */;
INSERT INTO `yunbt_asset` VALUES (1,1,947363,1545183915,1,0,'8cd91ecb228c68c6ce5e412aa1d5026da27c59f8519e0d23e0283da7fac9f916','bh3bg.jpg','admin/20181219/2ca0e872f81d65b6eaf481ff84d1bad7.jpg','8cd91ecb228c68c6ce5e412aa1d5026d','7e13add917ee849fb2e2f634bafc135bb16816a7','jpg',NULL),(2,1,120562,1545183971,1,0,'2080c52fd8309c8556c90e107574ff43f568ecbe837350c4dfd862680a9ed0b1','timg.jpeg','admin/20181219/37c36a1436c3a25168d1fdc6a9252e37.jpeg','2080c52fd8309c8556c90e107574ff43','547d279b06db15805bbedd42f359969907b7330a','jpeg',NULL),(3,1,786234,1545184025,1,0,'c01e8e69c6aafb25639cfcc8dc0f644d77871a73d1f57a5a9290437633087a9e','timg (1).jpeg','admin/20181219/c5d57d105ee6639784c647612bb7c4e1.jpeg','c01e8e69c6aafb25639cfcc8dc0f644d','ceabb2adc245153780cf5b2dd739dd9d64187126','jpeg',NULL),(4,1,233027,1545184060,1,0,'443a354a609ab824975be599157978128523242221c17f3fe34526de25ae7410','bh3bg2.jpg','admin/20181219/be17fea458c29d4a2dbe2a24559074ee.jpg','443a354a609ab824975be59915797812','024ea701782a34d3d6bc322be334f0342fb74383','jpg',NULL),(5,1,265997,1545194226,1,0,'b3e04bfa9167e9a7bd572bab6a4684026b76c3472d38a73702668f5a05f25d46','yande.re 501535 sample ashima dress landscape.jpg','admin/20181219/baae391ece4840819a8ca5187b84908f.jpg','b3e04bfa9167e9a7bd572bab6a468402','c46f8ef615ebe3f5e27efd598005981806b757a7','jpg',NULL),(6,1,276480,1545194281,1,0,'2aad5f332e5bc6ed527f91d08ddfff9a843f6c79ba252b110c8fb262032f85d5','yande.re 501439 sample christmas ereshkigal_(fate_grand_order) fate_grand_order kola.r_(rko10032).jp','admin/20181219/d8a6a86a115ac76ac52a5e15ae0a8d36.jpg','2aad5f332e5bc6ed527f91d08ddfff9a','7ef3eb584db0237351996d8814d40e64be3922cd','jpg',NULL),(7,1,407945,1545194320,1,0,'2369528fce1aa2deb3c65dbc850af99276550f4f555540d0f256677dbbe18db8','yande.re 501541 sample baisi_shaonian gun isaac_foster rachel_gardner satsuriku_no_tenshi weapon.jpg','admin/20181219/7a432210f76beae92757fef56052f363.jpg','2369528fce1aa2deb3c65dbc850af992','ad26f9a3dfb02c5dee803b3ad0998387341f3760','jpg',NULL),(8,1,257107,1545194354,1,0,'181f45f69efd01049ab8d317d452bf9f87e339a32a5f28fd6b0f7e8d6484d89f','yande.re 501828 sample darling_in_the_franxx horns sweater tagme zero_two_(darling_in_the_franxx).jp','admin/20181219/2927ced8b224fca20a740104a6ec3a44.jpg','181f45f69efd01049ab8d317d452bf9f','361da42ac0030f33bc72f25933b8ac3ebd44ca58','jpg',NULL),(9,1,327147,1545194388,1,0,'3276a04983340c1ef5311ed901ae83c611d7f22697a057296b0ec413080999ab','yande.re 501869 sample dress hatsune_miku heels kagamine_len kagamine_rin kaito megurine_luka meiko ','admin/20181219/a4777789e8fa6592bba7810f0ff694e8.jpg','3276a04983340c1ef5311ed901ae83c6','7476ebe7afb027baf44ff64e91af473254b76160','jpg',NULL);
/*!40000 ALTER TABLE `yunbt_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_auth_access`
--

DROP TABLE IF EXISTS `yunbt_auth_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_auth_access`
--

LOCK TABLES `yunbt_auth_access` WRITE;
/*!40000 ALTER TABLE `yunbt_auth_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_auth_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_auth_rule`
--

DROP TABLE IF EXISTS `yunbt_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_auth_rule`
--

LOCK TABLES `yunbt_auth_rule` WRITE;
/*!40000 ALTER TABLE `yunbt_auth_rule` DISABLE KEYS */;
INSERT INTO `yunbt_auth_rule` VALUES (1,1,'admin','admin_url','admin/Hook/index','','钩子管理',''),(2,1,'admin','admin_url','admin/Hook/plugins','','钩子插件管理',''),(3,1,'admin','admin_url','admin/Hook/pluginListOrder','','钩子插件排序',''),(4,1,'admin','admin_url','admin/Hook/sync','','同步钩子',''),(5,1,'admin','admin_url','admin/Link/index','','友情链接',''),(6,1,'admin','admin_url','admin/Link/add','','添加友情链接',''),(7,1,'admin','admin_url','admin/Link/addPost','','添加友情链接提交保存',''),(8,1,'admin','admin_url','admin/Link/edit','','编辑友情链接',''),(9,1,'admin','admin_url','admin/Link/editPost','','编辑友情链接提交保存',''),(10,1,'admin','admin_url','admin/Link/delete','','删除友情链接',''),(11,1,'admin','admin_url','admin/Link/listOrder','','友情链接排序',''),(12,1,'admin','admin_url','admin/Link/toggle','','友情链接显示隐藏',''),(13,1,'admin','admin_url','admin/Mailer/index','','邮箱配置',''),(14,1,'admin','admin_url','admin/Mailer/indexPost','','邮箱配置提交保存',''),(15,1,'admin','admin_url','admin/Mailer/template','','邮件模板',''),(16,1,'admin','admin_url','admin/Mailer/templatePost','','邮件模板提交',''),(17,1,'admin','admin_url','admin/Mailer/test','','邮件发送测试',''),(18,1,'admin','admin_url','admin/Menu/index','','后台菜单',''),(19,1,'admin','admin_url','admin/Menu/lists','','所有菜单',''),(20,1,'admin','admin_url','admin/Menu/add','','后台菜单添加',''),(21,1,'admin','admin_url','admin/Menu/addPost','','后台菜单添加提交保存',''),(22,1,'admin','admin_url','admin/Menu/edit','','后台菜单编辑',''),(23,1,'admin','admin_url','admin/Menu/editPost','','后台菜单编辑提交保存',''),(24,1,'admin','admin_url','admin/Menu/delete','','后台菜单删除',''),(25,1,'admin','admin_url','admin/Menu/listOrder','','后台菜单排序',''),(26,1,'admin','admin_url','admin/Menu/getActions','','导入新后台菜单',''),(27,1,'admin','admin_url','admin/Nav/index','','导航管理',''),(28,1,'admin','admin_url','admin/Nav/add','','添加导航',''),(29,1,'admin','admin_url','admin/Nav/addPost','','添加导航提交保存',''),(30,1,'admin','admin_url','admin/Nav/edit','','编辑导航',''),(31,1,'admin','admin_url','admin/Nav/editPost','','编辑导航提交保存',''),(32,1,'admin','admin_url','admin/Nav/delete','','删除导航',''),(33,1,'admin','admin_url','admin/NavMenu/index','','导航菜单',''),(34,1,'admin','admin_url','admin/NavMenu/add','','添加导航菜单',''),(35,1,'admin','admin_url','admin/NavMenu/addPost','','添加导航菜单提交保存',''),(36,1,'admin','admin_url','admin/NavMenu/edit','','编辑导航菜单',''),(37,1,'admin','admin_url','admin/NavMenu/editPost','','编辑导航菜单提交保存',''),(38,1,'admin','admin_url','admin/NavMenu/delete','','删除导航菜单',''),(39,1,'admin','admin_url','admin/NavMenu/listOrder','','导航菜单排序',''),(40,1,'admin','admin_url','admin/Plugin/default','','插件中心',''),(41,1,'admin','admin_url','admin/Plugin/index','','插件列表',''),(42,1,'admin','admin_url','admin/Plugin/toggle','','插件启用禁用',''),(43,1,'admin','admin_url','admin/Plugin/setting','','插件设置',''),(44,1,'admin','admin_url','admin/Plugin/settingPost','','插件设置提交',''),(45,1,'admin','admin_url','admin/Plugin/install','','插件安装',''),(46,1,'admin','admin_url','admin/Plugin/update','','插件更新',''),(47,1,'admin','admin_url','admin/Plugin/uninstall','','卸载插件',''),(48,1,'admin','admin_url','admin/Rbac/index','','角色管理',''),(49,1,'admin','admin_url','admin/Rbac/roleAdd','','添加角色',''),(50,1,'admin','admin_url','admin/Rbac/roleAddPost','','添加角色提交',''),(51,1,'admin','admin_url','admin/Rbac/roleEdit','','编辑角色',''),(52,1,'admin','admin_url','admin/Rbac/roleEditPost','','编辑角色提交',''),(53,1,'admin','admin_url','admin/Rbac/roleDelete','','删除角色',''),(54,1,'admin','admin_url','admin/Rbac/authorize','','设置角色权限',''),(55,1,'admin','admin_url','admin/Rbac/authorizePost','','角色授权提交',''),(56,1,'admin','admin_url','admin/RecycleBin/index','','回收站',''),(57,1,'admin','admin_url','admin/RecycleBin/restore','','回收站还原',''),(58,1,'admin','admin_url','admin/RecycleBin/delete','','回收站彻底删除',''),(59,1,'admin','admin_url','admin/Route/index','','URL美化',''),(60,1,'admin','admin_url','admin/Route/add','','添加路由规则',''),(61,1,'admin','admin_url','admin/Route/addPost','','添加路由规则提交',''),(62,1,'admin','admin_url','admin/Route/edit','','路由规则编辑',''),(63,1,'admin','admin_url','admin/Route/editPost','','路由规则编辑提交',''),(64,1,'admin','admin_url','admin/Route/delete','','路由规则删除',''),(65,1,'admin','admin_url','admin/Route/ban','','路由规则禁用',''),(66,1,'admin','admin_url','admin/Route/open','','路由规则启用',''),(67,1,'admin','admin_url','admin/Route/listOrder','','路由规则排序',''),(68,1,'admin','admin_url','admin/Route/select','','选择URL',''),(69,1,'admin','admin_url','admin/Setting/default','','设置',''),(70,1,'admin','admin_url','admin/Setting/site','','网站信息',''),(71,1,'admin','admin_url','admin/Setting/sitePost','','网站信息设置提交',''),(72,1,'admin','admin_url','admin/Setting/password','','密码修改',''),(73,1,'admin','admin_url','admin/Setting/passwordPost','','密码修改提交',''),(74,1,'admin','admin_url','admin/Setting/upload','','上传设置',''),(75,1,'admin','admin_url','admin/Setting/uploadPost','','上传设置提交',''),(76,1,'admin','admin_url','admin/Setting/clearCache','','清除缓存',''),(77,1,'admin','admin_url','admin/Slide/index','','幻灯片管理',''),(78,1,'admin','admin_url','admin/Slide/add','','添加幻灯片',''),(79,1,'admin','admin_url','admin/Slide/addPost','','添加幻灯片提交',''),(80,1,'admin','admin_url','admin/Slide/edit','','编辑幻灯片',''),(81,1,'admin','admin_url','admin/Slide/editPost','','编辑幻灯片提交',''),(82,1,'admin','admin_url','admin/Slide/delete','','删除幻灯片',''),(83,1,'admin','admin_url','admin/SlideItem/index','','幻灯片页面列表',''),(84,1,'admin','admin_url','admin/SlideItem/add','','幻灯片页面添加',''),(85,1,'admin','admin_url','admin/SlideItem/addPost','','幻灯片页面添加提交',''),(86,1,'admin','admin_url','admin/SlideItem/edit','','幻灯片页面编辑',''),(87,1,'admin','admin_url','admin/SlideItem/editPost','','幻灯片页面编辑提交',''),(88,1,'admin','admin_url','admin/SlideItem/delete','','幻灯片页面删除',''),(89,1,'admin','admin_url','admin/SlideItem/ban','','幻灯片页面隐藏',''),(90,1,'admin','admin_url','admin/SlideItem/cancelBan','','幻灯片页面显示',''),(91,1,'admin','admin_url','admin/SlideItem/listOrder','','幻灯片页面排序',''),(92,1,'admin','admin_url','admin/Storage/index','','文件存储',''),(93,1,'admin','admin_url','admin/Storage/settingPost','','文件存储设置提交',''),(94,1,'admin','admin_url','admin/Theme/index','','模板管理',''),(95,1,'admin','admin_url','admin/Theme/install','','安装模板',''),(96,1,'admin','admin_url','admin/Theme/uninstall','','卸载模板',''),(97,1,'admin','admin_url','admin/Theme/installTheme','','模板安装',''),(98,1,'admin','admin_url','admin/Theme/update','','模板更新',''),(99,1,'admin','admin_url','admin/Theme/active','','启用模板',''),(100,1,'admin','admin_url','admin/Theme/files','','模板文件列表',''),(101,1,'admin','admin_url','admin/Theme/fileSetting','','模板文件设置',''),(102,1,'admin','admin_url','admin/Theme/fileArrayData','','模板文件数组数据列表',''),(103,1,'admin','admin_url','admin/Theme/fileArrayDataEdit','','模板文件数组数据添加编辑',''),(104,1,'admin','admin_url','admin/Theme/fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存',''),(105,1,'admin','admin_url','admin/Theme/fileArrayDataDelete','','模板文件数组数据删除',''),(106,1,'admin','admin_url','admin/Theme/settingPost','','模板文件编辑提交保存',''),(107,1,'admin','admin_url','admin/Theme/dataSource','','模板文件设置数据源',''),(108,1,'admin','admin_url','admin/Theme/design','','模板设计',''),(109,1,'admin','admin_url','admin/User/default','','管理组',''),(110,1,'admin','admin_url','admin/User/index','','管理员',''),(111,1,'admin','admin_url','admin/User/add','','管理员添加',''),(112,1,'admin','admin_url','admin/User/addPost','','管理员添加提交',''),(113,1,'admin','admin_url','admin/User/edit','','管理员编辑',''),(114,1,'admin','admin_url','admin/User/editPost','','管理员编辑提交',''),(115,1,'admin','admin_url','admin/User/userInfo','','个人信息',''),(116,1,'admin','admin_url','admin/User/userInfoPost','','管理员个人信息修改提交',''),(117,1,'admin','admin_url','admin/User/delete','','管理员删除',''),(118,1,'admin','admin_url','admin/User/ban','','停用管理员',''),(119,1,'admin','admin_url','admin/User/cancelBan','','启用管理员',''),(120,1,'portal','admin_url','portal/AdminArticle/index','','文章管理',''),(121,1,'portal','admin_url','portal/AdminArticle/add','','添加文章',''),(122,1,'portal','admin_url','portal/AdminArticle/addPost','','添加文章提交',''),(123,1,'portal','admin_url','portal/AdminArticle/edit','','编辑文章',''),(124,1,'portal','admin_url','portal/AdminArticle/editPost','','编辑文章提交',''),(125,1,'portal','admin_url','portal/AdminArticle/delete','','文章删除',''),(126,1,'portal','admin_url','portal/AdminArticle/publish','','文章发布',''),(127,1,'portal','admin_url','portal/AdminArticle/top','','文章置顶',''),(128,1,'portal','admin_url','portal/AdminArticle/recommend','','文章推荐',''),(129,1,'portal','admin_url','portal/AdminArticle/listOrder','','文章排序',''),(130,1,'portal','admin_url','portal/AdminCategory/index','','分类管理',''),(131,1,'portal','admin_url','portal/AdminCategory/add','','添加文章分类',''),(132,1,'portal','admin_url','portal/AdminCategory/addPost','','添加文章分类提交',''),(133,1,'portal','admin_url','portal/AdminCategory/edit','','编辑文章分类',''),(134,1,'portal','admin_url','portal/AdminCategory/editPost','','编辑文章分类提交',''),(135,1,'portal','admin_url','portal/AdminCategory/select','','文章分类选择对话框',''),(136,1,'portal','admin_url','portal/AdminCategory/listOrder','','文章分类排序',''),(137,1,'portal','admin_url','portal/AdminCategory/delete','','删除文章分类',''),(138,1,'portal','admin_url','portal/AdminIndex/default','','门户管理',''),(139,1,'portal','admin_url','portal/AdminPage/index','','页面管理',''),(140,1,'portal','admin_url','portal/AdminPage/add','','添加页面',''),(141,1,'portal','admin_url','portal/AdminPage/addPost','','添加页面提交',''),(142,1,'portal','admin_url','portal/AdminPage/edit','','编辑页面',''),(143,1,'portal','admin_url','portal/AdminPage/editPost','','编辑页面提交',''),(144,1,'portal','admin_url','portal/AdminPage/delete','','删除页面',''),(145,1,'portal','admin_url','portal/AdminTag/index','','文章标签',''),(146,1,'portal','admin_url','portal/AdminTag/add','','添加文章标签',''),(147,1,'portal','admin_url','portal/AdminTag/addPost','','添加文章标签提交',''),(148,1,'portal','admin_url','portal/AdminTag/upStatus','','更新标签状态',''),(149,1,'portal','admin_url','portal/AdminTag/delete','','删除文章标签',''),(150,1,'user','admin_url','user/AdminAsset/index','','资源管理',''),(151,1,'user','admin_url','user/AdminAsset/delete','','删除文件',''),(152,1,'user','admin_url','user/AdminIndex/default','','用户管理',''),(153,1,'user','admin_url','user/AdminIndex/default1','','用户组',''),(154,1,'user','admin_url','user/AdminIndex/index','','本站用户',''),(155,1,'user','admin_url','user/AdminIndex/ban','','本站用户拉黑',''),(156,1,'user','admin_url','user/AdminIndex/cancelBan','','本站用户启用',''),(157,1,'user','admin_url','user/AdminOauth/index','','第三方用户',''),(158,1,'user','admin_url','user/AdminOauth/delete','','删除第三方用户绑定',''),(159,1,'user','admin_url','user/AdminUserAction/index','','用户操作管理',''),(160,1,'user','admin_url','user/AdminUserAction/edit','','编辑用户操作',''),(161,1,'user','admin_url','user/AdminUserAction/editPost','','编辑用户操作提交',''),(162,1,'user','admin_url','user/AdminUserAction/sync','','同步用户操作',''),(163,1,'admin','admin_url','admin/magnet/default','','下载控制',''),(164,1,'admin','admin_url','admin/magnet/list_all','','全部下载',''),(165,1,'admin','admin_url','admin/magnet/list_downloading','','正在下载',''),(166,1,'admin','admin_url','admin/magnet/list_downloaded','','完成任务',''),(167,1,'admin','admin_url','admin/magnet/magnet_set','','下载设置',''),(168,1,'admin','admin_url','admin/magnet/show_share','','分享列表',''),(169,1,'dfsd','admin_url','dfsd/fsdf/sdfsdf','','电视上的',''),(170,1,'admin','admin_url','admin/magnet/show_all_videofile','','视频文件','');
/*!40000 ALTER TABLE `yunbt_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_comment`
--

DROP TABLE IF EXISTS `yunbt_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_comment`
--

LOCK TABLES `yunbt_comment` WRITE;
/*!40000 ALTER TABLE `yunbt_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_cron_ffmpeg`
--

DROP TABLE IF EXISTS `yunbt_cron_ffmpeg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_cron_ffmpeg` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `log` text NOT NULL,
  `starttime` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `done_time` int(11) NOT NULL,
  `speed` varchar(128) NOT NULL,
  `odir` text CHARACTER SET utf8 NOT NULL,
  `osize` bigint(20) NOT NULL,
  `dir` text CHARACTER SET utf8 NOT NULL,
  `size` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `del` int(11) NOT NULL,
  `transerror` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_cron_ffmpeg`
--

LOCK TABLES `yunbt_cron_ffmpeg` WRITE;
/*!40000 ALTER TABLE `yunbt_cron_ffmpeg` DISABLE KEYS */;
INSERT INTO `yunbt_cron_ffmpeg` VALUES (1,1,12757,'/home/wwwroot/yunbt.233.nu/public/../app/../public/file/log/1.log',0,0,0,'','/home/wwwroot/yunbt.233.nu/public/../app/../public//file/prebt/10716b234e687fb48f98aae636c10c5b.mp4',218541470,'/home/wwwroot/yunbt.233.nu/public/../app/../public/file/live/defaf411bba1c5a77085d8cdd6f68b82.mp4',0,0,0,0,0),(2,2,0,'/home/wwwroot/yunbt.233.nu/public/../app/../public/file/log/2.log',0,0,0,'','/home/wwwroot/yunbt.233.nu/public/../app/../public//file/prebt/b07499e951a94d08a83a816d0e817898.mp4',2525071833,'/home/wwwroot/yunbt.233.nu/public/../app/../public/file/live/7fd9733d248549eb79ddcd9379ef3504.mp4',0,0,0,0,0);
/*!40000 ALTER TABLE `yunbt_cron_ffmpeg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_ffmpeg`
--

DROP TABLE IF EXISTS `yunbt_ffmpeg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_ffmpeg` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `starttime` int(11) NOT NULL,
  `log` varchar(256) NOT NULL,
  `file` text CHARACTER SET utf8 NOT NULL,
  `size` bigint(20) NOT NULL,
  `duration` int(11) NOT NULL,
  `done_time` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `nfile` text NOT NULL,
  `nsize` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `screen` int(11) NOT NULL,
  `transnode` int(11) NOT NULL DEFAULT '0',
  `node_duration` int(11) NOT NULL,
  `node_done_time` int(11) NOT NULL,
  `node_speed` int(11) NOT NULL,
  `node_url` varchar(256) NOT NULL,
  `node_download` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_ffmpeg`
--

LOCK TABLES `yunbt_ffmpeg` WRITE;
/*!40000 ALTER TABLE `yunbt_ffmpeg` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_ffmpeg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_hook`
--

DROP TABLE IF EXISTS `yunbt_hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_hook`
--

LOCK TABLES `yunbt_hook` WRITE;
/*!40000 ALTER TABLE `yunbt_hook` DISABLE KEYS */;
INSERT INTO `yunbt_hook` VALUES (1,1,0,'应用初始化','app_init','cmf','应用初始化'),(2,1,0,'应用开始','app_begin','cmf','应用开始'),(3,1,0,'模块初始化','module_init','cmf','模块初始化'),(4,1,0,'控制器开始','action_begin','cmf','控制器开始'),(5,1,0,'视图输出过滤','view_filter','cmf','视图输出过滤'),(6,1,0,'应用结束','app_end','cmf','应用结束'),(7,1,0,'日志write方法','log_write','cmf','日志write方法'),(8,1,0,'输出结束','response_end','cmf','输出结束'),(9,1,0,'后台控制器初始化','admin_init','cmf','后台控制器初始化'),(10,1,0,'前台控制器初始化','home_init','cmf','前台控制器初始化'),(11,1,1,'发送手机验证码','send_mobile_verification_code','cmf','发送手机验证码'),(12,3,0,'模板 body标签开始','body_start','','模板 body标签开始'),(13,3,0,'模板 head标签结束前','before_head_end','','模板 head标签结束前'),(14,3,0,'模板底部开始','footer_start','','模板底部开始'),(15,3,0,'模板底部开始之前','before_footer','','模板底部开始之前'),(16,3,0,'模板底部结束之前','before_footer_end','','模板底部结束之前'),(17,3,0,'模板 body 标签结束之前','before_body_end','','模板 body 标签结束之前'),(18,3,0,'模板左边栏开始','left_sidebar_start','','模板左边栏开始'),(19,3,0,'模板左边栏结束之前','before_left_sidebar_end','','模板左边栏结束之前'),(20,3,0,'模板右边栏开始','right_sidebar_start','','模板右边栏开始'),(21,3,0,'模板右边栏结束之前','before_right_sidebar_end','','模板右边栏结束之前'),(22,3,1,'评论区','comment','','评论区'),(23,3,1,'留言区','guestbook','','留言区'),(24,2,0,'后台首页仪表盘','admin_dashboard','admin','后台首页仪表盘'),(25,4,0,'后台模板 head标签结束前','admin_before_head_end','','后台模板 head标签结束前'),(26,4,0,'后台模板 body 标签结束之前','admin_before_body_end','','后台模板 body 标签结束之前'),(27,2,0,'后台登录页面','admin_login','admin','后台登录页面'),(28,1,1,'前台模板切换','switch_theme','cmf','前台模板切换'),(29,3,0,'主要内容之后','after_content','','主要内容之后'),(30,2,0,'文章显示之前','portal_before_assign_article','portal','文章显示之前'),(31,2,0,'后台文章保存之后','portal_admin_after_save_article','portal','后台文章保存之后'),(32,2,1,'获取上传界面','fetch_upload_view','user','获取上传界面'),(33,3,0,'主要内容之前','before_content','cmf','主要内容之前'),(34,1,0,'日志写入完成','log_write_done','cmf','日志写入完成'),(35,1,1,'后台模板切换','switch_admin_theme','cmf','后台模板切换'),(36,1,1,'验证码图片','captcha_image','cmf','验证码图片'),(37,2,1,'后台模板设计界面','admin_theme_design_view','admin','后台模板设计界面'),(38,2,1,'后台设置网站信息界面','admin_setting_site_view','admin','后台设置网站信息界面'),(39,2,1,'后台清除缓存界面','admin_setting_clear_cache_view','admin','后台清除缓存界面'),(40,2,1,'后台导航管理界面','admin_nav_index_view','admin','后台导航管理界面'),(41,2,1,'后台友情链接管理界面','admin_link_index_view','admin','后台友情链接管理界面'),(42,2,1,'后台幻灯片管理界面','admin_slide_index_view','admin','后台幻灯片管理界面'),(43,2,1,'后台管理员列表界面','admin_user_index_view','admin','后台管理员列表界面'),(44,2,1,'后台角色管理界面','admin_rbac_index_view','admin','后台角色管理界面'),(45,2,1,'门户后台文章管理列表界面','portal_admin_article_index_view','portal','门户后台文章管理列表界面'),(46,2,1,'门户后台文章分类管理列表界面','portal_admin_category_index_view','portal','门户后台文章分类管理列表界面'),(47,2,1,'门户后台页面管理列表界面','portal_admin_page_index_view','portal','门户后台页面管理列表界面'),(48,2,1,'门户后台文章标签管理列表界面','portal_admin_tag_index_view','portal','门户后台文章标签管理列表界面'),(49,2,1,'用户管理本站用户列表界面','user_admin_index_view','user','用户管理本站用户列表界面'),(50,2,1,'资源管理列表界面','user_admin_asset_index_view','user','资源管理列表界面'),(51,2,1,'用户管理第三方用户列表界面','user_admin_oauth_index_view','user','用户管理第三方用户列表界面'),(52,2,1,'后台首页界面','admin_index_index_view','admin','后台首页界面'),(53,2,1,'后台回收站界面','admin_recycle_bin_index_view','admin','后台回收站界面'),(54,2,1,'后台菜单管理界面','admin_menu_index_view','admin','后台菜单管理界面'),(55,2,1,'后台自定义登录是否开启钩子','admin_custom_login_open','admin','后台自定义登录是否开启钩子'),(56,4,0,'门户后台文章添加编辑界面右侧栏','portal_admin_article_edit_view_right_sidebar','portal','门户后台文章添加编辑界面右侧栏'),(57,4,0,'门户后台文章添加编辑界面主要内容','portal_admin_article_edit_view_main','portal','门户后台文章添加编辑界面主要内容'),(58,2,1,'门户后台文章添加界面','portal_admin_article_add_view','portal','门户后台文章添加界面'),(59,2,1,'门户后台文章编辑界面','portal_admin_article_edit_view','portal','门户后台文章编辑界面'),(60,2,1,'门户后台文章分类添加界面','portal_admin_category_add_view','portal','门户后台文章分类添加界面'),(61,2,1,'门户后台文章分类编辑界面','portal_admin_category_edit_view','portal','门户后台文章分类编辑界面'),(62,2,1,'门户后台页面添加界面','portal_admin_page_add_view','portal','门户后台页面添加界面'),(63,2,1,'门户后台页面编辑界面','portal_admin_page_edit_view','portal','门户后台页面编辑界面'),(64,2,1,'后台幻灯片页面列表界面','admin_slide_item_index_view','admin','后台幻灯片页面列表界面'),(65,2,1,'后台幻灯片页面添加界面','admin_slide_item_add_view','admin','后台幻灯片页面添加界面'),(66,2,1,'后台幻灯片页面编辑界面','admin_slide_item_edit_view','admin','后台幻灯片页面编辑界面'),(67,2,1,'后台管理员添加界面','admin_user_add_view','admin','后台管理员添加界面'),(68,2,1,'后台管理员编辑界面','admin_user_edit_view','admin','后台管理员编辑界面'),(69,2,1,'后台角色添加界面','admin_rbac_role_add_view','admin','后台角色添加界面'),(70,2,1,'后台角色编辑界面','admin_rbac_role_edit_view','admin','后台角色编辑界面'),(71,2,1,'后台角色授权界面','admin_rbac_authorize_view','admin','后台角色授权界面');
/*!40000 ALTER TABLE `yunbt_hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_hook_plugin`
--

DROP TABLE IF EXISTS `yunbt_hook_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_hook_plugin`
--

LOCK TABLES `yunbt_hook_plugin` WRITE;
/*!40000 ALTER TABLE `yunbt_hook_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_hook_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_image`
--

DROP TABLE IF EXISTS `yunbt_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_image` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `imgdir` varchar(256) NOT NULL,
  `del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_image`
--

LOCK TABLES `yunbt_image` WRITE;
/*!40000 ALTER TABLE `yunbt_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_link`
--

DROP TABLE IF EXISTS `yunbt_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_link`
--

LOCK TABLES `yunbt_link` WRITE;
/*!40000 ALTER TABLE `yunbt_link` DISABLE KEYS */;
INSERT INTO `yunbt_link` VALUES (1,1,0,10000,'','http://yunbt.net','YunBT','','_blank',''),(2,1,0,10000,'','https://github.com/maysrp/webdir','webdir','','_blank',''),(3,1,0,10000,'','https://github.com/maysrp/yunbt','yunbt','','_blank','');
/*!40000 ALTER TABLE `yunbt_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_magnet`
--

DROP TABLE IF EXISTS `yunbt_magnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_magnet` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(1024) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL COMMENT '输入文件名',
  `uname` text CHARACTER SET utf8 NOT NULL,
  `magnet` text NOT NULL,
  `speed` int(11) NOT NULL DEFAULT '0',
  `total` bigint(20) NOT NULL,
  `complete` bigint(20) NOT NULL,
  `starttime` int(11) NOT NULL COMMENT '启动时间',
  `dir` text CHARACTER SET utf8 NOT NULL,
  `addtime` int(11) NOT NULL,
  `tag` varchar(4096) CHARACTER SET utf8 NOT NULL,
  `uid` int(11) NOT NULL COMMENT '添加用户',
  `cmid` int(11) NOT NULL DEFAULT '0',
  `done` int(11) NOT NULL DEFAULT '0',
  `alldone` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL,
  `udel` int(11) NOT NULL DEFAULT '0',
  `del` int(11) NOT NULL DEFAULT '0' COMMENT '管理员删除',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=3581 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_magnet`
--

LOCK TABLES `yunbt_magnet` WRITE;
/*!40000 ALTER TABLE `yunbt_magnet` DISABLE KEYS */;
INSERT INTO `yunbt_magnet` VALUES (3574,'b65f17d7d73286cc','[梦蓝字幕组]CrayonshinChan 蜡笔小新[2018.11.16][982][帮忙打包&爷爷来了哦][HDTV][GB_JP][MP4].mp4','','magnet:?xt=urn:btih:44AGEJPNZ5QZTYNI52RPF6GSQ7AEI3XZ&amp;dn=&amp;tr=http%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=udp%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=http%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker3.itzmx.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Ftracker4.itzmx.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.publicbt.com%3A80%2Fannounce&amp;tr=http%3A%2F%2Ftracker.prq.to%2Fannounce&amp;tr=http%3A%2F%2Fopen.acgtracker.com%3A1096%2Fannounce&amp;tr=https%3A%2F%2Ft-115.rhcloud.com%2Fonly_for_ylbud&amp;tr=http%3A%2F%2Fbtfile.sdo.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.nyaatracker.com%2Fannounce&amp;tr=http%3A%2F%2Fopen.nyaatorrents.info%3A6544%2Fannounce&amp;tr=http%3A%2F%2Ft2.popgo.org%3A7456%2Fannonce&amp;tr=http%3A%2F%2Fshare.camoe.cn%3A8080%2Fannounce&amp;tr=http%3A%2F%2Fopentracker.acgnx.se%2Fannounce&amp;tr=http%3A%2F%2Ftracker.acgnx.se%2Fannounce&amp;tr=http%3A%2F%2Fnyaa.tracker.wf%3A7777%2Fannounce&amp;tr=http%3A%2F%2F208.67.16.113%3A8000%2Fannonuce&amp;tr=https%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.acg.rip%3A6699%2Fannounce&amp;tr=http%3A%2F%2Ftracker.kamigami.org%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.kisssub.org%3A2015%2Fannounce&amp;tr=http%3A%2F%2F94.228.192.98%2Fannounce&amp;tr=http%3A%2F%2Ftracker.btcake.com%2Fannounce&amp;tr=http%3A%2F%2Fbt.sc-ol.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker3.torrentino.com%2Fannounce&amp;tr=http%3A%2F%2Ftracker2.torrentino.com%2Fannounce&amp;tr=http%3A%2F%2Fpubt.net%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.tfile.me%2Fannounce&amp;tr=http%3A%2F%2Fbigfoot1942.sektori.org%3A6969%2Fannounce&amp;tr=http%3A%2F%2Fsukebei.tracker.wf%3A8888%2Fannounce&amp;tr=https%3A%2F%2Fopen.kickasstracker.com%2Fannounce&amp;tr=http%3A%2F%2Ftracker.ktxp.com%3A6868%2Fannounce&amp;tr=http%3A%2F%2Ftracker.ktxp.com%3A7070%2Fannounce&amp;tr=http%3A%2F%2Ftracker.xiaoduola.xyz%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftracker.edkj.club%3A6969%2Fannounce',0,129214948,129214948,1545465679,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/aab72f60c2f70e6f4e8936123639c75d',1545465678,'',1,0,1545499629,0,9,0,0),(3575,'9d38c6470916c66d','[SAO Alicization][11][GB][HEVC][1080P].mp4','','magnet:?xt=urn:btih:48d2008199e0e9879f834c0edc1574f93a51eccf&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,276942028,276942028,1545494770,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/830c944169cfa9f359b99b16b4576dab',1545494770,'',1,0,1545499644,0,10,0,0),(3576,'ef6d65fce061aaea','[JYFanSub][Goblin Slayer][10][BIG5][1080P][MP4].mp4','','magnet:?xt=urn:btih:975fece9d3e1582cde161713153beb886e8c7db5&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,315291760,315291760,1545494803,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/819206aa64c6521dc48b03ac726dec49',1545494803,'',1,0,1545530044,0,8,0,0),(3577,'bbd49064a70f6269','[Nekomoenai.sub][Kimi no Suizou wo Tabetai][Movie][1080p][CHT].mp4','','magnet:?xt=urn:btih:0ae8aa8e4a7fae745e59bd89923b40f8a1543eec&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,1039768796,1039768796,1545494874,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/2234ec3afb7f17bbfec1f236c136a768',1545494874,'',1,0,1545530108,0,0,0,0),(3578,'524347667e220dc9','[风车字幕组][名侦探柯南剧场版第22部][零的执行人][BDRip][简体][MP4][1080P].mp4','','magnet:?xt=urn:btih:4611a5aff894f2b63f7b095e1fd885072b1a787f&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,2323530328,2323530328,1545494921,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/f0772c5695a7cdf9f636c29579465c03',1545494921,'',1,0,1545530175,0,11,0,0),(3579,'0360b240076a1451','[DMG] 劇場版 さよならの朝に約束の花をかざろう [BDRip][AVC_AAC][720P][CHS](AEDF05A6).mp4','','magnet:?xt=urn:btih:2d935d8c0943b1d3f0391d3834c8e7a314e1f0d9&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,1776299530,1776299530,1545494941,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/dfa800fe3f10bcb3cdfa75832819c663',1545494940,'',1,0,1545530245,0,0,0,0),(3580,'14779299ff86450a','[Nekomoe kissaten][Liz and the Blue Bird／Liz to Aoi Tori][720p][x264_aac][chs][rev].mp4','','magnet:?xt=urn:btih:fee948ec91c386b1490565ad22b8233b0795b420&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,753540270,753540270,1545494966,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/de6c6c8037c92d7bb85078739a012d06',1545494966,'',1,0,1545530287,0,0,0,0);
/*!40000 ALTER TABLE `yunbt_magnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_magnet_site`
--

DROP TABLE IF EXISTS `yunbt_magnet_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_magnet_site` (
  `mid` int(11) NOT NULL,
  `size` int(11) NOT NULL DEFAULT '10' COMMENT 'GB',
  `mail` varchar(256) NOT NULL,
  `def` int(11) NOT NULL DEFAULT '10' COMMENT '默认下载个数',
  `ffmpeg` text NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_magnet_site`
--

LOCK TABLES `yunbt_magnet_site` WRITE;
/*!40000 ALTER TABLE `yunbt_magnet_site` DISABLE KEYS */;
INSERT INTO `yunbt_magnet_site` VALUES (1,10,'admin@yunbt.net',10,'ffmpeg -i %s -vcodec libx264 -crf 28 -y -vf \\\"scale=1280:-2\\\" -strict -2 -acodec aac -ab 128k %s');
/*!40000 ALTER TABLE `yunbt_magnet_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_nav`
--

DROP TABLE IF EXISTS `yunbt_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_nav`
--

LOCK TABLES `yunbt_nav` WRITE;
/*!40000 ALTER TABLE `yunbt_nav` DISABLE KEYS */;
INSERT INTO `yunbt_nav` VALUES (1,1,'主导航','主导航'),(2,0,'底部导航','');
/*!40000 ALTER TABLE `yunbt_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_nav_menu`
--

DROP TABLE IF EXISTS `yunbt_nav_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_nav_menu`
--

LOCK TABLES `yunbt_nav_menu` WRITE;
/*!40000 ALTER TABLE `yunbt_nav_menu` DISABLE KEYS */;
INSERT INTO `yunbt_nav_menu` VALUES (1,1,0,1,0,'首页','','home','','0-1');
/*!40000 ALTER TABLE `yunbt_nav_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_option`
--

DROP TABLE IF EXISTS `yunbt_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_option`
--

LOCK TABLES `yunbt_option` WRITE;
/*!40000 ALTER TABLE `yunbt_option` DISABLE KEYS */;
INSERT INTO `yunbt_option` VALUES (1,1,'site_info','{\"site_name\":\"YunBT\",\"site_seo_title\":\"YunBT\",\"site_seo_keywords\":\"YunBT\",\"site_seo_description\":\"YunBT\\u591a\\u7528\\u6237\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u7f51\\u76d8\",\"site_icp\":\"\",\"site_gwa\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\"}'),(2,1,'cmf_settings','{\"open_registration\":\"1\",\"banned_usernames\":\"\"}'),(3,1,'cdn_settings','{\"cdn_static_root\":\"\"}'),(4,1,'admin_settings','{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}');
/*!40000 ALTER TABLE `yunbt_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_plugin`
--

DROP TABLE IF EXISTS `yunbt_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_plugin`
--

LOCK TABLES `yunbt_plugin` WRITE;
/*!40000 ALTER TABLE `yunbt_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_portal_category`
--

DROP TABLE IF EXISTS `yunbt_portal_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_portal_category`
--

LOCK TABLES `yunbt_portal_category` WRITE;
/*!40000 ALTER TABLE `yunbt_portal_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_portal_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_portal_category_post`
--

DROP TABLE IF EXISTS `yunbt_portal_category_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_portal_category_post`
--

LOCK TABLES `yunbt_portal_category_post` WRITE;
/*!40000 ALTER TABLE `yunbt_portal_category_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_portal_category_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_portal_post`
--

DROP TABLE IF EXISTS `yunbt_portal_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_portal_post`
--

LOCK TABLES `yunbt_portal_post` WRITE;
/*!40000 ALTER TABLE `yunbt_portal_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_portal_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_portal_tag`
--

DROP TABLE IF EXISTS `yunbt_portal_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_portal_tag`
--

LOCK TABLES `yunbt_portal_tag` WRITE;
/*!40000 ALTER TABLE `yunbt_portal_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_portal_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_portal_tag_post`
--

DROP TABLE IF EXISTS `yunbt_portal_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_portal_tag_post`
--

LOCK TABLES `yunbt_portal_tag_post` WRITE;
/*!40000 ALTER TABLE `yunbt_portal_tag_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_portal_tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_recycle_bin`
--

DROP TABLE IF EXISTS `yunbt_recycle_bin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_recycle_bin`
--

LOCK TABLES `yunbt_recycle_bin` WRITE;
/*!40000 ALTER TABLE `yunbt_recycle_bin` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_recycle_bin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_role`
--

DROP TABLE IF EXISTS `yunbt_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_role`
--

LOCK TABLES `yunbt_role` WRITE;
/*!40000 ALTER TABLE `yunbt_role` DISABLE KEYS */;
INSERT INTO `yunbt_role` VALUES (1,0,1,1329633709,1329633709,0,'超级管理员','拥有网站最高管理员权限！'),(2,0,1,1329633709,1329633709,0,'普通管理员','权限由最高管理员分配！');
/*!40000 ALTER TABLE `yunbt_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_role_user`
--

DROP TABLE IF EXISTS `yunbt_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_role_user`
--

LOCK TABLES `yunbt_role_user` WRITE;
/*!40000 ALTER TABLE `yunbt_role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_route`
--

DROP TABLE IF EXISTS `yunbt_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_route`
--

LOCK TABLES `yunbt_route` WRITE;
/*!40000 ALTER TABLE `yunbt_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_share`
--

DROP TABLE IF EXISTS `yunbt_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_share` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `share_url` varchar(64) NOT NULL,
  `name` text CHARACTER SET ucs2 NOT NULL,
  `uname` text CHARACTER SET ucs2 NOT NULL,
  `magnet` text CHARACTER SET utf8 NOT NULL,
  `dir` text CHARACTER SET utf8 NOT NULL,
  `total` bigint(20) NOT NULL,
  `password` varchar(64) NOT NULL DEFAULT '0' COMMENT '0=No passwd',
  `count` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_share`
--

LOCK TABLES `yunbt_share` WRITE;
/*!40000 ALTER TABLE `yunbt_share` DISABLE KEYS */;
INSERT INTO `yunbt_share` VALUES (1,1,3567,'d4c19951e22eb95e45223ed8a2c8d644','【国漫】择天记 第四季 全12话 1080P','','magnet:?xt=urn:btih:bf4d7a27b6ecdc4f21ea5af5e016e4321e2fbf6c&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/eb18c49d5b022a5455e2944cb9104c0e',2656664415,'uc69',0,0),(2,1,3566,'165ca346409c0bf25078ac08cfef4582','[MercWiki&Mabors-sub] MercStoria - Mukiryoku no Shounen to Bin no Naka no Shoujo [11][720p][AVC yuv420p8 AAC GB].mp4','','magnet:?xt=urn:btih:SVGQCIV6MQ55NKQF74GSDCTTGTU223RF&amp;dn=&amp;tr=http%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=udp%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=http%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker3.itzmx.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Ftracker4.itzmx.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.publicbt.com%3A80%2Fannounce&amp;tr=http%3A%2F%2Ftracker.prq.to%2Fannounce&amp;tr=http%3A%2F%2Fopen.acgtracker.com%3A1096%2Fannounce&amp;tr=https%3A%2F%2Ft-115.rhcloud.com%2Fonly_for_ylbud&amp;tr=http%3A%2F%2Fbtfile.sdo.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&amp;tr=https%3A%2F%2Ftr.bangumi.moe%3A9696%2Fannounce&amp;tr=http%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.acg.rip%3A6699%2Fannounce&amp;tr=http%3A%2F%2Fnyaa.tracker.wf%3A7777%2Fannounce','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/fa4b8af41cb7529cf7ec825ba334a1ee',147404180,'m5JA',0,0),(3,5,3561,'6368edec752ef5dcec533d05d0618fa1','[脸肿字幕组]2018年11月合集（标准版）','','magnet:?xt=urn:btih:4EE1639CF442ACAA6911B98797940BCCCAEA590A','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/d95dabfd39f5b32def0ef605f18a0d2d',2094198111,'hNxg',0,0),(4,20,3570,'c774c9a4e2dd1fae3f22a997c6bf8d7e','','','magnet:?xt=urn:btih:EC6CF8B1BD2483F6AF91BCF66543825582A220EC','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/0dd63513f4c9863fc19be573b60a7846',0,'JOUu',0,1545535678),(5,5,3564,'fc39df6a3313840032d97c3a8c75c545','hjd2048.com_181216-18岁身材紧凑极致粉嫩大姨妈搞得一片-19','','magnet:?xt=urn:btih:55B5A3BE1EB80E6AF3BBE8F9F0D859A319384DC7','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/df0e6f570c6b1aa059abecb77e13371d',842883576,'VAI6',0,0),(6,5,3572,'fab91b958e5926b93214923a1f548b51','(C93) [Shooting Star\'s (Saku)] Avenger.zip','','magnet:?xt=urn:btih:E3113200A10417C0F8AB172AE55C551FBF28BD58','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/80faf8cee6ce256d5a5194eb6ffa232e',177622191,'oiYb',0,0),(7,5,3547,'ab2f4e531c27f2079ab24ef967786483','fc2-ppv-631237-re-appearanceat a clothing part that 32-year-old married woman and fuck.mp4','','magnet:?xt=urn:btih:e67e71f3d75eb2ada86bc314bff4c7476c965dde&amp;dn=Fc2-ppv-631237-re-appearanceat%20a%20clothing%20part%20that%2032-year-old%20married%20woman%20and%20fuck.mp4%20%5BJAV%5D&amp;tr=http%3A%2F%2Fsukebei.tracker.wf%3A8888%2Fannounce&amp;tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&amp;tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&amp;tr=udp%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/c6405f2a223caa96e703c589b1307192',1419571138,'Gmh2',0,0),(8,1,3576,'df40fc3142fa3be0136b81f307d712e3','[JYFanSub][Goblin Slayer][10][BIG5][1080P][MP4].mp4','','magnet:?xt=urn:btih:975fece9d3e1582cde161713153beb886e8c7db5&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/819206aa64c6521dc48b03ac726dec49',315291760,'EJyR',2,0),(9,1,3574,'ff86bd56ffec04418219209e5fa1c4ae','[梦蓝字幕组]CrayonshinChan 蜡笔小新[2018.11.16][982][帮忙打包&爷爷来了哦][HDTV][GB_JP][MP4].mp4','','magnet:?xt=urn:btih:44AGEJPNZ5QZTYNI52RPF6GSQ7AEI3XZ&amp;dn=&amp;tr=http%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=udp%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=http%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker3.itzmx.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Ftracker4.itzmx.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.publicbt.com%3A80%2Fannounce&amp;tr=http%3A%2F%2Ftracker.prq.to%2Fannounce&amp;tr=http%3A%2F%2Fopen.acgtracker.com%3A1096%2Fannounce&amp;tr=https%3A%2F%2Ft-115.rhcloud.com%2Fonly_for_ylbud&amp;tr=http%3A%2F%2Fbtfile.sdo.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.nyaatracker.com%2Fannounce&amp;tr=http%3A%2F%2Fopen.nyaatorrents.info%3A6544%2Fannounce&amp;tr=http%3A%2F%2Ft2.popgo.org%3A7456%2Fannonce&amp;tr=http%3A%2F%2Fshare.camoe.cn%3A8080%2Fannounce&amp;tr=http%3A%2F%2Fopentracker.acgnx.se%2Fannounce&amp;tr=http%3A%2F%2Ftracker.acgnx.se%2Fannounce&amp;tr=http%3A%2F%2Fnyaa.tracker.wf%3A7777%2Fannounce&amp;tr=http%3A%2F%2F208.67.16.113%3A8000%2Fannonuce&amp;tr=https%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.acg.rip%3A6699%2Fannounce&amp;tr=http%3A%2F%2Ftracker.kamigami.org%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.kisssub.org%3A2015%2Fannounce&amp;tr=http%3A%2F%2F94.228.192.98%2Fannounce&amp;tr=http%3A%2F%2Ftracker.btcake.com%2Fannounce&amp;tr=http%3A%2F%2Fbt.sc-ol.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker3.torrentino.com%2Fannounce&amp;tr=http%3A%2F%2Ftracker2.torrentino.com%2Fannounce&amp;tr=http%3A%2F%2Fpubt.net%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.tfile.me%2Fannounce&amp;tr=http%3A%2F%2Fbigfoot1942.sektori.org%3A6969%2Fannounce&amp;tr=http%3A%2F%2Fsukebei.tracker.wf%3A8888%2Fannounce&amp;tr=https%3A%2F%2Fopen.kickasstracker.com%2Fannounce&amp;tr=http%3A%2F%2Ftracker.ktxp.com%3A6868%2Fannounce&amp;tr=http%3A%2F%2Ftracker.ktxp.com%3A7070%2Fannounce&amp;tr=http%3A%2F%2Ftracker.xiaoduola.xyz%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftracker.edkj.club%3A6969%2Fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/aab72f60c2f70e6f4e8936123639c75d',129214948,'x84C',0,0),(10,1,3575,'ab17fb4af19fef17bd5713baf4f3e43d','[SAO Alicization][11][GB][HEVC][1080P].mp4','','magnet:?xt=urn:btih:48d2008199e0e9879f834c0edc1574f93a51eccf&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/830c944169cfa9f359b99b16b4576dab',276942028,'A2ki',2,0),(11,1,3578,'be39b4d76b3bbd49433ffdc35ddc609c','[风车字幕组][名侦探柯南剧场版第22部][零的执行人][BDRip][简体][MP4][1080P].mp4','','magnet:?xt=urn:btih:4611a5aff894f2b63f7b095e1fd885072b1a787f&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/f0772c5695a7cdf9f636c29579465c03',2323530328,'VGR0',0,0);
/*!40000 ALTER TABLE `yunbt_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_slide`
--

DROP TABLE IF EXISTS `yunbt_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_slide`
--

LOCK TABLES `yunbt_slide` WRITE;
/*!40000 ALTER TABLE `yunbt_slide` DISABLE KEYS */;
INSERT INTO `yunbt_slide` VALUES (1,1,0,'测试',''),(2,1,0,'Picture','');
/*!40000 ALTER TABLE `yunbt_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_slide_item`
--

DROP TABLE IF EXISTS `yunbt_slide_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_slide_item`
--

LOCK TABLES `yunbt_slide_item` WRITE;
/*!40000 ALTER TABLE `yunbt_slide_item` DISABLE KEYS */;
INSERT INTO `yunbt_slide_item` VALUES (1,1,1,10000,'test1','admin/20181219/2ca0e872f81d65b6eaf481ff84d1bad7.jpg','','','','',NULL),(2,1,1,10000,'test2','admin/20181219/37c36a1436c3a25168d1fdc6a9252e37.jpeg','','','','',NULL),(3,1,1,10000,'test3','admin/20181219/c5d57d105ee6639784c647612bb7c4e1.jpeg','','','','',NULL),(4,1,1,10000,'test4','admin/20181219/be17fea458c29d4a2dbe2a24559074ee.jpg','','','','',NULL),(5,2,1,10000,'YunBT_01','admin/20181219/baae391ece4840819a8ca5187b84908f.jpg','','','','',NULL),(6,2,1,10000,'YunBT_02','admin/20181219/d8a6a86a115ac76ac52a5e15ae0a8d36.jpg','','','','',NULL),(7,2,1,10000,'YunBT_03','admin/20181219/7a432210f76beae92757fef56052f363.jpg','','','','',NULL),(8,2,1,10000,'YunBT_04','admin/20181219/2927ced8b224fca20a740104a6ec3a44.jpg','','','','',NULL),(9,2,1,10000,'YunBT_05','admin/20181219/a4777789e8fa6592bba7810f0ff694e8.jpg','','','','',NULL);
/*!40000 ALTER TABLE `yunbt_slide_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_theme`
--

DROP TABLE IF EXISTS `yunbt_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_theme`
--

LOCK TABLES `yunbt_theme` WRITE;
/*!40000 ALTER TABLE `yunbt_theme` DISABLE KEYS */;
INSERT INTO `yunbt_theme` VALUES (1,0,0,0,0,'simpleboot3','simpleboot3','1.0.2','http://demo.thinkcmf.com','','ThinkCMF','http://www.thinkcmf.com','zh-cn','ThinkCMF模板','ThinkCMF默认模板');
/*!40000 ALTER TABLE `yunbt_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_theme_file`
--

DROP TABLE IF EXISTS `yunbt_theme_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_theme_file`
--

LOCK TABLES `yunbt_theme_file` WRITE;
/*!40000 ALTER TABLE `yunbt_theme_file` DISABLE KEYS */;
INSERT INTO `yunbt_theme_file` VALUES (1,0,10,'simpleboot3','文章页','portal/Article/index','portal/article','文章页模板文件','{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL),(2,0,10,'simpleboot3','联系我们页','portal/Page/index','portal/contact','联系我们页模板文件','{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}',NULL),(3,0,5,'simpleboot3','首页','portal/Index/index','portal/index','首页模板文件','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"2\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true},\"valueText\":\"Picture\"}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":0,\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"YunBt\\u4f60\\u7684\\u5728\\u7ebf\\u4e91Bt\\u4e0b\\u8f7d\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"\\u5728\\u7ebf\\u4e0b\\u8f7d\",\"icon\":\"bars\",\"content\":\"\\u652f\\u6301Magnet,http,torrent\\u76f4\\u63a5\\u5012\\u5165\\u4e0b\\u8f7d\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"\\u91c7\\u7528\\u4e86ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":0,\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\"}}}}}','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(4,0,10,'simpleboot3','文章列表页','portal/List/index','portal/list','文章列表模板文件','{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(5,0,10,'simpleboot3','单页面','portal/Page/index','portal/page','单页面模板文件','{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(6,0,10,'simpleboot3','搜索页面','portal/search/index','portal/search','搜索模板文件','{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}',NULL),(7,1,0,'simpleboot3','模板全局配置','public/Config','public/config','模板全局配置文件','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":\"0\",\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}',NULL),(8,1,1,'simpleboot3','导航条','public/Nav','public/nav','导航条模板文件','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"YunBT\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL);
/*!40000 ALTER TABLE `yunbt_theme_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_third_party_user`
--

DROP TABLE IF EXISTS `yunbt_third_party_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_third_party_user`
--

LOCK TABLES `yunbt_third_party_user` WRITE;
/*!40000 ALTER TABLE `yunbt_third_party_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_third_party_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user`
--

DROP TABLE IF EXISTS `yunbt_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  `total` int(11) NOT NULL DEFAULT '10',
  `used` int(11) NOT NULL DEFAULT '0',
  `buy` int(11) NOT NULL DEFAULT '0',
  `download_json` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user`
--

LOCK TABLES `yunbt_user` WRITE;
/*!40000 ALTER TABLE `yunbt_user` DISABLE KEYS */;
INSERT INTO `yunbt_user` VALUES (1,1,0,0,1545535429,7,7,0.00,1544898484,1,'admin','###c90ef2bdf103731c58420fcbf7f929be','admin','admin@yunbt.net','','avatar/20181219/1ade078116d733216ccc5129b73e14c3.jpeg','','222.93.140.250','','',NULL,1505,16,1000,''),(2,2,0,0,1545187759,0,0,0.00,1545187759,2,'','###c90ef2bdf103731c58420fcbf7f929be','','233@yunbt.com','','','','117.136.67.209','','',NULL,10,3,0,''),(3,2,0,0,1545207738,0,0,0.00,1545207738,2,'','###c90ef2bdf103731c58420fcbf7f929be','','ada@123.com','','','','117.82.228.125','','',NULL,10,1,0,''),(4,2,0,0,1545212956,0,0,0.00,1545212956,2,'','###c90ef2bdf103731c58420fcbf7f929be','','abc@a.com','','','','117.136.68.132','','',NULL,10,0,0,''),(5,2,0,-28800,1545452103,26,26,0.00,1545213021,2,'','###c90ef2bdf103731c58420fcbf7f929be','','a@a.aa','','avatar/20181220/9dff9aed7bcabeac4a28afb0d5d10546.jpg','我喜欢小基友，欢迎大家来插我????/开心','222.93.140.250','','',NULL,519,18,370,''),(6,2,0,0,1545213401,0,0,0.00,1545213401,2,'','###6bd451c50acc7277e450d25066c20a93','','4592248@gmail.com','','','','183.195.32.146','','',NULL,10,1,0,''),(7,2,0,0,1545213513,0,0,0.00,1545213513,2,'','###c09ecb99b47eab882319610d73e7a2de','','pndj@163.com','','','','180.140.11.90','','',NULL,10,0,0,''),(8,2,0,0,1545221391,0,0,0.00,1545221391,2,'','###4377a26513f4947c8e6139ca0b8f010d','','admin@bili.bi','','','','182.143.17.151','','',NULL,10,0,0,''),(9,2,0,0,1545224095,0,0,0.00,1545224095,2,'','###d652f458a9b7badef476fa7569c98b2a','','www@guaitan.cn','','','','117.136.24.202','','',NULL,10,1,0,''),(10,2,0,0,1545231815,0,0,0.00,1545231815,2,'','###d652f458a9b7badef476fa7569c98b2a','','gao369345486@gmail.com','','','','221.192.180.116','','',NULL,10,0,0,''),(11,2,0,0,1545233159,0,0,0.00,1545233159,2,'','###184780349b11c787f8daad2c7964f912','','tvv42925@iencm.com','','','','140.112.7.188','','',NULL,10,1,0,''),(12,2,0,0,1545272221,0,0,0.00,1545272221,2,'','###91e939b2a9b49cd345df340367405573','','5167189@qq.com','','','','60.170.195.5','','',NULL,126,0,111,''),(13,2,0,0,1545301767,0,0,0.00,1545301767,2,'','###d652f458a9b7badef476fa7569c98b2a','','2371431704@qq.com','','','','139.180.199.191','','',NULL,10,2,0,''),(14,2,0,0,1545317118,0,0,0.00,1545317118,2,'','###339969308974485696236eee3c7f5584','','409874865@qq.com','','','','60.186.193.136','','',NULL,10,2,0,''),(15,2,0,0,1545321135,0,0,0.00,1545321135,2,'','###d652f458a9b7badef476fa7569c98b2a','','123@qq.com','','','','172.247.32.15','','',NULL,10,0,0,''),(16,2,0,0,1545354611,0,0,0.00,1545354611,2,'','###0ca6eefe80413f18c685aea358c583a6','','a1@a.com','','','','119.4.252.5','','',NULL,10,0,0,''),(17,2,0,0,1545359558,0,0,0.00,1545359558,2,'','###0b2ae020388bb38732af00d4a775ab65','','535799967@qq.com','','','','222.64.216.17','','',NULL,10,1,0,''),(18,2,0,0,1545445271,1,1,0.00,1545369860,2,'','###7619f07f11c76d186074333eb7aaf966','','hitwhdc@163.com','','','','45.114.7.215','','',NULL,10,1,0,''),(19,2,0,0,1545388086,0,0,0.00,1545388086,2,'','###81b377d2ba6be753fcc24d9509c7b1e6','','739489038@qq.com','','','','183.213.117.172','','',NULL,10,0,0,''),(20,2,0,0,1545392131,0,0,0.00,1545392131,2,'','###e54f6fcd38a8728b26acdc2ea4c7783a','','1158705239@qq.com','','','','221.224.17.58','','',NULL,10,1,0,''),(21,2,0,0,1545398012,0,0,0.00,1545398012,2,'','###a7767f6ade017cb083bc9147b5020935','','test9999@gmail.com','','','','218.164.96.245','','',NULL,10,1,0,''),(22,2,0,0,1545462425,0,0,0.00,1545462425,2,'','###a8f094b6ebb078400487031d49f5013e','','957437092@qq.com','','','','113.77.200.22','','',NULL,10,0,0,'');
/*!40000 ALTER TABLE `yunbt_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user_action`
--

DROP TABLE IF EXISTS `yunbt_user_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_action`
--

LOCK TABLES `yunbt_user_action` WRITE;
/*!40000 ALTER TABLE `yunbt_user_action` DISABLE KEYS */;
INSERT INTO `yunbt_user_action` VALUES (1,1,1,1,2,1,'用户登录','login','user','');
/*!40000 ALTER TABLE `yunbt_user_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user_action_log`
--

DROP TABLE IF EXISTS `yunbt_user_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_action_log`
--

LOCK TABLES `yunbt_user_action_log` WRITE;
/*!40000 ALTER TABLE `yunbt_user_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_user_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user_balance_log`
--

DROP TABLE IF EXISTS `yunbt_user_balance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变更日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_balance_log`
--

LOCK TABLES `yunbt_user_balance_log` WRITE;
/*!40000 ALTER TABLE `yunbt_user_balance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_user_balance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user_favorite`
--

DROP TABLE IF EXISTS `yunbt_user_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_favorite`
--

LOCK TABLES `yunbt_user_favorite` WRITE;
/*!40000 ALTER TABLE `yunbt_user_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_user_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user_like`
--

DROP TABLE IF EXISTS `yunbt_user_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_like`
--

LOCK TABLES `yunbt_user_like` WRITE;
/*!40000 ALTER TABLE `yunbt_user_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_user_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user_login_attempt`
--

DROP TABLE IF EXISTS `yunbt_user_login_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_login_attempt`
--

LOCK TABLES `yunbt_user_login_attempt` WRITE;
/*!40000 ALTER TABLE `yunbt_user_login_attempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_user_login_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user_score_log`
--

DROP TABLE IF EXISTS `yunbt_user_score_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_score_log`
--

LOCK TABLES `yunbt_user_score_log` WRITE;
/*!40000 ALTER TABLE `yunbt_user_score_log` DISABLE KEYS */;
INSERT INTO `yunbt_user_score_log` VALUES (1,1,1545033958,'login',1,1),(2,1,1545063604,'login',1,1),(3,1,1545123596,'login',1,1),(4,1,1545138237,'login',1,1),(5,1,1545190199,'login',1,1),(6,5,1545213144,'login',1,1),(7,5,1545218640,'login',1,1),(8,5,1545222504,'login',1,1),(9,5,1545226391,'login',1,1),(10,5,1545230144,'login',1,1),(11,5,1545233902,'login',1,1),(12,5,1545238765,'login',1,1),(13,5,1545242427,'login',1,1),(14,5,1545250015,'login',1,1),(15,5,1545265146,'login',1,1),(16,5,1545269046,'login',1,1),(17,5,1545272654,'login',1,1),(18,5,1545277059,'login',1,1),(19,5,1545283137,'login',1,1),(20,5,1545297442,'login',1,1),(21,5,1545317112,'login',1,1),(22,5,1545320964,'login',1,1),(23,5,1545346790,'login',1,1),(24,5,1545352316,'login',1,1),(25,5,1545358470,'login',1,1),(26,5,1545366038,'login',1,1),(27,5,1545374730,'login',1,1),(28,5,1545380684,'login',1,1),(29,5,1545385078,'login',1,1),(30,5,1545396951,'login',1,1),(31,18,1545444857,'login',1,1),(32,5,1545452104,'login',1,1),(33,1,1545465590,'login',1,1),(34,1,1545494129,'login',1,1);
/*!40000 ALTER TABLE `yunbt_user_score_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_user_token`
--

DROP TABLE IF EXISTS `yunbt_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_token`
--

LOCK TABLES `yunbt_user_token` WRITE;
/*!40000 ALTER TABLE `yunbt_user_token` DISABLE KEYS */;
INSERT INTO `yunbt_user_token` VALUES (1,1,1560582836,1545030836,'5a34d345daaa95bfe369bb0bf161f1d603e47182d139603fb37303ebacce9a94','web'),(2,2,1560739759,1545187759,'f33240c1a9dd170b0b11648b5b5311d4c49a9e95983c554aacd0e9ca83e8c7ef','web'),(3,3,1560759739,1545207739,'b90fec202808350926dd287c8c019cc2f08563fe949f35a1a462d8672fa9ca7e','web'),(4,4,1560764956,1545212956,'c556afa234e7b80598ffc985852dc712f841ea1c0ae8c59596b181470649cfe2','web'),(5,5,1560765022,1545213022,'c9ea9e77742e9a4792c2c80f50d6d32d9defdb4462679783f33742e22b5cffe7','web'),(6,6,1560765401,1545213401,'60f7412a5edbb63cf511064cd0702866d6cc17457ccdd40763cd39f181f3fd57','web'),(7,7,1560765513,1545213513,'65282d43b48c54e63458e06cba520aed8f200a3adcf6a98e47b1a47854ac7cdc','web'),(8,8,1560773391,1545221391,'8c96847b8e7faaec56c8bcdd0dfe52640f44efe44df17fc2fe9926593c61baa6','web'),(9,9,1560776096,1545224096,'9ebbfa09c5df959ee803b9c9718e90b1275d4d3d2b2672cb2e2ba5b4c5addfff','web'),(10,10,1560783815,1545231815,'6068888f05c7a507b2babad353928c7f51d68a8ba86e07eb1bf7174e17fc99aa','web'),(11,11,1560785159,1545233159,'e630f6e8cf85e3e4386c8428f74986572b3a70a36cde829025f63410d52b5ecc','web'),(12,12,1560824221,1545272221,'176a9ead7399cf9136142a977d57d8aa1e1a00d2dc2499f19af4ccfcc3fcbcc3','web'),(13,13,1560853767,1545301767,'37050746592bf6b63f08227a383006270f2a34c0062ac8e6a628e9f6868bd327','web'),(14,14,1560869118,1545317118,'a047635920f9edd2c3613c8fabfe2930d32ed454a359b2fc49369ec0dec4076d','web'),(15,15,1560873136,1545321136,'202cb81cd59ecdbd0a7fb3428553ce5141a9bc83d7540529aac5d7f7a41ee777','web'),(16,16,1560906611,1545354611,'0b425771888c1136ff88f0848bd967b9418c419c7f29fb2c289899cc55f78d93','web'),(17,17,1560911558,1545359558,'1b09e26636fb79b4414e177f0218ce630276551757e153985900e900029fa2ba','web'),(18,18,1560921860,1545369860,'5c0b827a0b831cf7ad3297d5456494b73198f0437590882b254683becd31ef0b','web'),(19,19,1560940087,1545388087,'4451ef0fd9715e14694d48900e7b5611eb3732b91f00b09a7eb5a08b4a2a247a','web'),(20,20,1560944131,1545392131,'467b3332797872149302a87202d378cb4ea25db865209937f0f1a6021b024fea','web'),(21,21,1560950013,1545398013,'15bee7b6d9fb75bb5e8062bae89aa18f138aa91d570af2cdb3367549588b113d','web'),(22,22,1561014425,1545462425,'fd97abc3410ae966b10759b7feccb599a2ebddcd322aa286c711214ec96db960','web');
/*!40000 ALTER TABLE `yunbt_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_verification_code`
--

DROP TABLE IF EXISTS `yunbt_verification_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_verification_code`
--

LOCK TABLES `yunbt_verification_code` WRITE;
/*!40000 ALTER TABLE `yunbt_verification_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_verification_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_vf`
--

DROP TABLE IF EXISTS `yunbt_vf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_vf` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `file` varchar(128) NOT NULL,
  `filename` text CHARACTER SET utf8 NOT NULL,
  `size` bigint(20) NOT NULL,
  `stime` int(11) NOT NULL,
  `done` int(11) NOT NULL,
  `mp4` varchar(128) NOT NULL COMMENT '转码后文件地址',
  `msize` bigint(20) NOT NULL,
  `dof` int(11) NOT NULL,
  `log` varchar(512) NOT NULL,
  `del` int(11) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_vf`
--

LOCK TABLES `yunbt_vf` WRITE;
/*!40000 ALTER TABLE `yunbt_vf` DISABLE KEYS */;
INSERT INTO `yunbt_vf` VALUES (2,3574,'/file/video/c6420dacc5403175a93293f46b594f06.mp4','[梦蓝字幕组]CrayonshinChan 蜡笔小新[2018.11.16][982][帮忙打包&爷爷来了哦][HDTV][GB_JP][MP4].mp4',129214948,1545500917,1545500917,'/file/video/c6420dacc5403175a93293f46b594f06.mp4.mp4',89214948,3,'',0),(3,3575,'/file/video/a9923b09d935bc4391eb76b218cd6169.mp4','[SAO Alicization][11][GB][HEVC][1080P].mp4',276942028,1545503821,1545500917,'/file/video/a9923b09d935bc4391eb76b218cd6169.mp4.mp4',176942028,0,'',0),(4,3576,'/file/video/7a4b8602b0105f2e1b4d5a78adb6df55.mp4','[JYFanSub][Goblin Slayer][10][BIG5][1080P][MP4].mp4',315291760,1545530152,1545530882,'/file/video/7a4b8602b0105f2e1b4d5a78adb6df55.mp4.mp4',102834643,0,'',0),(5,3577,'/file/video/379ccd073a3b4af30b495cce51964121.mp4','[Nekomoenai.sub][Kimi no Suizou wo Tabetai][Movie][1080p][CHT].mp4',1039768796,1545534421,1545537374,'/file/video/379ccd073a3b4af30b495cce51964121.mp4.mp4',380503996,0,'',0),(6,3578,'/file/video/38b39fd4ed8e6810c42c1842be7b6113.mp4','[风车字幕组][名侦探柯南剧场版第22部][零的执行人][BDRip][简体][MP4][1080P].mp4',2323530328,1545537481,0,'/file/video/38b39fd4ed8e6810c42c1842be7b6113.mp4.mp4',0,0,'',0),(7,3579,'/file/video/a8fd581c0f9b763ccbc0b2b39970a937.mp4','[DMG] 劇場版 さよならの朝に約束の花をかざろう [BDRip][AVC_AAC][720P][CHS](AEDF05A6).mp4',1776299530,0,0,'/file/video/a8fd581c0f9b763ccbc0b2b39970a937.mp4.mp4',0,0,'',0),(8,3580,'/file/video/3f62ce40930cef98ffacf51ef8f3ed60.mp4','[Nekomoe kissaten][Liz and the Blue Bird／Liz to Aoi Tori][720p][x264_aac][chs][rev].mp4',753540270,0,0,'/file/video/3f62ce40930cef98ffacf51ef8f3ed60.mp4.mp4',0,0,'',0);
/*!40000 ALTER TABLE `yunbt_vf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunbt_video`
--

DROP TABLE IF EXISTS `yunbt_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_video` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `dir` text CHARACTER SET utf8 NOT NULL,
  `pdir` text CHARACTER SET utf8 NOT NULL,
  `oname` text CHARACTER SET utf8 NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `filename` text CHARACTER SET utf8 NOT NULL,
  `tag` text CHARACTER SET utf8 NOT NULL,
  `value` varchar(4096) NOT NULL,
  `size` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `ffmpeg` int(11) NOT NULL,
  `del` varchar(4096) NOT NULL DEFAULT '0',
  `vid` int(11) NOT NULL DEFAULT '0',
  `ts` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `is_show` int(11) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL DEFAULT '0',
  `body` text CHARACTER SET utf8 NOT NULL,
  `tagname` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT ' 字幕组',
  `year` int(11) NOT NULL COMMENT '年代',
  `season` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '季度番［春夏秋冬电影ova］',
  `num` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_video`
--

LOCK TABLES `yunbt_video` WRITE;
/*!40000 ALTER TABLE `yunbt_video` DISABLE KEYS */;
INSERT INTO `yunbt_video` VALUES (1,3541,'/file/prebt/10716b234e687fb48f98aae636c10c5b.mp4','/file/prebt/10716b234e687fb48f98aae636c10c5b.mp4','','[JYFanSub][Goblin Slayer][10.5][GB][720P][MP4].mp4','[JYFanSub][Goblin Slayer][10.5][GB][720P][MP4].mp4','','',218541470,1545462503,1545463280,'0',0,0,0,1,0,'','',1545462503,'',0,0),(2,3542,'/file/prebt/b07499e951a94d08a83a816d0e817898.mp4','/file/prebt/b07499e951a94d08a83a816d0e817898.mp4','','李茶的姑妈.Hello.Mrs.Money.2018.HD1080P.X264.AAC.Mandarin.CHS-ENG.Mp4Ba','李茶的姑妈.Hello.Mrs.Money.2018.HD1080P.X264.AAC.Mandarin.CHS-ENG.Mp4Ba.mp4','','',2525071833,1545462737,1545463281,'0',0,0,0,1,0,'','',1545462737,'',0,0);
/*!40000 ALTER TABLE `yunbt_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-23 12:36:03

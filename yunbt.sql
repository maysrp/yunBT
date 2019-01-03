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
INSERT INTO `yunbt_admin_menu` VALUES (1,0,0,1,20,'admin','Plugin','default','','插件中心','cloud','插件中心'),(2,1,1,1,10000,'admin','Hook','index','','钩子管理','','钩子管理'),(3,2,1,0,10000,'admin','Hook','plugins','','钩子插件管理','','钩子插件管理'),(4,2,2,0,10000,'admin','Hook','pluginListOrder','','钩子插件排序','','钩子插件排序'),(5,2,1,0,10000,'admin','Hook','sync','','同步钩子','','同步钩子'),(6,0,0,1,0,'admin','Setting','default','','设置','cogs','系统设置入口'),(7,6,1,1,50,'admin','Link','index','','友情链接','','友情链接管理'),(8,7,1,0,10000,'admin','Link','add','','添加友情链接','','添加友情链接'),(9,7,2,0,10000,'admin','Link','addPost','','添加友情链接提交保存','','添加友情链接提交保存'),(10,7,1,0,10000,'admin','Link','edit','','编辑友情链接','','编辑友情链接'),(11,7,2,0,10000,'admin','Link','editPost','','编辑友情链接提交保存','','编辑友情链接提交保存'),(12,7,2,0,10000,'admin','Link','delete','','删除友情链接','','删除友情链接'),(13,7,2,0,10000,'admin','Link','listOrder','','友情链接排序','','友情链接排序'),(14,7,2,0,10000,'admin','Link','toggle','','友情链接显示隐藏','','友情链接显示隐藏'),(15,6,1,1,10,'admin','Mailer','index','','邮箱配置','','邮箱配置'),(16,15,2,0,10000,'admin','Mailer','indexPost','','邮箱配置提交保存','','邮箱配置提交保存'),(17,15,1,0,10000,'admin','Mailer','template','','邮件模板','','邮件模板'),(18,15,2,0,10000,'admin','Mailer','templatePost','','邮件模板提交','','邮件模板提交'),(19,15,1,0,10000,'admin','Mailer','test','','邮件发送测试','','邮件发送测试'),(20,6,1,0,10000,'admin','Menu','index','','后台菜单','','后台菜单管理'),(21,20,1,0,10000,'admin','Menu','lists','','所有菜单','','后台所有菜单列表'),(22,20,1,0,10000,'admin','Menu','add','','后台菜单添加','','后台菜单添加'),(23,20,2,0,10000,'admin','Menu','addPost','','后台菜单添加提交保存','','后台菜单添加提交保存'),(24,20,1,0,10000,'admin','Menu','edit','','后台菜单编辑','','后台菜单编辑'),(25,20,2,0,10000,'admin','Menu','editPost','','后台菜单编辑提交保存','','后台菜单编辑提交保存'),(26,20,2,0,10000,'admin','Menu','delete','','后台菜单删除','','后台菜单删除'),(27,20,2,0,10000,'admin','Menu','listOrder','','后台菜单排序','','后台菜单排序'),(28,20,1,0,10000,'admin','Menu','getActions','','导入新后台菜单','','导入新后台菜单'),(29,6,1,1,30,'admin','Nav','index','','导航管理','','导航管理'),(30,29,1,0,10000,'admin','Nav','add','','添加导航','','添加导航'),(31,29,2,0,10000,'admin','Nav','addPost','','添加导航提交保存','','添加导航提交保存'),(32,29,1,0,10000,'admin','Nav','edit','','编辑导航','','编辑导航'),(33,29,2,0,10000,'admin','Nav','editPost','','编辑导航提交保存','','编辑导航提交保存'),(34,29,2,0,10000,'admin','Nav','delete','','删除导航','','删除导航'),(35,29,1,0,10000,'admin','NavMenu','index','','导航菜单','','导航菜单'),(36,35,1,0,10000,'admin','NavMenu','add','','添加导航菜单','','添加导航菜单'),(37,35,2,0,10000,'admin','NavMenu','addPost','','添加导航菜单提交保存','','添加导航菜单提交保存'),(38,35,1,0,10000,'admin','NavMenu','edit','','编辑导航菜单','','编辑导航菜单'),(39,35,2,0,10000,'admin','NavMenu','editPost','','编辑导航菜单提交保存','','编辑导航菜单提交保存'),(40,35,2,0,10000,'admin','NavMenu','delete','','删除导航菜单','','删除导航菜单'),(41,35,2,0,10000,'admin','NavMenu','listOrder','','导航菜单排序','','导航菜单排序'),(42,1,1,1,10000,'admin','Plugin','index','','插件列表','','插件列表'),(43,42,2,0,10000,'admin','Plugin','toggle','','插件启用禁用','','插件启用禁用'),(44,42,1,0,10000,'admin','Plugin','setting','','插件设置','','插件设置'),(45,42,2,0,10000,'admin','Plugin','settingPost','','插件设置提交','','插件设置提交'),(46,42,2,0,10000,'admin','Plugin','install','','插件安装','','插件安装'),(47,42,2,0,10000,'admin','Plugin','update','','插件更新','','插件更新'),(48,42,2,0,10000,'admin','Plugin','uninstall','','卸载插件','','卸载插件'),(49,110,0,1,10000,'admin','User','default','','管理组','','管理组'),(50,49,1,1,10000,'admin','Rbac','index','','角色管理','','角色管理'),(51,50,1,0,10000,'admin','Rbac','roleAdd','','添加角色','','添加角色'),(52,50,2,0,10000,'admin','Rbac','roleAddPost','','添加角色提交','','添加角色提交'),(53,50,1,0,10000,'admin','Rbac','roleEdit','','编辑角色','','编辑角色'),(54,50,2,0,10000,'admin','Rbac','roleEditPost','','编辑角色提交','','编辑角色提交'),(55,50,2,0,10000,'admin','Rbac','roleDelete','','删除角色','','删除角色'),(56,50,1,0,10000,'admin','Rbac','authorize','','设置角色权限','','设置角色权限'),(57,50,2,0,10000,'admin','Rbac','authorizePost','','角色授权提交','','角色授权提交'),(58,0,1,0,10000,'admin','RecycleBin','index','','回收站','','回收站'),(59,58,2,0,10000,'admin','RecycleBin','restore','','回收站还原','','回收站还原'),(60,58,2,0,10000,'admin','RecycleBin','delete','','回收站彻底删除','','回收站彻底删除'),(61,6,1,1,10000,'admin','Route','index','','URL美化','','URL规则管理'),(62,61,1,0,10000,'admin','Route','add','','添加路由规则','','添加路由规则'),(63,61,2,0,10000,'admin','Route','addPost','','添加路由规则提交','','添加路由规则提交'),(64,61,1,0,10000,'admin','Route','edit','','路由规则编辑','','路由规则编辑'),(65,61,2,0,10000,'admin','Route','editPost','','路由规则编辑提交','','路由规则编辑提交'),(66,61,2,0,10000,'admin','Route','delete','','路由规则删除','','路由规则删除'),(67,61,2,0,10000,'admin','Route','ban','','路由规则禁用','','路由规则禁用'),(68,61,2,0,10000,'admin','Route','open','','路由规则启用','','路由规则启用'),(69,61,2,0,10000,'admin','Route','listOrder','','路由规则排序','','路由规则排序'),(70,61,1,0,10000,'admin','Route','select','','选择URL','','选择URL'),(71,6,1,1,0,'admin','Setting','site','','网站信息','','网站信息'),(72,71,2,0,10000,'admin','Setting','sitePost','','网站信息设置提交','','网站信息设置提交'),(73,6,1,0,10000,'admin','Setting','password','','密码修改','','密码修改'),(74,73,2,0,10000,'admin','Setting','passwordPost','','密码修改提交','','密码修改提交'),(75,6,1,1,10000,'admin','Setting','upload','','上传设置','','上传设置'),(76,75,2,0,10000,'admin','Setting','uploadPost','','上传设置提交','','上传设置提交'),(77,6,1,0,10000,'admin','Setting','clearCache','','清除缓存','','清除缓存'),(78,6,1,1,40,'admin','Slide','index','','幻灯片管理','','幻灯片管理'),(79,78,1,0,10000,'admin','Slide','add','','添加幻灯片','','添加幻灯片'),(80,78,2,0,10000,'admin','Slide','addPost','','添加幻灯片提交','','添加幻灯片提交'),(81,78,1,0,10000,'admin','Slide','edit','','编辑幻灯片','','编辑幻灯片'),(82,78,2,0,10000,'admin','Slide','editPost','','编辑幻灯片提交','','编辑幻灯片提交'),(83,78,2,0,10000,'admin','Slide','delete','','删除幻灯片','','删除幻灯片'),(84,78,1,0,10000,'admin','SlideItem','index','','幻灯片页面列表','','幻灯片页面列表'),(85,84,1,0,10000,'admin','SlideItem','add','','幻灯片页面添加','','幻灯片页面添加'),(86,84,2,0,10000,'admin','SlideItem','addPost','','幻灯片页面添加提交','','幻灯片页面添加提交'),(87,84,1,0,10000,'admin','SlideItem','edit','','幻灯片页面编辑','','幻灯片页面编辑'),(88,84,2,0,10000,'admin','SlideItem','editPost','','幻灯片页面编辑提交','','幻灯片页面编辑提交'),(89,84,2,0,10000,'admin','SlideItem','delete','','幻灯片页面删除','','幻灯片页面删除'),(90,84,2,0,10000,'admin','SlideItem','ban','','幻灯片页面隐藏','','幻灯片页面隐藏'),(91,84,2,0,10000,'admin','SlideItem','cancelBan','','幻灯片页面显示','','幻灯片页面显示'),(92,84,2,0,10000,'admin','SlideItem','listOrder','','幻灯片页面排序','','幻灯片页面排序'),(93,6,1,1,10000,'admin','Storage','index','','文件存储','','文件存储'),(94,93,2,0,10000,'admin','Storage','settingPost','','文件存储设置提交','','文件存储设置提交'),(95,6,1,1,20,'admin','Theme','index','','模板管理','','模板管理'),(96,95,1,0,10000,'admin','Theme','install','','安装模板','','安装模板'),(97,95,2,0,10000,'admin','Theme','uninstall','','卸载模板','','卸载模板'),(98,95,2,0,10000,'admin','Theme','installTheme','','模板安装','','模板安装'),(99,95,2,0,10000,'admin','Theme','update','','模板更新','','模板更新'),(100,95,2,0,10000,'admin','Theme','active','','启用模板','','启用模板'),(101,95,1,0,10000,'admin','Theme','files','','模板文件列表','','启用模板'),(102,95,1,0,10000,'admin','Theme','fileSetting','','模板文件设置','','模板文件设置'),(103,95,1,0,10000,'admin','Theme','fileArrayData','','模板文件数组数据列表','','模板文件数组数据列表'),(104,95,2,0,10000,'admin','Theme','fileArrayDataEdit','','模板文件数组数据添加编辑','','模板文件数组数据添加编辑'),(105,95,2,0,10000,'admin','Theme','fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存','','模板文件数组数据添加编辑提交保存'),(106,95,2,0,10000,'admin','Theme','fileArrayDataDelete','','模板文件数组数据删除','','模板文件数组数据删除'),(107,95,2,0,10000,'admin','Theme','settingPost','','模板文件编辑提交保存','','模板文件编辑提交保存'),(108,95,1,0,10000,'admin','Theme','dataSource','','模板文件设置数据源','','模板文件设置数据源'),(109,95,1,0,10000,'admin','Theme','design','','模板设计','','模板设计'),(110,0,0,1,10,'user','AdminIndex','default','','用户管理','group','用户管理'),(111,49,1,1,10000,'admin','User','index','','管理员','','管理员管理'),(112,111,1,0,10000,'admin','User','add','','管理员添加','','管理员添加'),(113,111,2,0,10000,'admin','User','addPost','','管理员添加提交','','管理员添加提交'),(114,111,1,0,10000,'admin','User','edit','','管理员编辑','','管理员编辑'),(115,111,2,0,10000,'admin','User','editPost','','管理员编辑提交','','管理员编辑提交'),(116,111,1,0,10000,'admin','User','userInfo','','个人信息','','管理员个人信息修改'),(117,111,2,0,10000,'admin','User','userInfoPost','','管理员个人信息修改提交','','管理员个人信息修改提交'),(118,111,2,0,10000,'admin','User','delete','','管理员删除','','管理员删除'),(119,111,2,0,10000,'admin','User','ban','','停用管理员','','停用管理员'),(120,111,2,0,10000,'admin','User','cancelBan','','启用管理员','','启用管理员'),(121,0,0,1,30,'portal','AdminIndex','default','','门户管理','th','门户管理'),(122,121,1,1,10000,'portal','AdminArticle','index','','文章管理','','文章列表'),(123,122,1,0,10000,'portal','AdminArticle','add','','添加文章','','添加文章'),(124,122,2,0,10000,'portal','AdminArticle','addPost','','添加文章提交','','添加文章提交'),(125,122,1,0,10000,'portal','AdminArticle','edit','','编辑文章','','编辑文章'),(126,122,2,0,10000,'portal','AdminArticle','editPost','','编辑文章提交','','编辑文章提交'),(127,122,2,0,10000,'portal','AdminArticle','delete','','文章删除','','文章删除'),(128,122,2,0,10000,'portal','AdminArticle','publish','','文章发布','','文章发布'),(129,122,2,0,10000,'portal','AdminArticle','top','','文章置顶','','文章置顶'),(130,122,2,0,10000,'portal','AdminArticle','recommend','','文章推荐','','文章推荐'),(131,122,2,0,10000,'portal','AdminArticle','listOrder','','文章排序','','文章排序'),(132,121,1,1,10000,'portal','AdminCategory','index','','分类管理','','文章分类列表'),(133,132,1,0,10000,'portal','AdminCategory','add','','添加文章分类','','添加文章分类'),(134,132,2,0,10000,'portal','AdminCategory','addPost','','添加文章分类提交','','添加文章分类提交'),(135,132,1,0,10000,'portal','AdminCategory','edit','','编辑文章分类','','编辑文章分类'),(136,132,2,0,10000,'portal','AdminCategory','editPost','','编辑文章分类提交','','编辑文章分类提交'),(137,132,1,0,10000,'portal','AdminCategory','select','','文章分类选择对话框','','文章分类选择对话框'),(138,132,2,0,10000,'portal','AdminCategory','listOrder','','文章分类排序','','文章分类排序'),(139,132,2,0,10000,'portal','AdminCategory','delete','','删除文章分类','','删除文章分类'),(140,121,1,1,10000,'portal','AdminPage','index','','页面管理','','页面管理'),(141,140,1,0,10000,'portal','AdminPage','add','','添加页面','','添加页面'),(142,140,2,0,10000,'portal','AdminPage','addPost','','添加页面提交','','添加页面提交'),(143,140,1,0,10000,'portal','AdminPage','edit','','编辑页面','','编辑页面'),(144,140,2,0,10000,'portal','AdminPage','editPost','','编辑页面提交','','编辑页面提交'),(145,140,2,0,10000,'portal','AdminPage','delete','','删除页面','','删除页面'),(146,121,1,1,10000,'portal','AdminTag','index','','文章标签','','文章标签'),(147,146,1,0,10000,'portal','AdminTag','add','','添加文章标签','','添加文章标签'),(148,146,2,0,10000,'portal','AdminTag','addPost','','添加文章标签提交','','添加文章标签提交'),(149,146,2,0,10000,'portal','AdminTag','upStatus','','更新标签状态','','更新标签状态'),(150,146,2,0,10000,'portal','AdminTag','delete','','删除文章标签','','删除文章标签'),(151,0,1,0,10000,'user','AdminAsset','index','','资源管理','file','资源管理列表'),(152,151,2,0,10000,'user','AdminAsset','delete','','删除文件','','删除文件'),(153,110,0,1,10000,'user','AdminIndex','default1','','用户组','','用户组'),(154,153,1,1,10000,'user','AdminIndex','index','','本站用户','','本站用户'),(155,154,2,0,10000,'user','AdminIndex','ban','','本站用户拉黑','','本站用户拉黑'),(156,154,2,0,10000,'user','AdminIndex','cancelBan','','本站用户启用','','本站用户启用'),(157,153,1,1,10000,'user','AdminOauth','index','','第三方用户','','第三方用户'),(158,157,2,0,10000,'user','AdminOauth','delete','','删除第三方用户绑定','','删除第三方用户绑定'),(159,6,1,1,10000,'user','AdminUserAction','index','','用户操作管理','','用户操作管理'),(160,159,1,0,10000,'user','AdminUserAction','edit','','编辑用户操作','','编辑用户操作'),(161,159,2,0,10000,'user','AdminUserAction','editPost','','编辑用户操作提交','','编辑用户操作提交'),(162,159,1,0,10000,'user','AdminUserAction','sync','','同步用户操作','','同步用户操作'),(163,0,1,1,5,'admin','magnet','default','','下载控制','download',''),(164,163,1,1,10000,'admin','magnet','list_all','','全部下载','',''),(165,163,1,1,10000,'admin','magnet','list_downloading','','正在下载','',''),(166,163,1,1,10000,'admin','magnet','list_downloaded','','完成任务','',''),(167,163,1,1,10000,'admin','magnet','magnet_set','','下载设置','',''),(168,163,1,1,10000,'admin','magnet','show_share','','分享列表','',''),(170,163,1,1,10000,'admin','magnet','show_all_videofile','','视频文件','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=3691 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_magnet`
--

LOCK TABLES `yunbt_magnet` WRITE;
/*!40000 ALTER TABLE `yunbt_magnet` DISABLE KEYS */;
INSERT INTO `yunbt_magnet` VALUES (3574,'b65f17d7d73286cc','[梦蓝字幕组]CrayonshinChan 蜡笔小新[2018.11.16][982][帮忙打包&爷爷来了哦][HDTV][GB_JP][MP4].mp4','','magnet:?xt=urn:btih:44AGEJPNZ5QZTYNI52RPF6GSQ7AEI3XZ&amp;dn=&amp;tr=http%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=udp%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=http%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker3.itzmx.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Ftracker4.itzmx.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.publicbt.com%3A80%2Fannounce&amp;tr=http%3A%2F%2Ftracker.prq.to%2Fannounce&amp;tr=http%3A%2F%2Fopen.acgtracker.com%3A1096%2Fannounce&amp;tr=https%3A%2F%2Ft-115.rhcloud.com%2Fonly_for_ylbud&amp;tr=http%3A%2F%2Fbtfile.sdo.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.nyaatracker.com%2Fannounce&amp;tr=http%3A%2F%2Fopen.nyaatorrents.info%3A6544%2Fannounce&amp;tr=http%3A%2F%2Ft2.popgo.org%3A7456%2Fannonce&amp;tr=http%3A%2F%2Fshare.camoe.cn%3A8080%2Fannounce&amp;tr=http%3A%2F%2Fopentracker.acgnx.se%2Fannounce&amp;tr=http%3A%2F%2Ftracker.acgnx.se%2Fannounce&amp;tr=http%3A%2F%2Fnyaa.tracker.wf%3A7777%2Fannounce&amp;tr=http%3A%2F%2F208.67.16.113%3A8000%2Fannonuce&amp;tr=https%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.acg.rip%3A6699%2Fannounce&amp;tr=http%3A%2F%2Ftracker.kamigami.org%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.kisssub.org%3A2015%2Fannounce&amp;tr=http%3A%2F%2F94.228.192.98%2Fannounce&amp;tr=http%3A%2F%2Ftracker.btcake.com%2Fannounce&amp;tr=http%3A%2F%2Fbt.sc-ol.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker3.torrentino.com%2Fannounce&amp;tr=http%3A%2F%2Ftracker2.torrentino.com%2Fannounce&amp;tr=http%3A%2F%2Fpubt.net%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.tfile.me%2Fannounce&amp;tr=http%3A%2F%2Fbigfoot1942.sektori.org%3A6969%2Fannounce&amp;tr=http%3A%2F%2Fsukebei.tracker.wf%3A8888%2Fannounce&amp;tr=https%3A%2F%2Fopen.kickasstracker.com%2Fannounce&amp;tr=http%3A%2F%2Ftracker.ktxp.com%3A6868%2Fannounce&amp;tr=http%3A%2F%2Ftracker.ktxp.com%3A7070%2Fannounce&amp;tr=http%3A%2F%2Ftracker.xiaoduola.xyz%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftracker.edkj.club%3A6969%2Fannounce',0,129214948,129214948,1545465679,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/aab72f60c2f70e6f4e8936123639c75d',1545465678,'',1,0,1545499629,0,9,0,0),(3575,'9d38c6470916c66d','[SAO Alicization][11][GB][HEVC][1080P].mp4','','magnet:?xt=urn:btih:48d2008199e0e9879f834c0edc1574f93a51eccf&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,276942028,276942028,1545494770,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/830c944169cfa9f359b99b16b4576dab',1545494770,'',1,0,1545499644,0,10,0,0),(3576,'ef6d65fce061aaea','[JYFanSub][Goblin Slayer][10][BIG5][1080P][MP4].mp4','','magnet:?xt=urn:btih:975fece9d3e1582cde161713153beb886e8c7db5&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,315291760,315291760,1545494803,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/819206aa64c6521dc48b03ac726dec49',1545494803,'',1,0,1545530044,0,8,0,0),(3577,'bbd49064a70f6269','[Nekomoenai.sub][Kimi no Suizou wo Tabetai][Movie][1080p][CHT].mp4','','magnet:?xt=urn:btih:0ae8aa8e4a7fae745e59bd89923b40f8a1543eec&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,1039768796,1039768796,1545494874,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/2234ec3afb7f17bbfec1f236c136a768',1545494874,'',1,0,1545530108,0,0,0,0),(3578,'524347667e220dc9','[风车字幕组][名侦探柯南剧场版第22部][零的执行人][BDRip][简体][MP4][1080P].mp4','','magnet:?xt=urn:btih:4611a5aff894f2b63f7b095e1fd885072b1a787f&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,2323530328,2323530328,1545494921,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/f0772c5695a7cdf9f636c29579465c03',1545494921,'',1,0,1545530175,0,11,0,0),(3579,'0360b240076a1451','[DMG] 劇場版 さよならの朝に約束の花をかざろう [BDRip][AVC_AAC][720P][CHS](AEDF05A6).mp4','','magnet:?xt=urn:btih:2d935d8c0943b1d3f0391d3834c8e7a314e1f0d9&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,1776299530,1776299530,1545494941,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/dfa800fe3f10bcb3cdfa75832819c663',1545494940,'',1,0,1545530245,0,0,0,0),(3580,'14779299ff86450a','[Nekomoe kissaten][Liz and the Blue Bird／Liz to Aoi Tori][720p][x264_aac][chs][rev].mp4','','magnet:?xt=urn:btih:fee948ec91c386b1490565ad22b8233b0795b420&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,753540270,753540270,1545494966,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/de6c6c8037c92d7bb85078739a012d06',1545494966,'',1,0,1545530287,0,23,0,0),(3581,'6d47d005aa628b6b','','',' http://dl518.80s.im:920/1812/我的丫鬟是总监/我的丫鬟是总监.mp4',0,0,0,1545575281,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/abd8164a27f00ba2ddcb009ce1e20672',1545575281,'',23,0,0,0,0,1545575358,0),(3582,'b4ec29a145b9ea79','毒液：致命守护者.Venom.2018.HD720P.X264.AAC.English.CHS-ENG.Mp4Ba','','magnet:?xt=urn:btih:64366faed293a0f0d19fa2f625dec2a228618223&amp;dn=%E6%AF%92%E6%B6%B2%EF%BC%9A%E8%87%B4%E5%91%BD%E5%AE%88%E6%8A%A4%E8%80%85.Venom.2018.HD720P.X264.AAC.English.CHS-ENG.Mp4Ba&amp;xl=-1938455666&amp;tr=udp://tracker.coppersurfer.tk:6969/announce&amp;tr=udp://tracker.open-internet.nl:6969/announce&amp;tr=udp://tracker.skyts.net:6969/announce&amp;tr=udp://tracker.piratepublic.com:1337/announce&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://allesanddro.de:1337/announce&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://tracker.internetwarriors.net:1337/announce&amp;tr=udp://public.popcorn-tracker.org:6969/announce&amp;tr=udp://wambo.club:1337/announce&amp;tr=udp://tracker4.itzmx.com:2710/announce&amp;tr=udp://tracker2.christianbro.pw:6969/announce&amp;tr=udp://tracker1.wasabii.com.tw:6969/announce&amp;tr=udp://tracker.zer0day.to:1337/announce&amp;tr=udp://tracker.xku.tv:6969/announce&amp;tr=udp://tracker.vanitycore.co:6969/announce&amp;tr=udp://inferno.demonoid.pw:3418/announce&amp;tr=udp://open.facedatabg.net:6969/announce&amp;tr=udp:/tracker.org:6969/announce&amp;tr=udp://tracker.mg64.net:6969/announce&amp;tr=udp://ipv4.tracker.harry.lu:80/announce&amp;tr=udp://tracker.christianbro.pw:6969/announce&amp;tr=udp://tracker.bluefrog.pw:2710/announce&amp;tr=udp://tracker.acg.gg:2710/announce&amp;tr=udp://thetracker.org:80/announce&amp;tr=udp://explodie.org:6969/announce&amp;tr=udp://bt.xxx-tracker.com:2710/announce&amp;tr=http://tracker.city9x.com:2710/announce&amp;tr=udp://tracker.tiny-vps.com:6969/announce&amp;tr=udp://tracker.halfchub.club:6969/announce&amp;tr=udp://tracker.grepler.com:6969/announce&amp;tr=udp://tracker.files.fm:6969/announce&amp;tr=udp://tracker.dler.org:6969/announce&amp;tr=udp://tracker.desu.sh:6969/announce&amp;tr=udp://tracker.cypherpunks.ru:6969/announce&amp;tr=udp://p4p.arenabg.com:1337/announce&amp;tr=udp://open.stealth.si:80/announce&amp;tr=udp://tracker.torrent.eu.org:451/announce&amp;tr=http://retracker.mgts.by:80/announce&amp;tr=udp://retracker.lanta-net.ru:2710/announce&amp;tr=http://retracker.telecom.by:80/announce&amp;tr=http://0d.kebhana.mx:443/announce&amp;tr=udp://tracker.tvunderground.org.ru:3218/announce&amp;tr=wss://tracker.openwebtorrent.com:443/announce&amp;tr=wss://tracker.fastcast.nz:443/announce&amp;tr=wss://tracker.btorrent.xyz:443/announce&amp;tr=ws://tracker.btsync.cf:2710/announce&amp;tr=udp://zephir.monocul.us:6969/announce&amp;tr=udp://tracker.kamigami.org:2710/announce&amp;tr=udp://retracker.coltel.ru:2710/announce&amp;tr=udp://pubt.in:2710/announce&amp;tr=udp://tracker.uw0.xyz:6969/announce&amp;tr=https://open.acgnxtracker.com:443/announce&amp;tr=https://evening-badlands-6215.herokuapp.com:443/announce&amp;tr=http://tracker.skyts.net:6969/announce&amp;tr=http://torrent.nwps.ws:6969/announce&amp;tr=http://open.acgnxtracker.com:80/announce&amp;tr=udp://z.crazyhd.com:2710/announce&amp;tr=udp://tracker.swateam.org.uk:2710/announce&amp;tr=udp://tracker.justseed.it:1337/announce&amp;tr=udp://tracker.cyberia.is:6969/announce&amp;tr=udp://t.agx.co:61655/announce&amp;tr=udp://sd-95.allfon.net:2710/announce&amp;tr=udp:/ntost12.xyz:6969/announce&amp;tr=udp:/ndrotracker.biz:1337/announce&amp;tr=udp://retracker.nts.su:2710/announce&amp;tr=udp://peerfect.org:6969/announce&amp;tr=udp://packages.crunchbangplusplus.org:6969/announce&amp;tr=udp://104.238.198.186:8000/announce&amp;tr=https://open.kickasstracker.com:443/announce&amp;tr=http://tracker2.itzmx.com:6961/announce&amp;tr=http://tracker.vanitycore.co:6969/announce&amp;tr=http://tracker.torrentyorg.pl:80/announce&amp;tr=http://tracker.tfile.me:80/announce&amp;tr=http://tracker.mg64.net:6881/announce&amp;tr=http://tracker.electro-torrent.pl:80/announce&amp;tr=http://torrentsmd.me:8080/announce&amp;tr=http://t.nyaatracker.com:80/announce&amp;tr=http://t.agx.co:61655/announce&amp;tr=http://share.camoe.cn:8080/announce&amp;tr=http://servandroidkino.ru:80/announce&amp;tr=http://open.kickasstracker.com:80/announce&amp;tr=http://open.acgtracker.com:1096/announce&amp;tr=http://omg.wtftrackr.pw:1337/announce&amp;tr=http://mgtracker.org:6969/announce&amp;tr=http://bt.dl1234.com:80/announce&amp;tr=http://agusiq-torrents.pl:6969/announce&amp;tr=http://104.238.198.186:8000/announce&amp;tr=http://bt2.54new.com:8080/announce&amp;tr=udp://bt2.54new.com:8080&amp;tr=http://ipv6.54new.com:8080/announce&amp;tr=http://bt1.54new.com:65533/announce',0,2356511630,2356511630,1545575405,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/ceeb4492c50181d884fbf9873e0564d8',1545575404,'',23,0,1545613426,0,0,0,0),(3583,'6627352cd0d90616','Girl Next Door Likes It Dirty 7 2016 WEB-DL SPLIT SCENES MP4-RARBG','','magnet:?xt=urn:btih:C6EAED06EAC0C71EFB7A9DDC9B7438060F1D5C02',0,1950986449,1950986449,1545575410,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/4ed923722e3bb990cb7ecd6f2d10b368',1545575410,'',24,0,1545613602,0,0,0,0),(3584,'6627352cd0d90616','Girl Next Door Likes It Dirty 7 2016 WEB-DL SPLIT SCENES MP4-RARBG','','magnet:?xt=urn:btih:C6EAED06EAC0C71EFB7A9DDC9B7438060F1D5C02',0,1950986449,1950986449,1545575439,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/4ed923722e3bb990cb7ecd6f2d10b368',1545575439,'',24,3583,0,0,0,0,0),(3585,'cec2e5624ada5820','2c0489df4afac53adcb84d9ee7a02b58.mp4','','http://93.190.143.128/d/file/p/2018-12-21/2c0489df4afac53adcb84d9ee7a02b58.mp4',0,161407283,161407283,1545575462,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/d7e83f9b0da2fd4a2780a29785fe8d16',1545575462,'',25,0,1545613746,0,12,0,0),(3586,'8240a750358ac258','SeanCody - 2518 - Deacon\'s Bareback Gangbang - Daniel, Deacon, Jackson & Sean 720p [PuSi].mp4','','magnet:?xt=urn:btih:e1f4891e8815315d8223e98ad6bc90b1163ff3a3',0,1792406505,1792406505,1545576248,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/5d78a46adea271af50380572fa10bfeb',1545576248,'',27,0,0,0,13,1545580477,0),(3587,'f6ef344786521d49','Belami Request','','magnet:?xt=urn:btih:5cc223c377d7c3f6b3d1bc9fef1033eb2ee6d21a',0,41240096464,161407283,1545576401,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/5aa5654b291d7973b7a8d52241d24326',1545576401,'',27,0,0,0,0,1545576438,0),(3588,'b89d98319e22c194','少女映画合集','','magnet:?xt=urn:btih:14A24A49BE4EBCA786CEA21EE8B018D3A5A1E041',0,10419522176,3154493440,1545576786,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/971a5a670b425718b59467819f14728c',1545576786,'',28,0,0,0,0,1545579580,0),(3589,'b4482733d573a9c5','STAR-561','','magnet:?xt=urn:btih:b64d359f84315080f44cd8b0581d5bc2cf58bd75',0,2683830517,2683830517,1545581212,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/db964c582a71c9f6cfe9546367fca30f',1545581212,'',30,0,1545620265,0,0,0,0),(3590,'879d6761a9334d37','所有明星三级影片露点合集整理之—中港台部分','','magnet:?xt=urn:btih:07aacbc367aa4185f043b69cc54c509ae92338bb&amp;dn=所有明星三级影片露点合集整理之—中港台部分',0,4298496853,212200119,1545585091,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a0c1d8d10b5ccbbff072cf16b2fc06ab',1545585091,'',31,0,0,0,0,0,0),(3591,'e8b8322551b42b89','[港台][三级]金瓶梅[杨思敏][叶仙儿]','','magnet:?xt=urn:btih:93523fe12d55a637ac221d0c49ebc0018a3bfda0&amp;dn=[港台][三级]金瓶梅[杨思敏][叶仙儿]',0,1520753501,293294749,1545585169,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/b6bff3fc6dadfd63118a2ceac5223129',1545585169,'',31,0,0,0,0,0,0),(3592,'f7cdd07d34922bf2','情.劫.肉肉版Chinggip 1993.mp4','','magnet:?xt=urn:btih:D6775A426B43B116E31492C98B747920A36A8D78',0,1252299615,1252299615,1545585246,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/2554d673470f47c627ce6812a7ce4ff8',1545585246,'',31,0,1545613946,0,0,0,0),(3593,'3d8014998901b3f6','hjd2048.com_181204約炮某學院氣質女神主动女上位呻吟銷魂 -19','','magnet:?xt=urn:btih:6AA0BB911C814D96788A0905FBEC46D245EA6468',0,832271387,832271387,1545586342,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/de6651e011c3fc73ae5d5eb130433dd8',1545586342,'',32,0,1545614122,0,0,0,0),(3594,'611ad347cb0ff8cd','[妈妈的咪呀!我来了.Young Mom 3.2015.WEB-DL.1080P.X264.AAC.CHT.mp4','','magnet:?xt=urn:btih:KDXZSCSC6MM273TUOARNZGVDTSYFTVFQ',0,2066344695,2066344695,1545586469,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/2eec8dd3d23c1df596b7e8b29364ec1a',1545586469,'',32,0,1545614319,0,0,0,0),(3595,'cd5458d4166b6cd9','1.zip','','magnet:?xt=urn:btih:DFF83E5E32C9367119F73616F183C87816692594',0,270602156613,2356511630,1545586484,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/8ff57ea608e828075ca000351a0f8438',1545586484,'',32,0,0,0,0,0,0),(3596,'d232a50b5584ae0d','[METADATA]1a73624b1ab5778962dc25c47e888755573f9ef1','','magnet:?xt=urn:btih:1A73624B1AB5778962DC25C47E888755573F9EF1',0,5255570,5242880,1545586505,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/833c78e15066f39a926319e1107dddee',1545586505,'',32,0,0,0,0,0,0),(3597,'865da0351d1a036e','MKD-S90-DVD','','magnet:?xt=urn:btih:AD4B90DE8E15D5CAF94B41F7E31A09DC86446E13&amp;dn=MKD-S90-DVD',0,4187226671,4086563375,1545589207,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/dc3a959eac0a9f50067fd2c98f2c208a',1545589207,'',34,0,0,0,0,0,0),(3598,'14d6dd7c45894cfa','www.tskscn.com（完美陌生人）','','magnet:?xt=urn:btih:30A9F0D1C0E5B6656D366FA38976BE159A2EF8A0',0,1855167787,1855167787,1545590997,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/70d84d213664c0ad54b8a372732a0f46',1545590997,'',35,0,1545614498,0,0,0,0),(3599,'1cf246785696c388','','','magnet:?xt=urn:btih:357791C1218609D3F62F35892DD3537B5C5E986A',0,0,0,1545591742,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/dd7816c408b59933dd4f095d0479d1b7',1545591742,'',37,0,0,0,0,0,0),(3600,'9e8c23f8e46e87f8','ABP735.720P.Sub','','magnet:?xt=urn:btih:8B88106CC73A70A07261E780672DE055720EF073',0,5627646456,5627646456,1545601292,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/c48fc1039cdd6794f1d33a528533ee1e',1545601292,'',38,0,0,0,0,1545601604,0),(3601,'9adcf814ed56cf00','[ThZu.Cc]SIRO-3641','','magnet:?xt=urn:btih:F898A648C5C2B9857D592330D7E727ACB898CD01',0,1956091034,1956091034,1545601592,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/22b31ef41ba8ac92b20872a7d64b1ac8',1545601592,'',5,0,1545614685,0,14,0,0),(3602,'9bf45a9cbb99dcba','[ThZu.Cc]kmhr-057','','magnet:?xt=urn:btih:5234DDDCDD9666971C0FC90F2AA001F275AEBF19',0,4143252383,4143252383,1545601963,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/ff71c6905be616c64d2df2cfbaf8ad26',1545601963,'',5,0,1545614901,0,0,0,0),(3603,'f83d638da386d11b','[ThZu.Cc]ABP-815','','magnet:?xt=urn:btih:C0CC97C66C0DDF75E808837D9F3812057884AA0B',0,5901892530,5901892530,1545602390,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/bfb3420f40063bc119d02c2dc4881dc9',1545602390,'',5,0,1545615108,0,0,0,0),(3604,'f83d638da386d11b','[ThZu.Cc]ABP-815','','magnet:?xt=urn:btih:C0CC97C66C0DDF75E808837D9F3812057884AA0B',0,5901892530,5901892530,1545602619,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/bfb3420f40063bc119d02c2dc4881dc9',1545602619,'',5,3603,0,0,0,0,0),(3605,'97d9b6e62d333ad3','[ThZu.Cc]ABP-814','','magnet:?xt=urn:btih:FBC007F6ACC1596EA929064645550ECC3AA016D2',0,4624981483,4624981483,1545602712,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/54499a65d2860f4b2a8ae58f8872484b',1545602712,'',5,0,1545615259,0,0,0,0),(3606,'893b2ba9a19ff202','[ThZu.Cc]ABP-813','','magnet:?xt=urn:btih:D02454449497A930D41D3E5ABB1537F473AA907A',0,6173653561,6173653561,1545602733,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a6ba620c99e7798d9454039f8832aa4c',1545602733,'',5,0,1545615472,0,0,0,0),(3607,'56ba6a22580a478b','[ThZu.Cc]ABP-812','','magnet:?xt=urn:btih:81CE4F1124D06309C7D6867C9258A0CBA7E92FA2',0,4808532621,4808532621,1545602749,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/c5815f39b1aac5a343dc96fccec76c15',1545602749,'',5,0,1545615630,0,0,0,0),(3608,'afe453b7bbd4369f','[ThZu.Cc]juy-713','','magnet:?xt=urn:btih:4A3F4E8336A532F341DDAD1B8A9D9258F8DBF3DE',0,3631248133,3631248133,1545602770,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/ec546f6ccc35982d09890efaf4d8c2db',1545602770,'',5,0,1545615782,0,16,0,0),(3609,'0cb299bb89fbc5c1','[Airota&LoliHouse] Tonari no Kyuuketsuki-san - 12 [WebRip 1080p HEVC-yuv420p10 AAC ASSx2].mkv','','magnet:?xt=urn:btih:P2RDJMQYHJZ2JZTHJVFUQL47ASTTDQNA&amp;dn=&amp;tr=http%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=udp%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=http%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker3.itzmx.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Ftracker4.itzmx.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.publicbt.com%3A80%2Fannounce&amp;tr=http%3A%2F%2Ftracker.prq.to%2Fannounce&amp;tr=http%3A%2F%2Fopen.acgtracker.com%3A1096%2Fannounce&amp;tr=https%3A%2F%2Ft-115.rhcloud.com%2Fonly_for_ylbud&amp;tr=http%3A%2F%2Fbtfile.sdo.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.nyaatracker.com%2Fannounce&amp;tr=http%3A%2F%2Fopen.nyaatorrents.info%3A6544%2Fannounce&amp;tr=http%3A%2F%2Ft2.popgo.org%3A7456%2Fannonce&amp;tr=http%3A%2F%2Fshare.camoe.cn%3A8080%2Fannounce&amp;tr=http%3A%2F%2Fopentracker.acgnx.se%2Fannounce',0,217441944,217441944,1545602777,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a9607c961428937e3d14a0d76975bfad',1545602776,'',19,0,1545886084,0,0,0,0),(3610,'1cd24f6c4c6af019','賓館大幹大奶紋身妹直接幹趴下 援交東北大奶鈕完整版高清露臉精彩紛呈 白嫩女教師床戰 少婦給我發她老公和她做愛的視頻 火辣身材大奶女神自拍誘惑視頻露臉露奶露騷逼','','magnet:?xt=urn:btih:19B8D9405724DF2FBD7BDCA965BFFBE6D1A19C93&amp;dn=%E8%B3%93%E9%A4%A8%E5%A4%A7%E5%B9%B9%E5%A4%A7%E5%A5%B6%E7%B4%8B%E8%BA%AB%E5%A6%B9%E7%9B%B4%E6%8E%A5%E5%B9%B9%E8%B6%B4%E4%B8%8B %E6%8F%B4%E4%BA%A4%E6%9D%B1%E5%8C%97%E5%A4%A7%E5%A5%B6%E9%88%95%E5%AE%8C%E6%95%B4%E7%89%88%E9%AB%98%E6%B8%85%E9%9C%B2%E8%87%89%E7%B2%BE%E5%BD%A9%E7%B4%9B%E5%91%88 %E7%99%BD%E5%AB%A9%E5%A5%B3%E6%95%99%E5%B8%AB%E5%BA%8A%E6%88%B0 %E5%B0%91%E5%A9%A6%E7%B5%A6%E6%88%91%E7%99%BC%E5%A5%B9%E8%80%81%E5%85%AC%E5%92%8C%E5%A5%B9%E5%81%9A%E6%84%9B%E7%9A%84%E8%A6%96%E9%A0%BB %E7%81%AB%E8%BE%A3%E8%BA%AB%E6%9D%90%E5%A4%A7%E5%A5%B6%E5%A5%B3%E7%A5%9E%E8%87%AA%E6%8B%8D%E8%AA%98%E6%83%91%E8%A6%96%E9%A0%BB%E9%9C%B2%E8%87%89%E9%9C%B2%E5%A5%B6%E9%9C%B2%E9%A8%B7%E9%80%BC&amp;tr=udp://9.rarbg.me:2710/announce&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://tracker.coppersurfer.tk:6969/announce&amp;tr=udp://9.rarbg.com:2720/announce&amp;tr=udp://shadowshq.yi.org:6969/announce&amp;tr=udp://shadowshq.eddie4.nl:6969/announce&amp;tr=udp://eddie4.nl:6969/announce&amp;tr=udp://tracker.leechers-paradise.org:6969/announce&amp;tr=udp://p4p.arenabg.com:1337/announc',0,1081374293,77299712,1545605842,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/4a323fd6727ffb93832fbad144260285',1545605841,'',39,0,0,0,0,0,0),(3611,'2cddb7cd028e31fe','hjd2048.com-0331miae209-h264','','magnet:?xt=urn:btih:F3F6B92BAF65EFA3FCBD5A4C0A49E26F64872A58',0,5414572583,5414572583,1545612208,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/84211650a08fa9a6fa652f2f5623543d',1545612208,'',40,0,1545616359,0,0,0,0),(3612,'352d22f06deacf1a','[44x.me]dcx-092','','magnet:?xt=urn:btih:FBA158C9707D410286C1A7C18441EBE2E8A7018D',0,24644133630,4808532621,1545612226,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/e32d14d97a60572c679547b6683fe8cf',1545612226,'',40,0,0,0,0,0,0),(3613,'b4ec29a145b9ea79','毒液：致命守护者.Venom.2018.HD720P.X264.AAC.English.CHS-ENG.Mp4Ba','','magnet:?xt=urn:btih:64366faed293a0f0d19fa2f625dec2a228618223&amp;dn=%E6%AF%92%E6%B6%B2%EF%BC%9A%E8%87%B4%E5%91%BD%E5%AE%88%E6%8A%A4%E8%80%85.Venom.2018.HD720P.X264.AAC.English.CHS-ENG.Mp4Ba&amp;xl=-1938455666&amp;tr=udp://tracker.coppersurfer.tk:6969/announce&amp;tr=udp://tracker.open-internet.nl:6969/announce&amp;tr=udp://tracker.skyts.net:6969/announce&amp;tr=udp://tracker.piratepublic.com:1337/announce&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://allesanddro.de:1337/announce&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://tracker.internetwarriors.net:1337/announce&amp;tr=udp://public.popcorn-tracker.org:6969/announce&amp;tr=udp://wambo.club:1337/announce&amp;tr=udp://tracker4.itzmx.com:2710/announce&amp;tr=udp://tracker2.christianbro.pw:6969/announce&amp;tr=udp://tracker1.wasabii.com.tw:6969/announce&amp;tr=udp://tracker.zer0day.to:1337/announce&amp;tr=udp://tracker.xku.tv:6969/announce&amp;tr=udp://tracker.vanitycore.co:6969/announce&amp;tr=udp://inferno.demonoid.pw:3418/announce&amp;tr=udp://open.facedatabg.net:6969/announce&amp;tr=udp:/tracker.org:6969/announce&amp;tr=udp://tracker.mg64.net:6969/announce&amp;tr=udp://ipv4.tracker.harry.lu:80/announce&amp;tr=udp://tracker.christianbro.pw:6969/announce&amp;tr=udp://tracker.bluefrog.pw:2710/announce&amp;tr=udp://tracker.acg.gg:2710/announce&amp;tr=udp://thetracker.org:80/announce&amp;tr=udp://explodie.org:6969/announce&amp;tr=udp://bt.xxx-tracker.com:2710/announce&amp;tr=http://tracker.city9x.com:2710/announce&amp;tr=udp://tracker.tiny-vps.com:6969/announce&amp;tr=udp://tracker.halfchub.club:6969/announce&amp;tr=udp://tracker.grepler.com:6969/announce&amp;tr=udp://tracker.files.fm:6969/announce&amp;tr=udp://tracker.dler.org:6969/announce&amp;tr=udp://tracker.desu.sh:6969/announce&amp;tr=udp://tracker.cypherpunks.ru:6969/announce&amp;tr=udp://p4p.arenabg.com:1337/announce&amp;tr=udp://open.stealth.si:80/announce&amp;tr=udp://tracker.torrent.eu.org:451/announce&amp;tr=http://retracker.mgts.by:80/announce&amp;tr=udp://retracker.lanta-net.ru:2710/announce&amp;tr=http://retracker.telecom.by:80/announce&amp;tr=http://0d.kebhana.mx:443/announce&amp;tr=udp://tracker.tvunderground.org.ru:3218/announce&amp;tr=wss://tracker.openwebtorrent.com:443/announce&amp;tr=wss://tracker.fastcast.nz:443/announce&amp;tr=wss://tracker.btorrent.xyz:443/announce&amp;tr=ws://tracker.btsync.cf:2710/announce&amp;tr=udp://zephir.monocul.us:6969/announce&amp;tr=udp://tracker.kamigami.org:2710/announce&amp;tr=udp://retracker.coltel.ru:2710/announce&amp;tr=udp://pubt.in:2710/announce&amp;tr=udp://tracker.uw0.xyz:6969/announce&amp;tr=https://open.acgnxtracker.com:443/announce&amp;tr=https://evening-badlands-6215.herokuapp.com:443/announce&amp;tr=http://tracker.skyts.net:6969/announce&amp;tr=http://torrent.nwps.ws:6969/announce&amp;tr=http://open.acgnxtracker.com:80/announce&amp;tr=udp://z.crazyhd.com:2710/announce&amp;tr=udp://tracker.swateam.org.uk:2710/announce&amp;tr=udp://tracker.justseed.it:1337/announce&amp;tr=udp://tracker.cyberia.is:6969/announce&amp;tr=udp://t.agx.co:61655/announce&amp;tr=udp://sd-95.allfon.net:2710/announce&amp;tr=udp:/ntost12.xyz:6969/announce&amp;tr=udp:/ndrotracker.biz:1337/announce&amp;tr=udp://retracker.nts.su:2710/announce&amp;tr=udp://peerfect.org:6969/announce&amp;tr=udp://packages.crunchbangplusplus.org:6969/announce&amp;tr=udp://104.238.198.186:8000/announce&amp;tr=https://open.kickasstracker.com:443/announce&amp;tr=http://tracker2.itzmx.com:6961/announce&amp;tr=http://tracker.vanitycore.co:6969/announce&amp;tr=http://tracker.torrentyorg.pl:80/announce&amp;tr=http://tracker.tfile.me:80/announce&amp;tr=http://tracker.mg64.net:6881/announce&amp;tr=http://tracker.electro-torrent.pl:80/announce&amp;tr=http://torrentsmd.me:8080/announce&amp;tr=http://t.nyaatracker.com:80/announce&amp;tr=http://t.agx.co:61655/announce&amp;tr=http://share.camoe.cn:8080/announce&amp;tr=http://servandroidkino.ru:80/announce&amp;tr=http://open.kickasstracker.com:80/announce&amp;tr=http://open.acgtracker.com:1096/announce&amp;tr=http://omg.wtftrackr.pw:1337/announce&amp;tr=http://mgtracker.org:6969/announce&amp;tr=http://bt.dl1234.com:80/announce&amp;tr=http://agusiq-torrents.pl:6969/announce&amp;tr=http://104.238.198.186:8000/announce&amp;tr=http://bt2.54new.com:8080/announce&amp;tr=udp://bt2.54new.com:8080&amp;tr=http://ipv6.54new.com:8080/announce&amp;tr=http://bt1.54new.com:65533/announce',0,2356511630,2356511630,1545624565,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/ceeb4492c50181d884fbf9873e0564d8',1545624565,'',5,3582,1545613426,0,15,0,0),(3614,'5c0d2970305da75d','','','magnet:?xt=urn:btih:cbdd3ddc012143e4940a0363ccd008f10473f42d',0,0,0,1545625108,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/94a9dbbd1e3be80798de57b0dc578724',1545625108,'',27,0,0,0,0,1545625710,0),(3615,'4ca898a753523398','[CockyBoys] Mateo Vice & Sean Zevran - 720p.mp4','','magnet:?xt=urn:btih:b2f0a0c7049f8d10851996034d50a0eb910b8fa3',0,686643058,47185920,1545625731,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/7f9c1a81e5abc911add5821ec27be51a',1545625731,'',27,0,0,0,0,1545636885,0),(3616,'cd5458d4166b6cd9','1.zip','','magnet:?xt=urn:btih:DFF83E5E32C9367119F73616F183C87816692594',0,270602156613,2356511630,1545628580,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/8ff57ea608e828075ca000351a0f8438',1545628580,'',48,3595,0,0,0,0,0),(3617,'0f496d162631534c','[电影天堂www.dy2018.com]神奇动物：格林德沃之罪HD中英双字.mkv','','magnet:?xt=urn:btih:6ETMA7M74KE5ZTCVM36L5WZRIAF733SP',0,1595365459,1595365459,1545636762,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/48d435eb82056ebeddbfefa57e2ca70a',1545636762,'',49,0,1545638251,0,0,0,0),(3618,'6064c7170d0ed47a','[电影天堂www.dy2018.com]克隆人HD中字.mkv','','magnet:?xt=urn:btih:RAMCYS6OMQO7OBAAAIMIUU5KUHZZJ2O2',0,1296431399,1296431399,1545636777,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/55e23ac407540c8a367dddd1012af4d5',1545636777,'',49,0,1545638424,0,0,0,0),(3619,'196ba1966b35a157','[电影天堂www.dy2018.com]无双HD国语中字.mkv','','magnet:?xt=urn:btih:E7AQBENUJRQ5RANRJHVU6FYCKVHX6TAZ',0,3099255685,3099255685,1545636783,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/5bf06d4456c2611e3638b65f5bf14e6e',1545636783,'',49,0,1545637912,0,0,0,0),(3620,'17cdfb1b50759b3c','','','magnet:?xt=urn:btih:b75de95bd39be2673305bc10a90ceb777e10d8a9',0,0,0,1545636870,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/dbaceeeabb3dbbe03a0dd3a910ca8d3d',1545636870,'',27,0,0,0,0,0,0),(3621,'9358fd3ed12cf8dc','(C94) [girlfriend end (じる)] いけない放課後の過ごしかた','','magnet:?xt=urn:btih:E67BB837E1B6FB8E6FB71556F80530E37580C736',0,329255132,329255132,1545697549,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/edfa5ead7c977d5d800b1c829ace3b3e',1545697549,'',1,0,1545697981,0,17,0,0),(3622,'2e7f719a14a4c42a','[girlfriend end (Jill)]','','magnet:?xt=urn:btih:5D33CFCA9E83D583AFD5B12C3B275797415861D2',0,2585252107,77299712,1545698930,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/06fac2e7482aa2d921847dd9902bb291',1545698930,'',1,0,0,0,0,0,0),(3623,'9d85478bcbd6f913','蜜桃成熟时[天马修复版].Crazy.Love.1993.WEB-DL.1080P.x264.10bit.AAC2.0.粤国双语.内嵌中字繁体.mkv','','magnet:?xt=urn:btih:9895165750A751509485A0A022C0422B4378884F',0,2871367411,77299712,1545702062,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/9fd6c714a0de844ad7e6d0d826533d1b',1545702062,'',51,0,0,0,0,0,0),(3624,'9358fd3ed12cf8dc','(C94) [girlfriend end (じる)] いけない放課後の過ごしかた','','magnet:?xt=urn:btih:E67BB837E1B6FB8E6FB71556F80530E37580C736',0,329255132,329255132,1545716880,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/edfa5ead7c977d5d800b1c829ace3b3e',1545716880,'',54,3621,1545697981,0,17,0,0),(3625,'ebf9810a27602359','[ThZu.Cc]hunta-530','','magnet:?xt=urn:btih:FB1A94BBC5CAF000559EB6FE4B6006192AB921EB&amp;dn=%5BThZu.Cc%5Dhunta-530',0,6790782330,6291456,1545721733,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/6da0db8ef928e0d76ddf615526cbc866',1545721733,'',56,0,0,0,0,1545721828,0),(3626,'5fc2b8191326848c','heyzo-1793','','magnet:?xt=urn:btih:B5BBEF23BDB5F3B0F44526A5D92EE57AE1115F56&amp;dn=heyzo-1793',0,1582386950,6291456,1545721904,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/21c424cbadd6167c9f542875d7c91ef2',1545721904,'',56,0,0,0,0,0,0),(3627,'4045039f16d13ec4','hjd2048.com_IPX229-SD','','magnet:?xt=urn:btih:68cf8cae9a5b5501ec4e34235702d4f7b5ced1d9&amp;dn=hjd2048.com_IPX229-SD',0,1643324146,6291456,1545722013,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/4e7922d3a9358b028df1d5bb4a9e22a7',1545722013,'',56,0,0,0,0,1545722032,0),(3628,'49520c7b96193633','','路人女主的养成方法  [00-11]  第二季','magnet:?xt=urn:btih:63638f0d9198eafdfd6996c95c9ddb85d989dd83&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,0,0,1545732647,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a639355689c0a2b29fe73c5e7ae11e29',1545732647,'',58,0,0,0,0,0,0),(3629,'49520c7b96193633','','路人女主的养成方法  [00-11] 第一季','magnet:?xt=urn:btih:63638f0d9198eafdfd6996c95c9ddb85d989dd83&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,0,0,1545732708,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a639355689c0a2b29fe73c5e7ae11e29',1545732708,'',58,3628,0,0,0,0,0),(3630,'f1535e40efbc25c8','[JYFanSub][Steins;Gate Zero][GB_CN][HEVC][720p]','命运石之门 0 ［1-23］','magnet:?xt=urn:btih:58aad2cec4c04afa52e5e4da5bc4af5a48556f17&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,1934751582,1934751582,1545732797,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a97bcdca3c245ffb30b4d10835cc8e28',1545732797,'',58,0,1545734192,0,0,0,0),(3631,'5c0ef56da2b07f09','[Nekomoe kissaten][Steins;Gate 0][24END][GB][720P].mp4','命运石之门 0 ［24］','magnet:?xt=urn:btih:aa4682e46b04731663790e613fa407c9a2513a40&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,123380449,123380449,1545732847,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/2a8a1fff1a51538766c739594ed15479',1545732847,'',58,0,1545733262,0,0,0,0),(3632,'312051f5d5cfd406','[DMG] 冴えない彼女の育てかた [BDRip][S1+S2][720P][CHS][MP4]','','magnet:?xt=urn:btih:cd48511d9de718cbef470716465213979d8eddec',0,7095706731,7095706731,1545733357,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/0bfaf9be51ef854962da1ea4040af8dc',1545733357,'',58,0,1545735360,0,18,0,0),(3633,'d43e8006e56774a9','29.fc2ppv-964179','','magnet:?xt=urn:btih:C0DE10DE1AE15A1D0BE1C337A901A3F4AB50ADD2',0,677875755,677875755,1545737832,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/fb6013d4abdb92fabe903a3ffecb6cc9',1545737832,'',60,0,0,0,0,1545783172,0),(3634,'bacb36bb81d4d68a','VivThomas.18.12.21.Alyssa.Reece.And.Angelika.Greys.Warm.Down.XXX.SD.MP4-KLEENEX','','magnet:?xt=urn:btih:A1AF824B51D34BC59A95ABC0E53DF1113FAD9128',0,217227717,217227717,1545738633,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/7a64b559f225d239c544e78d91c69856',1545738633,'',60,0,1545739381,0,0,1545826705,0),(3635,'77403db22afee826','王祖贤合集','','magnet:?xt=urn:btih:8B0B65BFC175FC03487D5A00FEBA17EFAC971502',0,24145177109,173906967,1545744497,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/d5dc8aa1664bd6ade96869002a5babcb',1545744497,'',51,0,0,0,0,0,0),(3636,'0c8f85f51eafcbc8','[玉蒲团之偷情宝鉴][中国香港.古装肉肉][港版].Sex.and.Zen.1991.BD.1080P.x264.AC3.粤国双语.内封特效中字简繁.FFans-抠脚','','magnet:?xt=urn:btih:A118D917A343F3663FB4130DDE438139C838A6B4',0,3891799039,217227717,1545749132,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/107dccda6a80c3290560b231e09bb6ce',1545749132,'',51,0,0,0,0,0,0),(3637,'a230e567b2e20bfd','','','https://rarbgprx.org/download.php?id=m7kqz9ue642y38o15txplbvidnrfacjsgwhwcz3rd7tx9knsy4v5ogfqib8pmae2j16lhu&amp;f=PublicPickUps%20-%20Enza-[rarbg.to].torrent',0,0,0,1545752924,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/949f9fddd1ffc4c636e1bc55ebba92a2',1545752924,'',61,0,0,0,0,0,0),(3638,'d2cdcbc7fbd37e55','pup_enza_480p_750-chkm8te.mp4','','magnet:?xt=urn:btih:D0EC35EC158826BB5F70D8923472161C7839CF79',0,293294749,293294749,1545753110,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/05bbb250ec23d27102f565cdc2c6ee0c',1545753110,'',61,0,1545848822,0,0,0,0),(3639,'d232a50b5584ae0d','[METADATA]1a73624b1ab5778962dc25c47e888755573f9ef1','','magnet:?xt=urn:btih:1A73624B1AB5778962DC25C47E888755573F9EF1',0,5255570,5242880,1545755528,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/833c78e15066f39a926319e1107dddee',1545755528,'',62,3596,0,0,0,0,0),(3640,'bff2cb627eb32f2e','[88q.me]anx-106','','magnet:?xt=urn:btih:6A61037867D6244F78CEA80BAA3E3BAE8BA203E6&amp;dn=%5B88q.me%5Danx-106',0,4730584199,217227717,1545755875,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/9f5fcc11cf2e257286e3e72c44d4e9b3',1545755875,'',62,0,0,0,0,0,0),(3641,'590a0c7f678ce69e','[Haretahoo.sub][Tensei Shitara Slime Datta Ken][13][GB][720P]','','magnet:?xt=urn:btih:IFLQHSN2CQUGK7SGKJZKLLJV2HQPBYTG',0,173906967,173906967,1545760317,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/054932a627b385f6a865500f7e019fc9',1545760317,'',63,0,0,0,0,1545760419,0),(3642,'544c37536230aafd','圣诞特辑','','magnet:?xt=urn:btih:0d92b0c8b02a0b41c965bda83d63ab44099b969c&amp;dn',0,7436165656,173906967,1545785128,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/3acd8becb55d3a9ac07cb5cf61e24ada',1545785128,'',33,0,0,0,0,0,0),(3643,'6db9225a231518c7','[7sht.me]度 娘 流 出 嬌 小 可 愛 的 學 院 美 女 和 男 友 啪 啪 男 的 用 淫 語 挑 逗 要 找 朋 友 一 起 操 她 邊 幹 邊 拍 淫 叫 太 深 了 不 要 了 別 拍 我','','magnet:?xt=urn:btih:AB45D77DD8F7511EC517ECB282C29AE6E5642E1E&amp;dn=%5Bmonova.org%5D+%5B7sht.me%5D%E5%BA%A6+%E5%A8%98+%E6%B5%81+%E5%87%BA+%E5%AC%8C+%E5%B0%8F+%E5%8F%AF+%E6%84%9B+%E7%9A%84+%E5%AD%B8+%E9%99%A2+%E7%BE%8E+%E5%A5%B3+%E5%92%8C+%E7%94%B7+%E5%8F%8B+%E5%95%AA+%E5%95%AA+%E7%94%B7+%E7%9A%84+%E7%94%A8+%E6%B7%AB+%E8%AA%9E+%E6%8C%91+%E9%80%97+%E8%A6%81+%E6%89%BE+%E6%9C%8B+%E5%8F%8B+%E4%B8%80+%E8%B5%B7+%E6%93%8D+%E5%A5%B9+%E9%82%8A+%E5%B9%B9+%E9%82%8A+%E6%8B%8D+%E6%B7%AB+%E5%8F%AB+%E5%A4%AA+%E6%B7%B1+%E4%BA%86+%E4%B8%8D+%E8%A6%81+%E4%BA%86+%E5%88%A5+%E6%8B%8D+%E6%88%91&amp;tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&amp;tr=udp%3A%2F%2Fopen.demonii.com%3A1337&amp;tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&amp;tr=udp%3A%2F%2Fexodus.desync.com%3A6969',0,486070571,486070571,1545800894,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/8e6c55c833dd3937dad25e01f3fa9957',1545800894,'',5,0,1545802382,0,0,0,0),(3644,'6db9225a231518c7','[7sht.me]度 娘 流 出 嬌 小 可 愛 的 學 院 美 女 和 男 友 啪 啪 男 的 用 淫 語 挑 逗 要 找 朋 友 一 起 操 她 邊 幹 邊 拍 淫 叫 太 深 了 不 要 了 別 拍 我','','magnet:?xt=urn:btih:AB45D77DD8F7511EC517ECB282C29AE6E5642E1E&amp;dn=%5Bmonova.org%5D+%5B7sht.me%5D%E5%BA%A6+%E5%A8%98+%E6%B5%81+%E5%87%BA+%E5%AC%8C+%E5%B0%8F+%E5%8F%AF+%E6%84%9B+%E7%9A%84+%E5%AD%B8+%E9%99%A2+%E7%BE%8E+%E5%A5%B3+%E5%92%8C+%E7%94%B7+%E5%8F%8B+%E5%95%AA+%E5%95%AA+%E7%94%B7+%E7%9A%84+%E7%94%A8+%E6%B7%AB+%E8%AA%9E+%E6%8C%91+%E9%80%97+%E8%A6%81+%E6%89%BE+%E6%9C%8B+%E5%8F%8B+%E4%B8%80+%E8%B5%B7+%E6%93%8D+%E5%A5%B9+%E9%82%8A+%E5%B9%B9+%E9%82%8A+%E6%8B%8D+%E6%B7%AB+%E5%8F%AB+%E5%A4%AA+%E6%B7%B1+%E4%BA%86+%E4%B8%8D+%E8%A6%81+%E4%BA%86+%E5%88%A5+%E6%8B%8D+%E6%88%91&amp;tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&amp;tr=udp%3A%2F%2Fopen.demonii.com%3A1337&amp;tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&amp;tr=udp%3A%2F%2Fexodus.desync.com%3A6969',0,486070571,486070571,1545800928,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/8e6c55c833dd3937dad25e01f3fa9957',1545800928,'',5,3643,0,0,22,0,0),(3645,'635e1da48f11cddc','铁血战士.The.Predator.2018.中英字幕.720p.BluRay.x264.AC3-圣城家园','','magnet:?xt=urn:btih:4B82FA5F9F3876D2E039A776E6321D07D6DEEAA9',0,3322299782,173906967,1545801341,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/c2cb4d8790e41e60c3c9120fb248889c',1545801341,'',5,0,0,0,0,0,0),(3646,'a19f606f6d4a4802','看不见的旋律.720p.HD中字[最新电影www.66ys.tv].mp4','看不见的旋律','magnet:?xt=urn:btih:XDQQWQMJCBIRDDHPCFHMBSKJCY2IDV4A&amp;dn=%e7%9c%8b%e4%b8%8d%e8%a7%81%e7%9a%84%e6%97%8b%e5%be%8b%2e720p%2eHD%e4%b8%ad%e5%ad%97%5b%e6%9c%80%e6%96%b0%e7%94%b5%e5%bd%b1www%2e66ys%2etv%5d%2emp4&amp;tr=udp%3a%2f%2f9%2erarbg%2eto%3a2710%2fannounce&amp;tr=udp%3a%2f%2f9%2erarbg%2eme%3a2710%2fannounce&amp;tr=http%3a%2f%2ftr%2ecili001%2ecom%3a8070%2fannounce&amp;tr=http%3a%2f%2ftracker%2etrackerfix%2ecom%3a80%2fannounce&amp;tr=udp%3a%2f%2fopen%2edemonii%2ecom%3a1337&amp;tr=udp%3a%2f%2ftracker%2eopentrackr%2eorg%3a1337%2fannounce&amp;tr=udp%3a%2f%2fp4p%2earenabg%2ecom%3a1337',0,1468687084,173906967,1545801822,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/138fee190cf207da0bd07d79c62f0cfd',1545801822,'',66,0,0,0,0,0,0),(3647,'3e170be7f2a8d8ac','阳光电影www.ygdy8.com.机器猛犬.BD.720p.中英双字幕.mkv','','magnet:?xt=urn:btih:833f0da789e4e1e2776d6e51d352eefb6d33a04a&amp;dn=%e9%98%b3%e5%85%89%e7%94%b5%e5%bd%b1www.ygdy8.com.%e6%9c%ba%e5%99%a8%e7%8c%9b%e7%8a%ac.BD.720p.%e4%b8%ad%e8%8b%b1%e5%8f%8c%e5%ad%97%e5%b9%95.mkv&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&amp;tr=udp%3a%2f%2fthetracker.org%3a80%2fannounce&amp;tr=http%3a%2f%2fretracker.telecom.by%2fannounce',0,1327161547,173906967,1545804639,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/89e06d5219b1400a5d1e6e9d18d00770',1545804639,'',67,0,0,0,0,0,0),(3648,'90345701297f056d','阳光电影www.ygdy8.com.无双.HD.1080p.国语中字.mp4','','magnet:?xt=urn:btih:f708db0d950209541a5cb6ec4c5c9df6cd014383&amp;dn=%e9%98%b3%e5%85%89%e7%94%b5%e5%bd%b1www.ygdy8.com.%e6%97%a0%e5%8f%8c.HD.1080p.%e5%9b%bd%e8%af%ad%e4%b8%ad%e5%ad%97.mp4&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&amp;tr=udp%3a%2f%2fthetracker.org%3a80%2fannounce&amp;tr=http%3a%2f%2fretracker.telecom.by%2fannounce',0,3104479560,173906967,1545804747,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/f6863569b5e1dc695fcd5fd19f27ca7d',1545804747,'',67,0,0,0,0,0,0),(3649,'270e54a31d4d646a','','','http://cloud.xxika.com:89/index.php?share/fileProxy&amp;user=102&amp;sid=PH6pR5cg&amp;path=%2F%E8%A7%86%E9%A2%91%2F6%E5%8F%B7%E7%BA%BF_x264.mp4',0,0,0,1545817264,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/62c754d039eb20afcc63a41b36317597',1545817264,'',71,0,0,0,0,1545817300,0),(3650,'983ab39a8478342a','6号线_x264.mp4','','http://cloud.xxika.com:89/data/User/root/home/罗定考场/视频/6号线_x264.mp4',0,550104121,550104121,1545817386,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/b7b1aa2e30d33e08a0dcf8963af9b610',1545817386,'',71,0,1545817682,0,19,0,0),(3651,'0e1faedf5c2102be','阳光电影www.ygdy8.com.神奇动物：格林德沃之罪.HD.720p.韩版中英双字幕.mkv','','magnet:?xt=urn:btih:bd2019ac7d2fcbe018135517f81c523a86325a8f&amp;dn=%E9%98%B3%E5%85%89%E7%94%B5%E5%BD%B1www.ygdy8.com.%E7%A5%9E%E5%A5%87%E5%8A%A8%E7%89%A9%EF%BC%9A%E6%A0%BC%E6%9E%97%E5%BE%B7%E6%B2%83%E4%B9%8B%E7%BD%AA.HD.720p.%E9%9F%A9%E7%89%88%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97%E5%B9%95.mkv&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&amp;tr=udp%3a%2f%2fthetracker.org%3a80%2fannounce',0,1608190893,486070571,1545817425,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/053c84e74e6723719d7c6cf101a4a5df',1545817425,'',72,0,0,0,0,0,0),(3652,'10610210a6584ba1','闺蜜2：无二不作.Girls.2.2018.HD720P.X264.AAC.Mandarin.CHS.mp4','','magnet:?xt=urn:btih:F603BBC3B3F313AB8D63D50643825A750C1936D7',0,2128716292,550104121,1545818727,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/5e8005e6f2eeaafd3a28b69368e8fd6a',1545818727,'',69,0,0,0,0,0,0),(3653,'cf92d4b922049fcc','PRED001','','magnet:?xt=urn:btih:F93E2D3E006AF7F46066C1660879BD4201D3F7A7',0,1186755825,550104121,1545823418,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/f8d74f3a67561a1e71073cb0dcf593c6',1545823418,'',73,0,0,0,0,1545823443,0),(3654,'7b5b1e9080b73e59','tsbrowser_708_2.0.6.24.exe','','http://down10.zol.com.cn/zhuyeliulan/tsbrowser_708_2.0.6.24.exe',0,48211456,48211456,1545824296,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/2d0d69f9244e2f21ce7d2e06efc8f07c',1545824296,'',75,0,1545824701,0,0,0,0),(3655,'af79c6df607862fe','RiaSakurai','','magnet:?xt=urn:btih:D0C18343651A78E2B76FCA6190B525A3A8D9CC20',0,28367760549,48211456,1545826690,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/de74f8617aec30a3eefb4e7683896d77',1545826690,'',60,0,0,0,0,1545826775,0),(3656,'da60d9f20e647e66','JUY-260','','magnet:?xt=urn:btih:9DE4CF4EA26E4DA5E51E2E94C2C8535993DA4F09',0,1996363409,48211456,1545826835,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/b63719578342d0076192eb800cd64ace',1545826835,'',60,0,0,0,0,1545826927,0),(3657,'2437d038217ec37a','1225_669','','magnet:?xt=urn:btih:AB3D47F6924012D264BF0D6F37A95812D18AE055',0,743021874,743021874,1545827013,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/4b6b9db3bc2f6dcbe683e9b1ab94b3ce',1545827013,'',60,0,1545831363,0,0,0,0),(3658,'b227a2d5833379ef','[DMG][I_Want_to_Eat_Your_Pancreas][MOVIE][720P][GB].mp4','我想吃掉你的胰脏','magnet:?xt=urn:btih:33a08b1d54620ddfdb20bfedad0111d7ba8d0060',0,1063955201,1063955201,1545874655,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/0b847b7c8fd1f9f6cb4d806caff3782d',1545874655,'',58,0,1545875301,0,21,0,0),(3659,'4eece6e51d54cabb','[Nekomoe kissaten][Liz and the Blue Bird／Liz to Aoi Tori][720p][x264_aac][chs][fin].mp4','莉兹与青鸟','magnet:?xt=urn:btih:896b3c94b25b947bfea781950aac03e484395a65',0,753542918,753542918,1545874776,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/be81db58c4b288f85b1f7d63d81fa340',1545874776,'',58,0,1545875106,0,20,0,0),(3660,'436c2f423910007f','[FLsnow][Sayoasa][AVC_AAC][720p][zh-Hans].mp4','朝花夕誓——于离别之朝束起约定之花','magnet:?xt=urn:btih:e3562ffb29525215d5cc005cd8fae4cddd968cb3&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,852977778,852977778,1545875471,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/93df53a9643a00a8f6ee9c10afebd50c',1545875471,'',58,0,1545876904,0,0,0,0),(3661,'722a93876ad49086','강남 스캔들.E01.181126.720p-NEXT.mp4','','magnet:?xt=urn:btih:04CBD979D239AD07261BDB0DE8315D48C205DDF2',0,717981310,717981310,1545885045,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/0c9bfff9051d0b2bd2b93a3f96ea772b',1545885045,'',45,0,1545885363,0,0,0,0),(3662,'f1c0b14c2e221783','','','https://ourbits.club/download.php?id=93705&amp;passkey=353a29433ba27ac70d2c10e1f575473e&amp;https=1',0,0,0,1545898868,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/733ca7bbc438d28169b2d026921521c6',1545898868,'',79,0,0,0,0,1545898926,0),(3663,'a66b02a57012a864','Сергей Серебряков - «Воспитание детей» - 2007 - ID044','','magnet:?xt=urn:btih:d876048a16f1d676fa4439479d14413508eb8dbd&amp;dn=Сергей Серебряков - «Воспитание детей» - 2007 - ID044',0,198602857,198602857,1545911776,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/bc3e6aae6e118c6bdad6f87becf99bdb',1545911776,'',80,0,1545912181,0,0,0,0),(3664,'6521a57af352608f','[@OZ] Tokusatsu Heroine - Beautiful Idol in Skintight Costume','','magnet:?xt=urn:btih:1d4909c011d09e3679cc3cf4f318b230f73c3a19',0,1292852237,753542918,1545912147,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/1ea6b1de577e02a7f3b7611006a5277c',1545912147,'',81,0,0,0,0,0,0),(3665,'53858d6e4caeb969','[ThZu.Cc]shyn-018','','magnet:?xt=urn:btih:622C6D93742917DAA72A1B66A7DF7172E966015E&amp;dn=%5BThZu.Cc%5Dshyn-018',0,1927251694,717981310,1545931246,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/944be5bf2be3453be92ace52ea112a18',1545931246,'',82,0,0,0,0,1545931333,0),(3666,'827609d436d0ec7e','[7sht.me]sntr-004','','magnet:?xt=urn:btih:2D5C158703713BF9BF3FD8B2A79B1DE56007DA37&amp;dn=%5B7sht.me%5Dsntr-004',0,5708691602,717981310,1545931351,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/e5a27b2e125f5949a095f8a8d5ecf4e1',1545931351,'',82,0,0,0,0,1545931399,0),(3667,'1145af76f2bdf51f','流浪猫鲍勃.A.Street.Cat.Named.Bob.2016.1080p.BluRay.AAC.x264.中英双语特效-深影字幕组.mp4','','magnet:?xt=urn:btih:8309be06fb419d2af96ebb5242af3dffdf69f9e5',0,1992023666,717981310,1545959733,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/5f8967c2b75b8bbd05aa5ea157ce8c07',1545959733,'',83,0,0,0,0,1545959798,0),(3668,'fe3be14c18ed9b9f','','','magnet:?xt=urn:btih:E6EB367EAF026F624AAFD4FCE47B9F11D378171F',0,0,0,1545993630,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/d304e0540c692679aeec877a6569f2ce',1545993630,'',84,0,0,0,0,0,0),(3669,'899a20b31a431020','闪电侠.The.Flash.S03E13.中英字幕.WEB-HR.AAC.1024X576.x264.mp4','','magnet:?xt=urn:btih:13C8E9F60069FF1A32D96F026A8A6D2F76DB4FF6',0,423665325,423665325,1545993731,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/7ba59f7e59e3ab869211ac0ae9fef832',1545993731,'',84,0,1546008664,0,0,0,0),(3670,'205e68a9d62ad5d6','银魂2.Gintama.2.2018.WEB-DL.1080P.X264.AAC.CHT.mp4','','magnet:?xt=urn:btih:2Z2LF6O2LJY4Z2RLOTUDNPF3KUJ725KO',0,2900898374,717981310,1545993944,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/2c69d4342a56b9a846584e0d35a5f658',1545993944,'',84,0,0,0,0,0,0),(3671,'0c9dda25fcd40e07','火王之千里同风09','','magnet:?xt=urn:btih:9DB928B4BFED162ED344DAC1153C39C96A0A193F',0,363663738,363663738,1545994185,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/c52ef20de22d53f57992b52aad41021a',1545994185,'',84,0,1545995162,0,0,0,0),(3672,'63e15e3836799a13','IPX-128.mp4','','magnet:?xt=urn:btih:74268EB081AE389E342D6CA28FB62D3FD2F7440A&amp;dn=IPX-128.mp4',0,1477588000,3309568,1546015802,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a213d473074aed8574a2bc0f9cd27d5c',1546015802,'',85,0,0,0,0,1546015905,0),(3673,'63e15e3836799a13','IPX-128.mp4','','magnet:?xt=urn:btih:74268EB081AE389E342D6CA28FB62D3FD2F7440A&amp;dn=IPX-128.mp4',0,1477588000,3309568,1546016168,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a213d473074aed8574a2bc0f9cd27d5c',1546016168,'',85,3672,0,0,0,1546015905,0),(3674,'48f90a05e67959a2','在天堂等我.HD1280高清国语中字版.mp4','','http://xunlei.zuidaxunlei.com/1812/%E5%9C%A8%E5%A4%A9%E5%A0%82%E7%AD%89%E6%88%91.HD1280%E9%AB%98%E6%B8%85%E5%9B%BD%E8%AF%AD%E4%B8%AD%E5%AD%97%E7%89%88.mp4',0,1473504977,17874944,1546062967,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/30c0180ad19a78e72207062da1ccdf72',1546062967,'',86,0,0,0,0,1546063136,0),(3675,'0817a1f948e7818c','来电狂响TS.mp4','','http://xunlei1.okzyxz.com/20181228/7905_3178f14c/%E6%9D%A5%E7%94%B5%E7%8B%82%E5%93%8DTS.mp4',0,806126549,806126549,1546063147,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/74b166eadb1f9525b94d13c15ed14e4c',1546063147,'',86,0,1546063382,0,0,0,0),(3676,'5506ed1970bc4f4f','真爱黑白配 1080p','','magnet:?xt=urn:btih:d5747274a9f206fa568cbfddf73b944aec10da09&amp;dn=%c3%a7%c2%9c%c2%9f%c3%a7%c2%88%c2%b1%c3%a9%c2%bb%c2%91%c3%a7%c2%99%c2%bd%c3%a9%c2%85%c2%8d+1080p(www.banyungong.org)',0,20475239193,740574881,1546075767,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/4ec68878bbfa5d0b02878651bb19da5d',1546075767,'',27,0,0,0,0,0,0),(3677,'116b0d6397f588d6','真愛黑白配','','magnet:?xt=urn:btih:3a944feb65bd24209991426746b1368066a092d4',0,28993376519,806126549,1546076961,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/6f1423d8333a204d2f74ff18851475ba',1546076961,'',27,0,0,0,0,0,0),(3678,'11f11306e9ce6bfc','z.nation.s05e13.720p.web.x264-tbs.chs.eng.mp4','','magnet:?xt=urn:btih:VCIQXXYER2I6VHLOYWFSQP3YL7MDXO5G&amp;dn=z.nation.s05e13.720p.web.x264-tbs.chs.eng.mp4&amp;tr=udp%3A%2F%2Ftracker.publicbt.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&amp;xl=845802337',0,845802337,845802337,1546093269,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/92d9a05358968e91f7c9353b5e917c7b',1546093269,'',87,0,1546320782,0,0,0,0),(3679,'573cdb87f2aa98cf','国产最新流出美女如云的餐厅高级坐厕第7季多角度肉丝白领姐姐的小穴很有撸点','','magnet:?xt=urn:btih:df6e582cbb2e759d1720ec7820302343804fa50f',0,740574881,740574881,1546156283,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/a1b1f90732e94c91aa9cadcd00d41b24',1546156283,'',89,0,1546156803,0,0,0,0),(3680,'6d731a72f29a9192','[Youkoso Japari Park][11][GB][MP4][1080P].mp4','','magnet:?xt=urn:btih:e970154986172f9031087d2abf556361ec441724&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,74643463,74643463,1546407016,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/18ea4331eb21c9acfe618314ba2b02a3',1546407016,'',1,0,1546407286,0,0,0,0),(3681,'1d910a2a72868649','[YUI-7][Yagate Kimi ni Naru][13END][GB][X264_AAC][720P].mp4','','magnet:?xt=urn:btih:92a5e2dfa41b65768e5a50f7434cd107d7336521&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,116820186,116820186,1546409250,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/96b3780b0acd763157523a2a71b366a3',1546409250,'',1,0,1546423741,0,0,0,0),(3682,'6dced35ad73fda78','[Nekomoe kissaten][Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai][13END][720p][CHT].mp4','','magnet:?xt=urn:btih:4228d1752f54f60863033d34987c371f23892295&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,133360734,133360734,1546409470,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/7d11d76dad036e6b4007466a2df5a773',1546409470,'',1,0,1546409681,0,0,0,0),(3683,'58ad461c4d80d056','a.mp4','','http://142.4.213.153/a.mp4',0,1300000,1300000,1546411367,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/c02fdb79c476eda0df913e69e3377828',1546411367,'',1,0,1546411632,0,0,0,0),(3684,'6437d1d8d94f3798','www.y35.xyz发布145G精品资源包含茄子门萝莉门黄鳝门警花门杨幂被迷奸范冰冰被干借贷宝系列360小水滴系列少妇门学校门微博秒拍微拍泄露视频','','magnet:?xt=urn:btih:3C57B5F4AEEAA40C4BE24EF3D4980DF0F8D5CEAA',0,151029354003,423665325,1546412113,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/ab98baf80031b0cc18cf0af5fc4fbae6',1546412113,'',91,0,0,0,0,0,0),(3685,'2f009da1e69298e1','','','magnet:?xt=urn:btih:C9A843AAEF179D2F66BD56091BAE3ECAE7D1C316',0,0,0,1546413755,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/38ba92cc27759108ff454c53489bda06',1546413755,'',92,0,0,0,0,1546414262,0),(3686,'21ee3c6373ca5352','1217-olo@SIS001@国产精品合集-2','','magnet:?xt=urn:btih:75899101B94835428B41A78DC420E52DFD0D9988',0,889174796,889174796,1546413979,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/457611cf89b726b01fd72a114feb42b7',1546413979,'',92,0,1546414744,0,0,0,0),(3687,'0c009c64f1b2f16b','','','https://www.youtube.com/watch?v=X6dJEAs0-Gk',0,0,0,1546414522,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/7b5f298a988b3f80766a87bef9c3519f',1546414522,'',93,0,0,0,0,0,0),(3688,'6a14ec5baf96239f','[SumiSora][Ao_Buta][13][GB][720p].mp4','','magnet:?xt=urn:btih:af73c7d772019d02ac55413d64de1c993c474df0&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,212200119,212200119,1546417581,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/62ba538c1fce35f6675d905360a82f97',1546417581,'',1,0,1546417801,0,0,0,0),(3689,'07e5a2c1e88e4adf','[Comicat&KissSub][Goblin Slayer][12][720P][GB][MP4].mp4','','magnet:?xt=urn:btih:85c84871c2309ae7cb64289fed33c781275a0f60&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,223574159,223574159,1546417602,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/65d7dc86beafa9f40e6c9a8b1b1a8a47',1546417602,'',1,0,1546417982,0,24,0,0),(3690,'1d910a2a72868649','[YUI-7][Yagate Kimi ni Naru][13END][GB][X264_AAC][720P].mp4','','magnet:?xt=urn:btih:92a5e2dfa41b65768e5a50f7434cd107d7336521&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce',0,116820186,116820186,1546417624,'/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/96b3780b0acd763157523a2a71b366a3',1546417624,'',1,3681,0,0,0,0,0);
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
  `water` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT '0左上 1右上 2右下 3左下',
  `tobo` int(11) NOT NULL DEFAULT '10' COMMENT '上下',
  `leri` int(11) NOT NULL DEFAULT '10' COMMENT '左右',
  `logo` text CHARACTER SET utf8 NOT NULL,
  `ts` int(11) NOT NULL DEFAULT '0',
  `tstime` int(11) NOT NULL DEFAULT '5',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_magnet_site`
--

LOCK TABLES `yunbt_magnet_site` WRITE;
/*!40000 ALTER TABLE `yunbt_magnet_site` DISABLE KEYS */;
INSERT INTO `yunbt_magnet_site` VALUES (1,2,'admin@yunbt.net',10,'ffmpeg -i %s -vcodec libx264 -crf 28 -y -vf \\\"scale=1280:-2\\\" -strict -2 -acodec aac -ab 128k %s',1,1,15,40,'/home/wwwroot/www.yunbt.net/public/file/logo/20190102/ff53c5a71230983d1ce4f195a91f933f.png',1,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_share`
--

LOCK TABLES `yunbt_share` WRITE;
/*!40000 ALTER TABLE `yunbt_share` DISABLE KEYS */;
INSERT INTO `yunbt_share` VALUES (5,5,3564,'fc39df6a3313840032d97c3a8c75c545','hjd2048.com_181216-18岁身材紧凑极致粉嫩大姨妈搞得一片-19','','magnet:?xt=urn:btih:55B5A3BE1EB80E6AF3BBE8F9F0D859A319384DC7','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/df0e6f570c6b1aa059abecb77e13371d',842883576,'VAI6',0,0),(6,5,3572,'fab91b958e5926b93214923a1f548b51','(C93) [Shooting Star\'s (Saku)] Avenger.zip','','magnet:?xt=urn:btih:E3113200A10417C0F8AB172AE55C551FBF28BD58','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/80faf8cee6ce256d5a5194eb6ffa232e',177622191,'oiYb',0,0),(7,5,3547,'ab2f4e531c27f2079ab24ef967786483','fc2-ppv-631237-re-appearanceat a clothing part that 32-year-old married woman and fuck.mp4','','magnet:?xt=urn:btih:e67e71f3d75eb2ada86bc314bff4c7476c965dde&amp;dn=Fc2-ppv-631237-re-appearanceat%20a%20clothing%20part%20that%2032-year-old%20married%20woman%20and%20fuck.mp4%20%5BJAV%5D&amp;tr=http%3A%2F%2Fsukebei.tracker.wf%3A8888%2Fannounce&amp;tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&amp;tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&amp;tr=udp%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce','/home/wwwroot/yunbt.233.nu/public/../app/../public/file/download/c6405f2a223caa96e703c589b1307192',1419571138,'Gmh2',0,0),(8,1,3576,'df40fc3142fa3be0136b81f307d712e3','[JYFanSub][Goblin Slayer][10][BIG5][1080P][MP4].mp4','','magnet:?xt=urn:btih:975fece9d3e1582cde161713153beb886e8c7db5&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/819206aa64c6521dc48b03ac726dec49',315291760,'EJyR',5,0),(9,1,3574,'ff86bd56ffec04418219209e5fa1c4ae','[梦蓝字幕组]CrayonshinChan 蜡笔小新[2018.11.16][982][帮忙打包&爷爷来了哦][HDTV][GB_JP][MP4].mp4','','magnet:?xt=urn:btih:44AGEJPNZ5QZTYNI52RPF6GSQ7AEI3XZ&amp;dn=&amp;tr=http%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=udp%3A%2F%2F104.238.198.186%3A8000%2Fannounce&amp;tr=http%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2Ftracker3.itzmx.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Ftracker4.itzmx.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.publicbt.com%3A80%2Fannounce&amp;tr=http%3A%2F%2Ftracker.prq.to%2Fannounce&amp;tr=http%3A%2F%2Fopen.acgtracker.com%3A1096%2Fannounce&amp;tr=https%3A%2F%2Ft-115.rhcloud.com%2Fonly_for_ylbud&amp;tr=http%3A%2F%2Fbtfile.sdo.com%3A6961%2Fannounce&amp;tr=http%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.nyaatracker.com%2Fannounce&amp;tr=http%3A%2F%2Fopen.nyaatorrents.info%3A6544%2Fannounce&amp;tr=http%3A%2F%2Ft2.popgo.org%3A7456%2Fannonce&amp;tr=http%3A%2F%2Fshare.camoe.cn%3A8080%2Fannounce&amp;tr=http%3A%2F%2Fopentracker.acgnx.se%2Fannounce&amp;tr=http%3A%2F%2Ftracker.acgnx.se%2Fannounce&amp;tr=http%3A%2F%2Fnyaa.tracker.wf%3A7777%2Fannounce&amp;tr=http%3A%2F%2F208.67.16.113%3A8000%2Fannonuce&amp;tr=https%3A%2F%2Ftr.bangumi.moe%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ft.acg.rip%3A6699%2Fannounce&amp;tr=http%3A%2F%2Ftracker.kamigami.org%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.kisssub.org%3A2015%2Fannounce&amp;tr=http%3A%2F%2F94.228.192.98%2Fannounce&amp;tr=http%3A%2F%2Ftracker.btcake.com%2Fannounce&amp;tr=http%3A%2F%2Fbt.sc-ol.com%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker3.torrentino.com%2Fannounce&amp;tr=http%3A%2F%2Ftracker2.torrentino.com%2Fannounce&amp;tr=http%3A%2F%2Fpubt.net%3A2710%2Fannounce&amp;tr=http%3A%2F%2Ftracker.tfile.me%2Fannounce&amp;tr=http%3A%2F%2Fbigfoot1942.sektori.org%3A6969%2Fannounce&amp;tr=http%3A%2F%2Fsukebei.tracker.wf%3A8888%2Fannounce&amp;tr=https%3A%2F%2Fopen.kickasstracker.com%2Fannounce&amp;tr=http%3A%2F%2Ftracker.ktxp.com%3A6868%2Fannounce&amp;tr=http%3A%2F%2Ftracker.ktxp.com%3A7070%2Fannounce&amp;tr=http%3A%2F%2Ftracker.xiaoduola.xyz%3A6969%2Fannounce&amp;tr=http%3A%2F%2Ftracker.edkj.club%3A6969%2Fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/aab72f60c2f70e6f4e8936123639c75d',129214948,'x84C',0,0),(10,1,3575,'ab17fb4af19fef17bd5713baf4f3e43d','[SAO Alicization][11][GB][HEVC][1080P].mp4','','magnet:?xt=urn:btih:48d2008199e0e9879f834c0edc1574f93a51eccf&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/830c944169cfa9f359b99b16b4576dab',276942028,'A2ki',2,0),(11,1,3578,'be39b4d76b3bbd49433ffdc35ddc609c','[风车字幕组][名侦探柯南剧场版第22部][零的执行人][BDRip][简体][MP4][1080P].mp4','','magnet:?xt=urn:btih:4611a5aff894f2b63f7b095e1fd885072b1a787f&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/f0772c5695a7cdf9f636c29579465c03',2323530328,'VGR0',0,0),(12,25,3585,'574892dfa97cf76f5ccc9e7bbc9b8683','2c0489df4afac53adcb84d9ee7a02b58.mp4','','http://93.190.143.128/d/file/p/2018-12-21/2c0489df4afac53adcb84d9ee7a02b58.mp4','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/d7e83f9b0da2fd4a2780a29785fe8d16',161407283,'K1hd',0,0),(13,27,3586,'d04843cdc65019ebfdd60f2a3b4740a7','SeanCody - 2518 - Deacon\'s Bareback Gangbang - Daniel, Deacon, Jackson & Sean 720p [PuSi].mp4','','magnet:?xt=urn:btih:e1f4891e8815315d8223e98ad6bc90b1163ff3a3','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/5d78a46adea271af50380572fa10bfeb',1792406505,'7Ene',1,0),(14,5,3601,'89fc1981c89b1576ce2b14ce0cf8fb1c','[ThZu.Cc]SIRO-3641','','magnet:?xt=urn:btih:F898A648C5C2B9857D592330D7E727ACB898CD01','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/22b31ef41ba8ac92b20872a7d64b1ac8',1956091034,'u02l',0,0),(15,5,3613,'2cdd378819a4da764fdbc25ca63014f7','毒液：致命守护者.Venom.2018.HD720P.X264.AAC.English.CHS-ENG.Mp4Ba','','magnet:?xt=urn:btih:64366faed293a0f0d19fa2f625dec2a228618223&amp;dn=%E6%AF%92%E6%B6%B2%EF%BC%9A%E8%87%B4%E5%91%BD%E5%AE%88%E6%8A%A4%E8%80%85.Venom.2018.HD720P.X264.AAC.English.CHS-ENG.Mp4Ba&amp;xl=-1938455666&amp;tr=udp://tracker.coppersurfer.tk:6969/announce&amp;tr=udp://tracker.open-internet.nl:6969/announce&amp;tr=udp://tracker.skyts.net:6969/announce&amp;tr=udp://tracker.piratepublic.com:1337/announce&amp;tr=udp://tracker.opentrackr.org:1337/announce&amp;tr=udp://allesanddro.de:1337/announce&amp;tr=udp://9.rarbg.to:2710/announce&amp;tr=udp://tracker.internetwarriors.net:1337/announce&amp;tr=udp://public.popcorn-tracker.org:6969/announce&amp;tr=udp://wambo.club:1337/announce&amp;tr=udp://tracker4.itzmx.com:2710/announce&amp;tr=udp://tracker2.christianbro.pw:6969/announce&amp;tr=udp://tracker1.wasabii.com.tw:6969/announce&amp;tr=udp://tracker.zer0day.to:1337/announce&amp;tr=udp://tracker.xku.tv:6969/announce&amp;tr=udp://tracker.vanitycore.co:6969/announce&amp;tr=udp://inferno.demonoid.pw:3418/announce&amp;tr=udp://open.facedatabg.net:6969/announce&amp;tr=udp:/tracker.org:6969/announce&amp;tr=udp://tracker.mg64.net:6969/announce&amp;tr=udp://ipv4.tracker.harry.lu:80/announce&amp;tr=udp://tracker.christianbro.pw:6969/announce&amp;tr=udp://tracker.bluefrog.pw:2710/announce&amp;tr=udp://tracker.acg.gg:2710/announce&amp;tr=udp://thetracker.org:80/announce&amp;tr=udp://explodie.org:6969/announce&amp;tr=udp://bt.xxx-tracker.com:2710/announce&amp;tr=http://tracker.city9x.com:2710/announce&amp;tr=udp://tracker.tiny-vps.com:6969/announce&amp;tr=udp://tracker.halfchub.club:6969/announce&amp;tr=udp://tracker.grepler.com:6969/announce&amp;tr=udp://tracker.files.fm:6969/announce&amp;tr=udp://tracker.dler.org:6969/announce&amp;tr=udp://tracker.desu.sh:6969/announce&amp;tr=udp://tracker.cypherpunks.ru:6969/announce&amp;tr=udp://p4p.arenabg.com:1337/announce&amp;tr=udp://open.stealth.si:80/announce&amp;tr=udp://tracker.torrent.eu.org:451/announce&amp;tr=http://retracker.mgts.by:80/announce&amp;tr=udp://retracker.lanta-net.ru:2710/announce&amp;tr=http://retracker.telecom.by:80/announce&amp;tr=http://0d.kebhana.mx:443/announce&amp;tr=udp://tracker.tvunderground.org.ru:3218/announce&amp;tr=wss://tracker.openwebtorrent.com:443/announce&amp;tr=wss://tracker.fastcast.nz:443/announce&amp;tr=wss://tracker.btorrent.xyz:443/announce&amp;tr=ws://tracker.btsync.cf:2710/announce&amp;tr=udp://zephir.monocul.us:6969/announce&amp;tr=udp://tracker.kamigami.org:2710/announce&amp;tr=udp://retracker.coltel.ru:2710/announce&amp;tr=udp://pubt.in:2710/announce&amp;tr=udp://tracker.uw0.xyz:6969/announce&amp;tr=https://open.acgnxtracker.com:443/announce&amp;tr=https://evening-badlands-6215.herokuapp.com:443/announce&amp;tr=http://tracker.skyts.net:6969/announce&amp;tr=http://torrent.nwps.ws:6969/announce&amp;tr=http://open.acgnxtracker.com:80/announce&amp;tr=udp://z.crazyhd.com:2710/announce&amp;tr=udp://tracker.swateam.org.uk:2710/announce&amp;tr=udp://tracker.justseed.it:1337/announce&amp;tr=udp://tracker.cyberia.is:6969/announce&amp;tr=udp://t.agx.co:61655/announce&amp;tr=udp://sd-95.allfon.net:2710/announce&amp;tr=udp:/ntost12.xyz:6969/announce&amp;tr=udp:/ndrotracker.biz:1337/announce&amp;tr=udp://retracker.nts.su:2710/announce&amp;tr=udp://peerfect.org:6969/announce&amp;tr=udp://packages.crunchbangplusplus.org:6969/announce&amp;tr=udp://104.238.198.186:8000/announce&amp;tr=https://open.kickasstracker.com:443/announce&amp;tr=http://tracker2.itzmx.com:6961/announce&amp;tr=http://tracker.vanitycore.co:6969/announce&amp;tr=http://tracker.torrentyorg.pl:80/announce&amp;tr=http://tracker.tfile.me:80/announce&amp;tr=http://tracker.mg64.net:6881/announce&amp;tr=http://tracker.electro-torrent.pl:80/announce&amp;tr=http://torrentsmd.me:8080/announce&amp;tr=http://t.nyaatracker.com:80/announce&amp;tr=http://t.agx.co:61655/announce&amp;tr=http://share.camoe.cn:8080/announce&amp;tr=http://servandroidkino.ru:80/announce&amp;tr=http://open.kickasstracker.com:80/announce&amp;tr=http://open.acgtracker.com:1096/announce&amp;tr=http://omg.wtftrackr.pw:1337/announce&amp;tr=http://mgtracker.org:6969/announce&amp;tr=http://bt.dl1234.com:80/announce&amp;tr=http://agusiq-torrents.pl:6969/announce&amp;tr=http://104.238.198.186:8000/announce&amp;tr=http://bt2.54new.com:8080/announce&amp;tr=udp://bt2.54new.com:8080&amp;tr=http://ipv6.54new.com:8080/announce&amp;tr=http://bt1.54new.com:65533/announce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/ceeb4492c50181d884fbf9873e0564d8',2356511630,'7XBZ',74,0),(16,5,3608,'2477d9b6d413901c4f613ff62a84f84f','[ThZu.Cc]juy-713','','magnet:?xt=urn:btih:4A3F4E8336A532F341DDAD1B8A9D9258F8DBF3DE','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/ec546f6ccc35982d09890efaf4d8c2db',3631248133,'V0LX',0,0),(17,1,3621,'80bd334c4735cd40faea05ef7181a4a1','(C94) [girlfriend end (じる)] いけない放課後の過ごしかた','','magnet:?xt=urn:btih:E67BB837E1B6FB8E6FB71556F80530E37580C736','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/edfa5ead7c977d5d800b1c829ace3b3e',329255132,'pyB3',17,0),(18,58,3632,'d643d4a0c7a93ab7f146627df26115f2','[DMG] 冴えない彼女の育てかた [BDRip][S1+S2][720P][CHS][MP4]','','magnet:?xt=urn:btih:cd48511d9de718cbef470716465213979d8eddec','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/0bfaf9be51ef854962da1ea4040af8dc',7095706731,'jwf1',7,0),(19,71,3650,'215752bc66b935068fa32e5babf4869c','6号线_x264.mp4','','http://cloud.xxika.com:89/data/User/root/home/罗定考场/视频/6号线_x264.mp4','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/b7b1aa2e30d33e08a0dcf8963af9b610',550104121,'rOiQ',1,0),(20,58,3659,'dfc7d77da356f0493f93e937ab725a8d','[Nekomoe kissaten][Liz and the Blue Bird／Liz to Aoi Tori][720p][x264_aac][chs][fin].mp4','莉兹与青鸟','magnet:?xt=urn:btih:896b3c94b25b947bfea781950aac03e484395a65','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/be81db58c4b288f85b1f7d63d81fa340',753542918,'WNwS',18,0),(21,58,3658,'b6187a6e992afd3d4836dc82b079d881','[DMG][I_Want_to_Eat_Your_Pancreas][MOVIE][720P][GB].mp4','我想吃掉你的胰脏','magnet:?xt=urn:btih:33a08b1d54620ddfdb20bfedad0111d7ba8d0060','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/0b847b7c8fd1f9f6cb4d806caff3782d',1063955201,'HXB5',6,0),(22,5,3644,'8946d76784595eddbaf62487ef4bef2f','[7sht.me]度 娘 流 出 嬌 小 可 愛 的 學 院 美 女 和 男 友 啪 啪 男 的 用 淫 語 挑 逗 要 找 朋 友 一 起 操 她 邊 幹 邊 拍 淫 叫 太 深 了 不 要 了 別 拍 我','','magnet:?xt=urn:btih:AB45D77DD8F7511EC517ECB282C29AE6E5642E1E&amp;dn=%5Bmonova.org%5D+%5B7sht.me%5D%E5%BA%A6+%E5%A8%98+%E6%B5%81+%E5%87%BA+%E5%AC%8C+%E5%B0%8F+%E5%8F%AF+%E6%84%9B+%E7%9A%84+%E5%AD%B8+%E9%99%A2+%E7%BE%8E+%E5%A5%B3+%E5%92%8C+%E7%94%B7+%E5%8F%8B+%E5%95%AA+%E5%95%AA+%E7%94%B7+%E7%9A%84+%E7%94%A8+%E6%B7%AB+%E8%AA%9E+%E6%8C%91+%E9%80%97+%E8%A6%81+%E6%89%BE+%E6%9C%8B+%E5%8F%8B+%E4%B8%80+%E8%B5%B7+%E6%93%8D+%E5%A5%B9+%E9%82%8A+%E5%B9%B9+%E9%82%8A+%E6%8B%8D+%E6%B7%AB+%E5%8F%AB+%E5%A4%AA+%E6%B7%B1+%E4%BA%86+%E4%B8%8D+%E8%A6%81+%E4%BA%86+%E5%88%A5+%E6%8B%8D+%E6%88%91&amp;tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&amp;tr=udp%3A%2F%2Fopen.demonii.com%3A1337&amp;tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&amp;tr=udp%3A%2F%2Fexodus.desync.com%3A6969','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/8e6c55c833dd3937dad25e01f3fa9957',486070571,'HbzP',0,0),(23,1,3580,'222e0a7b576cf3e72022f1e120b789ed','[Nekomoe kissaten][Liz and the Blue Bird／Liz to Aoi Tori][720p][x264_aac][chs][rev].mp4','','magnet:?xt=urn:btih:fee948ec91c386b1490565ad22b8233b0795b420&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/de6c6c8037c92d7bb85078739a012d06',753540270,'SVkM',1,0),(24,1,3689,'d39c9ea0485139c30c061dd2f1308efd','[Comicat&KissSub][Goblin Slayer][12][720P][GB][MP4].mp4','','magnet:?xt=urn:btih:85c84871c2309ae7cb64289fed33c781275a0f60&amp;tr=http%3a%2f%2ft.nyaatracker.com%2fannounce&amp;tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&amp;tr=http%3a%2f%2fshare.camoe.cn%3a8080%2fannounce&amp;tr=http%3a%2f%2fopentracker.acgnx.se%2fannounce&amp;tr=http%3a%2f%2fanidex.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2ft.acg.rip%3a6699%2fannounce&amp;tr=https%3a%2f%2ftr.bangumi.moe%3a9696%2fannounce&amp;tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&amp;tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce','/home/wwwroot/www.yunbt.net/public/../app/../public/file/download/65d7dc86beafa9f40e6c9a8b1b1a8a47',223574159,'kcS8',3,0);
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
INSERT INTO `yunbt_theme_file` VALUES (1,0,10,'simpleboot3','文章页','portal/Article/index','portal/article','文章页模板文件','{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL),(2,0,10,'simpleboot3','联系我们页','portal/Page/index','portal/contact','联系我们页模板文件','{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}',NULL),(3,0,5,'simpleboot3','首页','portal/Index/index','portal/index','首页模板文件','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"2\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true},\"valueText\":\"Picture\"}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3YunBT\",\"display\":1,\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"YunBt\\u4f60\\u7684\\u5728\\u7ebf\\u4e91Bt\\u4e0b\\u8f7d\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"\\u5728\\u7ebf\\u4e0b\\u8f7d\",\"icon\":\"download\",\"content\":\"\\u652f\\u6301Magnet,http,torrent\\u76f4\\u63a5\\u4e0b\\u8f7d\\uff0c\\u82e5\\u670d\\u52a1\\u5668\\u5df2\\u7ecf\\u4e0b\\u8f7d\\u5219\\u8fc5\\u901f\\u8f7d\\u5165\\u4e4b\\u524d\\u7684\\u4e0b\\u8f7d\\u6587\\u4ef6\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"\\u91c7\\u7528\\u4e86ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e0b\\u8f7d\\u7ba1\\u7406\\u63a7\\u5236\",\"icon\":\"television\",\"content\":\"\\u540e\\u53f0\\u53ef\\u4ee5\\u63a7\\u5236\\u6240\\u6709\\u4e0b\\u8f7d\\u4efb\\u52a1\\uff0c\\u53ef\\u4ee5\\u9650\\u5236\\u6700\\u5927\\u4e0b\\u8f7d\\u6587\\u4ef6\\uff0c\\u8d85\\u8fc7\\u9650\\u5236\\u7acb\\u5373\\u505c\\u6b62\\u4e0b\\u8f7d\\uff0c\\u9ed8\\u8ba4\\u4e3a10GB\\uff0c\\u672c\\u7ad9\\u8bbe\\u7f6e\\u4e3a1GB\\u3002\"},{\"title\":\"\\u5206\\u4eab\\u4fdd\\u5b58\",\"icon\":\"share-alt\",\"content\":\"\\u7528\\u6237\\u7684\\u4e0b\\u8f7d\\u5b8c\\u6210\\u540e\\u53ef\\u4ee5\\u76f4\\u63a5\\u5206\\u4eab\\u51fa\\u53bb\\uff0c\\u9ed8\\u8ba4\\u5e26\\u67094\\u4f4d\\u5206\\u4eab\\u5bc6\\u7801\\u3002\\u5176\\u4ed6\\u7528\\u6237\\u8f93\\u5165\\u5bc6\\u7801\\u540e\\u5373\\u53ef\\u67e5\\u770b\\uff0c\\u767b\\u5165\\u540e\\u53ef\\u4ee5\\u76f4\\u63a5\\u4fdd\\u5b58\\u5230\\u81ea\\u5df1\\u7684\\u7a7a\\u95f4\\uff0c\\u4e14\\u4e0d\\u6d88\\u8017\\u4efb\\u52a1\\u989d\\u3002\"},{\"title\":\"\\u89c6\\u9891\\u8f6c\\u7801\",\"icon\":\"cubes\",\"content\":\"\\u9ed8\\u8ba4\\u5c06\\u4e0b\\u8f7d\\u6587\\u4ef6\\u4e2d\\u7684\\u89c6\\u9891\\u8f6c\\u6362\\u4e3a720P\\u7684MP4\\u683c\\u5f0f\\uff0c\\u53ef\\u4ee5\\u5728\\u7ebf\\u76f4\\u63a5\\u64ad\\u653e\\u3002\\u8f6c\\u7801\\u4e0eCPU\\u6027\\u80fd\\u76f4\\u63a5\\u6302\\u94a9\\uff0cCPU\\u6027\\u80fd\\u8d8a\\u5f3a\\u8f6c\\u7801\\u901f\\u5ea6\\u8d8a\\u5feb\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":0,\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\"}}}}}','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(4,0,10,'simpleboot3','文章列表页','portal/List/index','portal/list','文章列表模板文件','{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(5,0,10,'simpleboot3','单页面','portal/Page/index','portal/page','单页面模板文件','{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(6,0,10,'simpleboot3','搜索页面','portal/search/index','portal/search','搜索模板文件','{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}',NULL),(7,1,0,'simpleboot3','模板全局配置','public/Config','public/config','模板全局配置文件','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":\"0\",\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}',NULL),(8,1,1,'simpleboot3','导航条','public/Nav','public/nav','导航条模板文件','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"YunBT\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL);
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
-- Table structure for table `yunbt_ticket`
--

DROP TABLE IF EXISTS `yunbt_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunbt_ticket` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '0 open 1 middle 2 highly 3 enmergcy  >10000000  close:time',
  `main` int(11) NOT NULL DEFAULT '0',
  `admin` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT '10',
  `del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_ticket`
--

LOCK TABLES `yunbt_ticket` WRITE;
/*!40000 ALTER TABLE `yunbt_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `yunbt_ticket` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user`
--

LOCK TABLES `yunbt_user` WRITE;
/*!40000 ALTER TABLE `yunbt_user` DISABLE KEYS */;
INSERT INTO `yunbt_user` VALUES (1,1,0,0,1546479337,17,17,0.00,1544898484,1,'admin','###c90ef2bdf103731c58420fcbf7f929be','admin','admin@yunbt.net','','avatar/20181219/1ade078116d733216ccc5129b73e14c3.jpeg','','117.136.68.129','','',NULL,1505,25,1000,''),(2,2,0,0,1545187759,0,0,0.00,1545187759,2,'','###c90ef2bdf103731c58420fcbf7f929be','','233@yunbt.com','','','','117.136.67.209','','',NULL,10,3,0,''),(3,2,0,0,1545207738,0,0,0.00,1545207738,2,'','###c90ef2bdf103731c58420fcbf7f929be','','ada@123.com','','','','117.82.228.125','','',NULL,10,1,0,''),(4,2,0,0,1545212956,0,0,0.00,1545212956,2,'','###c90ef2bdf103731c58420fcbf7f929be','','abc@a.com','','','','117.136.68.132','','',NULL,10,0,0,''),(5,2,0,-28800,1546440034,39,39,0.00,1545213021,2,'','###15fca98958f73c03d2d628ec718eec5c','','a@a.aa','','avatar/20181220/9dff9aed7bcabeac4a28afb0d5d10546.jpg','我喜欢小基友，欢迎大家来插我????/开心','222.93.140.250','','',NULL,30,30,20,''),(6,2,0,0,1545213401,0,0,0.00,1545213401,2,'','###6bd451c50acc7277e450d25066c20a93','','4592248@gmail.com','','','','183.195.32.146','','',NULL,10,1,0,''),(7,2,0,0,1545213513,0,0,0.00,1545213513,2,'','###c09ecb99b47eab882319610d73e7a2de','','pndj@163.com','','','','180.140.11.90','','',NULL,10,0,0,''),(8,2,0,0,1545221391,0,0,0.00,1545221391,2,'','###4377a26513f4947c8e6139ca0b8f010d','','admin@bili.bi','','','','182.143.17.151','','',NULL,10,0,0,''),(9,2,0,0,1545224095,0,0,0.00,1545224095,2,'','###d652f458a9b7badef476fa7569c98b2a','','www@guaitan.cn','','','','117.136.24.202','','',NULL,10,1,0,''),(10,2,0,0,1545231815,0,0,0.00,1545231815,2,'','###d652f458a9b7badef476fa7569c98b2a','','gao369345486@gmail.com','','','','221.192.180.116','','',NULL,10,0,0,''),(11,2,0,0,1545233159,0,0,0.00,1545233159,2,'','###184780349b11c787f8daad2c7964f912','','tvv42925@iencm.com','','','','140.112.7.188','','',NULL,10,1,0,''),(12,2,0,0,1545272221,0,0,0.00,1545272221,2,'','###91e939b2a9b49cd345df340367405573','','5167189@qq.com','','','','60.170.195.5','','',NULL,20,0,10,''),(13,2,0,0,1545301767,0,0,0.00,1545301767,2,'','###d652f458a9b7badef476fa7569c98b2a','','2371431704@qq.com','','','','139.180.199.191','','',NULL,10,2,0,''),(14,2,0,0,1545317118,0,0,0.00,1545317118,2,'','###339969308974485696236eee3c7f5584','','409874865@qq.com','','','','60.186.193.136','','',NULL,10,2,0,''),(15,2,0,0,1545321135,0,0,0.00,1545321135,2,'','###d652f458a9b7badef476fa7569c98b2a','','123@qq.com','','','','172.247.32.15','','',NULL,10,0,0,''),(16,2,0,0,1545354611,0,0,0.00,1545354611,2,'','###0ca6eefe80413f18c685aea358c583a6','','a1@a.com','','','','119.4.252.5','','',NULL,10,0,0,''),(17,2,0,0,1545359558,0,0,0.00,1545359558,2,'','###0b2ae020388bb38732af00d4a775ab65','','535799967@qq.com','','','','222.64.216.17','','',NULL,10,1,0,''),(18,2,0,0,1545445271,1,1,0.00,1545369860,2,'','###7619f07f11c76d186074333eb7aaf966','','hitwhdc@163.com','','','','45.114.7.215','','',NULL,10,1,0,''),(19,2,0,0,1545602745,0,0,0.00,1545388086,2,'','###81b377d2ba6be753fcc24d9509c7b1e6','','739489038@qq.com','','','','139.207.54.224','','',NULL,10,1,0,''),(20,2,0,0,1545392131,0,0,0.00,1545392131,2,'','###e54f6fcd38a8728b26acdc2ea4c7783a','','1158705239@qq.com','','','','221.224.17.58','','',NULL,10,1,0,''),(21,2,0,0,1545398012,0,0,0.00,1545398012,2,'','###a7767f6ade017cb083bc9147b5020935','','test9999@gmail.com','','','','218.164.96.245','','',NULL,10,1,0,''),(22,2,0,0,1545462425,0,0,0.00,1545462425,2,'','###a8f094b6ebb078400487031d49f5013e','','957437092@qq.com','','','','113.77.200.22','','',NULL,10,0,0,''),(23,2,0,0,1545575235,0,0,0.00,1545575235,2,'','###130157c0a41fc5efac3d56dcfb93d669','','jinbuqi@qq.com','','','','144.0.136.212','','',NULL,10,2,0,''),(24,2,0,0,1545662854,0,0,0.00,1545575263,2,'','###1cf2eb42c97d3b5d934e070e734c0ca0','','2459848472@qq.com','','','','47.52.189.202','','',NULL,10,2,0,''),(25,2,0,0,1545575370,0,0,0.00,1545575370,2,'','###f00532962cd1c4f23c5a3b36e81a2483','','bioket@qq.com','','','','112.114.106.40','','',NULL,10,1,0,''),(26,2,0,0,1545575387,0,0,0.00,1545575387,2,'','###858c346df4838e10c2a9262f50d78983','','1@qq.com','','','','149.129.105.141','','',NULL,10,0,0,''),(27,2,0,0,1546075747,2,2,0.00,1545576220,2,'','###d2fb3425f5f7e3fa0985c9df665afbc0','','luowei253@163.com','','','','35.194.210.29','','',NULL,10,7,0,''),(28,2,0,0,1545576721,0,0,0.00,1545576721,2,'','###e4b73957b475509e8442d6f1acd2dbf4','','858856780@qq.com','','','','45.76.244.10','','',NULL,10,1,0,''),(29,2,0,0,1545580663,0,0,0.00,1545580663,2,'','###0901b11156870dcf82c0a4048a61c97f','','17052978@qq.com','','','','59.175.89.132','','',NULL,10,0,0,''),(30,2,0,0,1545581131,0,0,0.00,1545581131,2,'','###e770639e8d57e09e5af223ad69a0e726','','777@syee.cc','','','','106.121.141.250','','',NULL,10,1,0,''),(31,2,0,0,1545585044,0,0,0.00,1545585044,2,'','###1e0952ec05fc73463194fb926462140a','','a@aol.c','','','','125.87.46.94','','',NULL,10,3,0,''),(32,2,0,0,1545586300,0,0,0.00,1545586300,2,'','###fce36dbe42e5528f84b8781e05a84824','','ipanel@qq.com','','','','101.205.83.50','','',NULL,10,4,0,''),(33,2,0,0,1545894335,1,1,0.00,1545588277,2,'','###d652f458a9b7badef476fa7569c98b2a','','nickzhenyu@gmail.com','','','','174.6.94.51','','',NULL,10,1,0,''),(34,2,0,0,1545589122,0,0,0.00,1545589122,2,'','###80f49f4cbd060900d33bcf12503489f6','','fulilavip@gmail.com','','','','3.0.57.152','','',NULL,10,1,0,''),(35,2,0,0,1545903974,2,2,0.00,1545590949,2,'','###2c66f7a33e97560488b00fe58f773dd5','','610336999@qq.com','','','','117.172.55.171','','',NULL,10,1,0,''),(36,2,0,0,1545591506,0,0,0.00,1545591506,2,'','###6e3a700fa4da5e72e3390ecefd300287','','2362909959@qq.com','','','','178.128.6.76','','',NULL,10,0,0,''),(37,2,0,0,1545591698,0,0,0.00,1545591698,2,'','###cc052f1d59e8e508cb21dc5fbd4be6b7','','233123184@sina.com','','','','38.143.9.166','','',NULL,10,1,0,''),(38,2,0,0,1545601222,0,0,0.00,1545601222,2,'','###64b3f02c14eb43045bb84fecdee85581','','525969666@qq.com','','','','119.176.43.224','','',NULL,10,1,0,''),(39,2,0,0,1545605365,0,0,0.00,1545605365,2,'','###5f3a7fe5012abfaa56c0386e33a33353','','1057119439@qq.com','','','','117.136.79.143','','',NULL,10,1,0,''),(40,2,0,0,1545612114,0,0,0.00,1545612114,2,'','###d5b6ba637077ab7fd9d42af59e40db6c','','450251159@qq.com','','','','220.190.77.209','','',NULL,10,2,0,''),(41,2,0,0,1545612446,0,0,0.00,1545612446,2,'','###c6895766715dbf14d83a83dd102f7c28','','qinmenghua@gmail.com','','','','182.150.30.52','','',NULL,10,0,0,''),(42,2,0,0,1545613216,0,0,0.00,1545613216,2,'','###f8db2721e9a9d3cf96fb7af94a899abe','','wish430780@163.com','','','','119.6.97.191','','',NULL,10,0,0,''),(43,2,0,0,1545614235,0,0,0.00,1545614235,2,'','###d652f458a9b7badef476fa7569c98b2a','','939163156@qq.com','','','','183.48.246.248','','',NULL,10,0,0,''),(44,2,0,0,1545614273,0,0,0.00,1545614273,2,'','###84dcf6781faed19e11ab3fc48107ed66','','yoyoyoy@qq.com','','','','163.53.197.200','','',NULL,10,0,0,''),(45,2,0,0,1545885056,1,1,0.00,1545614621,2,'','###d105fd480805f60a3cd2064b76d24267','','805392647@qq.com','','','','115.151.141.154','','',NULL,10,1,0,''),(46,2,0,0,1545615416,0,0,0.00,1545615416,2,'','###a9fa98f75798068831abec9e4b243f4f','','1094716949@qq.com','','','','115.60.8.49','','',NULL,10,0,0,''),(47,2,0,0,1545626169,0,0,0.00,1545626169,2,'','###fe3fd58cb752d7396ff24c75fa0516a2','','2419625950@qq.com','','','','117.177.174.81','','',NULL,10,0,0,''),(48,2,0,0,1545628528,0,0,0.00,1545628528,2,'','###d97550ff3566fb94a402b9796529e044','','1965867890@qq.com','','','','223.104.188.146','','',NULL,10,1,0,''),(49,2,0,0,1545630930,0,0,0.00,1545630930,2,'','###61f31b14107e1d3c961db058fcb44a77','','dc.stone@outlook.com','','','','47.88.231.70','','',NULL,10,3,0,''),(50,2,0,0,1545660618,0,0,0.00,1545660618,2,'','###36cbe2735f61795375f2be327301c890','','1469311121@qq.com','','','','120.229.253.171','','',NULL,10,0,0,''),(51,2,0,0,1545749150,2,2,0.00,1545702032,2,'','###e54f6fcd38a8728b26acdc2ea4c7783a','','z1158zsp@gmail.com','','','','221.224.17.58','','',NULL,10,3,0,''),(52,2,0,0,1545703712,0,0,0.00,1545703712,2,'','###c2152911108a8016bb1f78b311ab9e22','','574114295@qq.com','','','','125.68.189.85','','',NULL,10,0,0,''),(53,2,0,0,1545703836,0,0,0.00,1545703836,2,'','###5f3a4583144920429f64b8de010a6763','','pkpkgtr@gmail.com','','','','107.148.246.122','','',NULL,10,0,0,''),(54,2,0,0,1545716870,0,0,0.00,1545716870,2,'','###f5af56f821502c39208df6b8b3404150','','2534172622@qq.com','','','','117.136.66.82','','',NULL,10,0,0,''),(55,2,0,0,1545720741,0,0,0.00,1545720741,2,'','###5250ecb6021126d46e9b4d900aa1dda3','','mr_cao@163.com','','','','49.92.87.117','','',NULL,10,0,0,''),(56,2,0,0,1545721667,0,0,0.00,1545721667,2,'','###1b930736162cf8701b73f828512b2536','','qwaszx88888@gmail.com','','','','107.174.233.170','','',NULL,10,3,0,''),(57,2,0,0,1545722211,0,0,0.00,1545722211,2,'','###cec14635afc718a1dfbd9e579912dff5','','220161471@seu.edu.cn','','','','121.249.15.108','','',NULL,10,0,0,''),(58,2,0,0,1546440309,6,6,0.00,1545732560,2,'','###c90ef2bdf103731c58420fcbf7f929be','','baidu@baidu.com','','avatar/20181226/ce3fc9b1dd7990ef8604ec57bfd85611.jpg','','222.93.140.250','','',NULL,10,8,0,''),(59,2,0,0,1545733961,0,0,0.00,1545733961,2,'','###8f79e7e49bf9e218c01a1a375134912a','','737325934@qq.com','','','','182.141.177.128','','',NULL,10,0,0,''),(60,2,0,0,1545884350,5,5,0.00,1545737628,2,'','###21af1ccdee2856b484fb03e634dff657','','53103660@qq.com','','','','115.206.214.223','','',NULL,10,5,0,''),(61,2,0,0,1545752544,0,0,0.00,1545752544,2,'','###ff639e11e2f036d3158e22a0503774e9','','2935229226@qq.com','','','','125.120.156.12','','',NULL,10,2,0,''),(62,2,0,0,1545755475,0,0,0.00,1545755475,2,'','###320fab847e85122b76cb436ce46ba04c','','likecryboy@gmail.com','','','','222.223.141.151','','',NULL,10,2,0,''),(63,2,0,0,1545760340,1,1,0.00,1545760217,2,'','###8065e878ac34534a8342307155ed67ed','','614100496@qq.com','','','','43.243.85.18','','',NULL,10,1,0,''),(64,2,0,0,1545788314,0,0,0.00,1545788314,2,'','###9e4bd56f2f72f83f586db624999b22e5','','chinapao@live.cn','','','','10.192.83.2','','',NULL,10,0,0,''),(65,2,0,0,1545800745,0,0,0.00,1545800745,2,'','###d652f458a9b7badef476fa7569c98b2a','','81280@163.com','','','','119.182.183.0','','',NULL,10,0,0,''),(66,2,0,0,1545801774,0,0,0.00,1545801774,2,'','###bb0f30501a3d1bf1004d802402b39af7','','hzjackq@gmail.com','','','','183.156.100.189','','',NULL,10,1,0,''),(67,2,0,0,1545805101,0,0,0.00,1545804598,2,'','###d652f458a9b7badef476fa7569c98b2a','','211111@qq.com','','','','112.15.221.163','','',NULL,10,2,0,''),(68,2,0,0,1545805896,0,0,0.00,1545805896,2,'','###8883f43a6bac4f57cc9afd50050f9ec6','','hyear@126.com','','','','42.185.70.103','','',NULL,10,0,0,''),(69,2,0,0,1545817829,0,0,0.00,1545808475,2,'','###d652f458a9b7badef476fa7569c98b2a','','danielzi@qq.com','','','','121.32.77.106','','',NULL,10,1,0,''),(70,2,0,0,1545812566,0,0,0.00,1545812566,2,'','###499b0abfcb8d3057e14cbfbbf4522cbb','','897257036@qq.com','','','','14.127.248.1','','',NULL,10,0,0,''),(71,2,0,0,1545817200,0,0,0.00,1545817200,2,'','###889a8f85a1940abf12af314fd2c23597','','1012102786@qq.com','','','','121.33.145.240','','',NULL,10,2,0,''),(72,2,0,0,1545817415,0,0,0.00,1545817415,2,'','###d652f458a9b7badef476fa7569c98b2a','','abc@abc.com','','','','117.159.145.162','','',NULL,10,1,0,''),(73,2,0,0,1545823352,0,0,0.00,1545823352,2,'','###c8c3d745a024bf6160eeb6a4f3f6f1e1','','doniwettete-3622@yopmail.com','','','','222.161.158.21','','',NULL,10,1,0,''),(74,2,0,0,1545823654,0,0,0.00,1545823654,2,'','###f0e55e62fa12686c21e7cfae67513be4','','ryan@wjb.com','','','','45.127.187.175','','',NULL,10,0,0,''),(75,2,0,0,1545824211,0,0,0.00,1545824211,2,'','###d1883c35597ef848c06d51722d52962e','','373809550@qq.com','','','','116.24.64.233','','',NULL,10,1,0,''),(76,2,0,0,1545831480,0,0,0.00,1545831480,2,'','###1c260367feb97963194710e2e226d542','','1255220442@qq.com','','','','220.202.239.208','','',NULL,10,0,0,''),(77,2,0,0,1545886837,0,0,0.00,1545886837,2,'','###eecef2d62c7256f7bf66853676616e06','','bayes@live.jp','','','','202.101.72.63','','',NULL,10,0,0,''),(78,2,0,0,1545898280,0,0,0.00,1545898280,2,'','###c90ef2bdf103731c58420fcbf7f929be','','jsdlcc@qq.com','','','','120.86.88.253','','',NULL,10,0,0,''),(79,2,0,0,1545898762,0,0,0.00,1545898762,2,'','###19b3e3d78e593bf70998083291452c1a','','nichen24@gmail.com','','','','112.64.29.30','','',NULL,10,1,0,''),(80,2,0,0,1545911467,1,1,0.00,1545911254,2,'','###05f5cdcd7d666c8e1b0836ae0682519b','','1719472077@qq.com','','','','113.200.204.70','','',NULL,10,1,0,''),(81,2,0,0,1545912625,0,0,0.00,1545912009,2,'','###42de1c073199c717240a6646d7c7ae3a','','1225347117@qq.com','','','','112.96.192.229','','',NULL,10,1,0,''),(82,2,0,0,1545931208,0,0,0.00,1545931208,2,'','###3759858cf45bc1600f59a874bc88ff3f','','nniu12503@gmail.com','','','','119.28.49.22','','',NULL,10,2,0,''),(83,2,0,-28800,1545959751,1,1,0.00,1545959612,2,'','###9e4776ab5314510933322dcb624e6956','share1223','429044767@qq.com','https://share1223.com/','','','180.158.129.210','','',NULL,10,1,0,''),(84,2,0,0,1545993585,0,0,0.00,1545993585,2,'','###500234f282cce1cb899ee6fedeac6f7e','','qweqew@QQ.com','','','','115.223.143.60','','',NULL,10,4,0,''),(85,2,0,0,1546015564,0,0,0.00,1546015564,2,'','###4966a6657122ec50b8080165210af912','','1478882500@qq.com','','','','114.87.223.79','','',NULL,10,2,0,''),(86,2,0,0,1546063007,1,1,0.00,1546062905,2,'','###6a5f9e6761400842da85da4fb1720c8c','','988620@qq.com','','','','113.101.87.78','','',NULL,10,2,0,''),(87,2,0,0,1546093234,0,0,0.00,1546093234,2,'','###9deca92bab00c4aa9ed20eb91c922d03','','x@xx.xxx','','','','114.46.160.121','','',NULL,10,1,0,''),(88,2,0,0,1546155965,0,0,0.00,1546155965,2,'','###cea6c4bb26dab1535d9171321063fc70','','sdu_liujian@foxmail.com','','','','58.194.168.220','','',NULL,10,0,0,''),(89,2,0,0,1546156147,0,0,0.00,1546156147,2,'','###e225eb820f79ffbd684f121b9866f2a5','','zhuixin8@qq.com','','','','223.74.177.251','','',NULL,10,1,0,''),(90,2,0,0,1546428173,0,0,0.00,1546158556,2,'','###0d0a2ac0afb4583b970760c1c1568c55','','1034806482@qq.com','','','','36.17.72.254','','',NULL,10,0,0,''),(91,2,0,0,1546412081,0,0,0.00,1546412081,2,'','###d652f458a9b7badef476fa7569c98b2a','','86190192@qq.com','','','','101.86.117.240','','',NULL,10,1,0,''),(92,2,0,0,1546413662,0,0,0.00,1546413662,2,'','###23ca1734be8f5c7bb207014f525d0f3d','','eshao2010@qq.com','','','','27.42.247.9','','',NULL,10,2,0,''),(93,2,0,0,1546413963,0,0,0.00,1546413963,2,'','###fc4ce3d52d87dd344ee3ca3d65ef5380','','loctest@lo.com','','','','14.124.234.141','','',NULL,10,1,0,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_score_log`
--

LOCK TABLES `yunbt_user_score_log` WRITE;
/*!40000 ALTER TABLE `yunbt_user_score_log` DISABLE KEYS */;
INSERT INTO `yunbt_user_score_log` VALUES (1,1,1545033958,'login',1,1),(2,1,1545063604,'login',1,1),(3,1,1545123596,'login',1,1),(4,1,1545138237,'login',1,1),(5,1,1545190199,'login',1,1),(6,5,1545213144,'login',1,1),(7,5,1545218640,'login',1,1),(8,5,1545222504,'login',1,1),(9,5,1545226391,'login',1,1),(10,5,1545230144,'login',1,1),(11,5,1545233902,'login',1,1),(12,5,1545238765,'login',1,1),(13,5,1545242427,'login',1,1),(14,5,1545250015,'login',1,1),(15,5,1545265146,'login',1,1),(16,5,1545269046,'login',1,1),(17,5,1545272654,'login',1,1),(18,5,1545277059,'login',1,1),(19,5,1545283137,'login',1,1),(20,5,1545297442,'login',1,1),(21,5,1545317112,'login',1,1),(22,5,1545320964,'login',1,1),(23,5,1545346790,'login',1,1),(24,5,1545352316,'login',1,1),(25,5,1545358470,'login',1,1),(26,5,1545366038,'login',1,1),(27,5,1545374730,'login',1,1),(28,5,1545380684,'login',1,1),(29,5,1545385078,'login',1,1),(30,5,1545396951,'login',1,1),(31,18,1545444857,'login',1,1),(32,5,1545452104,'login',1,1),(33,1,1545465590,'login',1,1),(34,1,1545494129,'login',1,1),(35,5,1545601484,'login',1,1),(36,5,1545610758,'login',1,1),(37,5,1545615971,'login',1,1),(38,5,1545624491,'login',1,1),(39,35,1545630390,'login',1,1),(40,27,1545634513,'login',1,1),(41,45,1545646583,'login',1,1),(42,5,1545652061,'login',1,1),(43,5,1545659264,'login',1,1),(44,5,1545666870,'login',1,1),(45,1,1545697512,'login',1,1),(46,1,1545701723,'login',1,1),(47,1,1545719380,'login',1,1),(48,58,1545734148,'login',1,1),(49,60,1545737915,'login',1,1),(50,51,1545744463,'login',1,1),(51,51,1545749118,'login',1,1),(52,5,1545753985,'login',1,1),(53,63,1545760340,'login',1,1),(54,60,1545783153,'login',1,1),(55,5,1545787894,'login',1,1),(56,58,1545793060,'login',1,1),(57,60,1545798779,'login',1,1),(58,5,1545802705,'login',1,1),(59,5,1545806403,'login',1,1),(60,5,1545813664,'login',1,1),(61,5,1545817325,'login',1,1),(62,60,1545826670,'login',1,1),(63,58,1545834879,'login',1,1),(64,58,1545874644,'login',1,1),(65,58,1545878538,'login',1,1),(66,60,1545884292,'login',1,1),(67,33,1545894335,'login',1,1),(68,35,1545903974,'login',1,1),(69,80,1545911467,'login',1,1),(70,83,1545959751,'login',1,1),(71,58,1545964411,'login',1,1),(72,1,1545979578,'login',1,1),(73,86,1546063007,'login',1,1),(74,27,1546075747,'login',1,1),(75,1,1546156924,'login',1,1),(76,1,1546406978,'login',1,1),(77,1,1546417525,'login',1,1),(78,1,1546424725,'login',1,1),(79,1,1546437549,'login',1,1),(80,1,1546475977,'login',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_user_token`
--

LOCK TABLES `yunbt_user_token` WRITE;
/*!40000 ALTER TABLE `yunbt_user_token` DISABLE KEYS */;
INSERT INTO `yunbt_user_token` VALUES (1,1,1560582836,1545030836,'5a34d345daaa95bfe369bb0bf161f1d603e47182d139603fb37303ebacce9a94','web'),(2,2,1560739759,1545187759,'f33240c1a9dd170b0b11648b5b5311d4c49a9e95983c554aacd0e9ca83e8c7ef','web'),(3,3,1560759739,1545207739,'b90fec202808350926dd287c8c019cc2f08563fe949f35a1a462d8672fa9ca7e','web'),(4,4,1560764956,1545212956,'c556afa234e7b80598ffc985852dc712f841ea1c0ae8c59596b181470649cfe2','web'),(5,5,1560765022,1545213022,'c9ea9e77742e9a4792c2c80f50d6d32d9defdb4462679783f33742e22b5cffe7','web'),(6,6,1560765401,1545213401,'60f7412a5edbb63cf511064cd0702866d6cc17457ccdd40763cd39f181f3fd57','web'),(7,7,1560765513,1545213513,'65282d43b48c54e63458e06cba520aed8f200a3adcf6a98e47b1a47854ac7cdc','web'),(8,8,1560773391,1545221391,'8c96847b8e7faaec56c8bcdd0dfe52640f44efe44df17fc2fe9926593c61baa6','web'),(9,9,1560776096,1545224096,'9ebbfa09c5df959ee803b9c9718e90b1275d4d3d2b2672cb2e2ba5b4c5addfff','web'),(10,10,1560783815,1545231815,'6068888f05c7a507b2babad353928c7f51d68a8ba86e07eb1bf7174e17fc99aa','web'),(11,11,1560785159,1545233159,'e630f6e8cf85e3e4386c8428f74986572b3a70a36cde829025f63410d52b5ecc','web'),(12,12,1560824221,1545272221,'176a9ead7399cf9136142a977d57d8aa1e1a00d2dc2499f19af4ccfcc3fcbcc3','web'),(13,13,1560853767,1545301767,'37050746592bf6b63f08227a383006270f2a34c0062ac8e6a628e9f6868bd327','web'),(14,14,1560869118,1545317118,'a047635920f9edd2c3613c8fabfe2930d32ed454a359b2fc49369ec0dec4076d','web'),(15,15,1560873136,1545321136,'202cb81cd59ecdbd0a7fb3428553ce5141a9bc83d7540529aac5d7f7a41ee777','web'),(16,16,1560906611,1545354611,'0b425771888c1136ff88f0848bd967b9418c419c7f29fb2c289899cc55f78d93','web'),(17,17,1560911558,1545359558,'1b09e26636fb79b4414e177f0218ce630276551757e153985900e900029fa2ba','web'),(18,18,1560921860,1545369860,'5c0b827a0b831cf7ad3297d5456494b73198f0437590882b254683becd31ef0b','web'),(19,19,1560940087,1545388087,'4451ef0fd9715e14694d48900e7b5611eb3732b91f00b09a7eb5a08b4a2a247a','web'),(20,20,1560944131,1545392131,'467b3332797872149302a87202d378cb4ea25db865209937f0f1a6021b024fea','web'),(21,21,1560950013,1545398013,'15bee7b6d9fb75bb5e8062bae89aa18f138aa91d570af2cdb3367549588b113d','web'),(22,22,1561014425,1545462425,'fd97abc3410ae966b10759b7feccb599a2ebddcd322aa286c711214ec96db960','web'),(23,23,1561127235,1545575235,'ff8235d2cebb74958e9c549974c6aa977e505e9da39437778e3c0f2ab7b13106','web'),(24,24,1561127263,1545575263,'3c0bd708f69cdffb190a8cc780c42fdf67b97778dd2834bb2e775dc7b619073f','web'),(25,25,1561127370,1545575370,'799c1767d52197a5be2ab2bd45119a5d1e82af0caf9185a4369f6b3ee4075feb','web'),(26,26,1561127387,1545575387,'38e3cc0b8f7aad8f46e7e3391855e086e72da30999c07ef6413864c6153e07fe','web'),(27,27,1561128220,1545576220,'76e69d52c3ccf41253e95d6b60d78ac09c840b76e22dead76f6d9dbbcc583b45','web'),(28,28,1561128721,1545576721,'82e516e18b90da5568b8e0dbc5f3baab3f896898e7fa76af874d1f4741c7beed','web'),(29,29,1561132663,1545580663,'4ebbe9b3582c0c98b295c1f4f898a89b32b3fa224549a5086da0b087bcc59eb0','web'),(30,30,1561133131,1545581131,'cea83231268f9109a37dac111a00fbfa4b823d4b87b8a8ac3ddc17fb9754b430','web'),(31,31,1561137044,1545585044,'c2ad2d0da96b6019f41ac5926f1e9855520fa9210799d84ffc722dc64ed4a524','web'),(32,32,1561138300,1545586300,'4f5792a7a60a23de4e6629810d5328d45099fe3014ecb8596b069bf177409e7d','web'),(33,33,1561140277,1545588277,'10ad52e3f6a87cf8a75a734b33decdf8b28363672c59dfd4b8a59e08a67f27fe','web'),(34,34,1561141122,1545589122,'85064f4a5be372894d643d4885a8b1204a61378ce3e89d754e15d1b6607ec16f','web'),(35,35,1561142949,1545590949,'689103c15b25bdf528c3b1670a87658225dfd8852386498652554ded678191b6','web'),(36,36,1561143506,1545591506,'c16723fb14adb30593afeb10bda99e8f165c42244dde949048cb3053237553c7','web'),(37,37,1561143698,1545591698,'37ad2181d19b8de15f85d2dc537a48858b6b406410ef5ed4a75b79b8a1f17d9a','web'),(38,38,1561153222,1545601222,'b295ad4babeef31aaf61c8641c80c5f27c31825e27416cf7353e6e3f6839f94b','web'),(39,39,1561157366,1545605366,'c2738455064c0f161463a77942d87d4f773a5ef3934b8cd55601d87a86b3bc90','web'),(40,40,1561164114,1545612114,'f6dd546fa1798ff95781f037909ae3bf698845e31957ca9173cb351d87d959af','web'),(41,41,1561164446,1545612446,'f8a1b703ed2060633e4981d44cfac29a989c5bdfc32e19ea3b69495fcc269fcf','web'),(42,42,1561165216,1545613216,'d33dee38d30c705473e82d76423307283e69b70bc4ff3d5eccb86cbbd277f337','web'),(43,43,1561166235,1545614235,'25d6c453a3150429da8f8356d0623f8067c5b7890c77bdfb8cdba2e1843b4acb','web'),(44,44,1561166273,1545614273,'2da51795d0be01b97402dc5c89d26f3866e5382dfae9856d2b2aaa3ee5a3fee3','web'),(45,45,1561166621,1545614621,'d2a30615373f5f083400e9c03aee158addb85a437b21edd8750d3cc3da934fd8','web'),(46,46,1561167416,1545615416,'0c06f044cc525d2a5ba7c320048e1a884d6bd03dba3ef72d249c56edabd76d1d','web'),(47,47,1561178169,1545626169,'76aa72e029dadf068d98ef5c02a950a24df11557e87d140e04f808b271ab48b4','web'),(48,48,1561180528,1545628528,'9ca2cc17cc22ca5f2dcd6287a27aabce5f209f39fd702172167d66332ca301e2','web'),(49,49,1561182930,1545630930,'d5a6709b933caa44b48ce514eaf91dd4558c839caa34db9cbae3e646aa9c6b93','web'),(50,50,1561212618,1545660618,'2a8ce5bd1fbe1e1d2dc702c3ab66a0c44b3ec85a6b432e76a3520db77b403361','web'),(51,51,1561254032,1545702032,'0cf391d3dd763aea42ff724097e5afb311bb8397fd0bf51fd927f07307b4ed47','web'),(52,52,1561255712,1545703712,'8332bac4131dcaa9f9fdbca6a82d4967fa08d3609bbce8b96137133e2eaf5dae','web'),(53,53,1561255836,1545703836,'a209bb5dc3ea06033637f76989e997e183d4e4585c907919dc1dc597966ed21e','web'),(54,54,1561268870,1545716870,'df8d8d2d8c8e96aabceb3873501b0d63789e07e067e086a077f421747020915a','web'),(55,55,1561272741,1545720741,'680cd317de51801f894a8dbab1d714e6b0c08537ba56fee7699854772d8853db','web'),(56,56,1561273667,1545721667,'97147421a1b7fd81e8e68d96ab111e88d4530e3927fb36af70b235fe099d82c5','web'),(57,57,1561274211,1545722211,'133ac4ffaf0665ada59c4c65fee73b45656927a65fb6a5afd3019987c4be0590','web'),(58,58,1561284560,1545732560,'7b30c55bd6fc971bf7e3b261828f2471aacb776fe54c3f6cdeec9f8ad840c567','web'),(59,59,1561285961,1545733961,'149401ffbb9dc4bf6bdc678e522d8a35aa583847dfae837c2ef505e69d57817e','web'),(60,60,1561289628,1545737628,'b673df8960c2c2b8ca558225dedfb1ba17d6bb15f710cad061f60c35e341a694','web'),(61,61,1561304544,1545752544,'2188c117529de7cf52683ebe3e3fdabf09b310a2d62f3c5a9ddce0eb8b522018','web'),(62,62,1561307475,1545755475,'2217cd8983002766058138aa53a73190b22f7fd7803eda4927782eb31451f083','web'),(63,63,1561312217,1545760217,'7893c6166f68d525f2ca111f6d92f9ce041d4eef7731a6e4e376afb51d27bbd3','web'),(64,64,1561340314,1545788314,'cb165e7f3ce2b7020f914796671bf2f92960d00d76030e7426a0093b96bf5ed2','web'),(65,65,1561352745,1545800745,'0cd05ea56f50756128dfab87cc8f47515894fd5bb355b9a9b569bd8c8ca3b9b9','web'),(66,66,1561353774,1545801774,'408f58663121d6037ec3476ecc9b32ab47cc3b19c4ec7f408f379104964a0ef0','web'),(67,67,1561356598,1545804598,'f2ddc8c8f35aca6973addd0a9dcba689d6b0971122e8e3e91b5ce61c105b5edd','web'),(68,68,1561357896,1545805896,'6a4d1a8fef941d626e8e3470a2bd93e2e1fb8feb5abc0c356c9dd23560ed727e','web'),(69,69,1561360475,1545808475,'6412db6d96ea8673852db99ec0d1c2878ea19dae7b95775bb7746120a85e5b45','web'),(70,70,1561364566,1545812566,'72c334deaefb432484e029334a291de31219c8406fa1e109bd27fbd3866d343f','web'),(71,71,1561369200,1545817200,'73e8446d27400ec125fdaf8e3e461fc96c6744f7a9145d683aaa28b74d792b45','web'),(72,72,1561369415,1545817415,'029993cb09449d2423db151d3f11c4ac5c2983cc986ef6382268f72500c7d1ba','web'),(73,73,1561375352,1545823352,'0040c137d754747e454aab520f2e131bfdcaf81f699d987f316015bbb5bb3c25','web'),(74,74,1561375654,1545823654,'8343a9c763c025c2db2786f0da7538d8bbcd841442ffde8437ad9fbf5d1517b8','web'),(75,75,1561376211,1545824211,'65a77f1c178e54c57a8d041feca6b1ecd801fb8b43767a19e5d4a5dd8516ebd3','web'),(76,76,1561383480,1545831480,'e85fd0c23f63736580cb4649e0d640a16e28fe456e221d2df960bbc92457c477','web'),(77,77,1561438837,1545886837,'47e74044ddc8efb69d33b9f204b561810057cf9842306d0605db4fa92a0547e8','web'),(78,78,1561450280,1545898280,'1c3cbc22b468e40f18cbca5c93b527fee7ae434b760d10e60a66530c9fa3f612','web'),(79,79,1561450762,1545898762,'41cc107820cb0cb486a18908255e34311270a8f36b6c4bd7fcad3c514e6ad755','web'),(80,80,1561463254,1545911254,'2d4fc72227d0ca2b0e7bc522e6e228663153d8fb7ec781d182bba07d2642a3ed','web'),(81,81,1561464009,1545912009,'60585e11bc88c2d78a2c0681bdf9c967381b4bf28fcb472b8b501297a4a6aacc','web'),(82,82,1561483208,1545931208,'b631b82f1ad19432b0a64d76c6eadc521e730447b2f79bea2324586e47b43543','web'),(83,83,1561511612,1545959612,'0a956fddcb904df340e902d7e6a67dfe45fba12aff16d6745e965b27bb9cbe42','web'),(84,84,1561545585,1545993585,'e6c7888c6ad98ec577e30e94bceba9d3a21946cdc1a7a185e8a656de25fc9825','web'),(85,85,1561567564,1546015564,'789d18d237fcb197554084b24e574e1e44e75afab0e47d46679e859508f81c4b','web'),(86,86,1561614905,1546062905,'3b98ac21866784757ca955df3deb66409b62f9e97402184073dd72becad46c54','web'),(87,87,1561645234,1546093234,'b1c848e36652194d5defffd7f66a594cd752bc2aee8f4e6596bc936fadc53540','web'),(88,88,1561707965,1546155965,'9259bca5396ced9ac8aec07e4866ee2bbca20ff6bc31f957e9d6597d7f588a44','web'),(89,89,1561708147,1546156147,'8b5ccdbf53c1b7446ee0883d8bfb3e0453b2ed2dd7efcd45b328c0dc1ce1a5a4','web'),(90,90,1561710556,1546158556,'8dbe3c2ade880b6c7790ef465516a383c3b16874ecb019e51b0ecb0a7e3211b8','web'),(91,91,1561964081,1546412081,'a4502939230ecc748d051b75fae913080215ae6a1ebc75115161c72862c90126','web'),(92,92,1561965662,1546413662,'636937f93a5845c96a9266dd63f2355a9c3549cb254cb64277e2ecd0b0f80a29','web'),(93,93,1561965963,1546413963,'ded313d78870f16315359e5d59596181b51d1e63728ca2f8bba926b6d071541b','web');
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
  `sm3u8` int(11) NOT NULL DEFAULT '0',
  `m3u8` varchar(256) NOT NULL,
  `em` int(11) NOT NULL DEFAULT '0',
  `del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunbt_vf`
--

LOCK TABLES `yunbt_vf` WRITE;
/*!40000 ALTER TABLE `yunbt_vf` DISABLE KEYS */;
INSERT INTO `yunbt_vf` VALUES (2,3574,'/file/video/c6420dacc5403175a93293f46b594f06.mp4','[梦蓝字幕组]CrayonshinChan 蜡笔小新[2018.11.16][982][帮忙打包&爷爷来了哦][HDTV][GB_JP][MP4].mp4',129214948,1545500917,1545500917,'/file/video/c6420dacc5403175a93293f46b594f06.mp4.mp4',89214948,3,'',1546425725,'/file/ts/728895854e862013b81d91bc04b3e876',0,0),(3,3575,'/file/video/a9923b09d935bc4391eb76b218cd6169.mp4','[SAO Alicization][11][GB][HEVC][1080P].mp4',276942028,1545503821,1545500917,'/file/video/a9923b09d935bc4391eb76b218cd6169.mp4.mp4',176942028,0,'',1546425903,'/file/ts/3a83c3ed6950e6b86c8e7518eb0defaa',0,0),(4,3576,'/file/video/7a4b8602b0105f2e1b4d5a78adb6df55.mp4','[JYFanSub][Goblin Slayer][10][BIG5][1080P][MP4].mp4',315291760,1545530152,1545530882,'/file/video/7a4b8602b0105f2e1b4d5a78adb6df55.mp4.mp4',102834643,0,'',1546426082,'/file/ts/ac138b6e79af50e4740e1722d54d37fc',0,0),(5,3577,'/file/video/379ccd073a3b4af30b495cce51964121.mp4','[Nekomoenai.sub][Kimi no Suizou wo Tabetai][Movie][1080p][CHT].mp4',1039768796,1545534421,1545537374,'/file/video/379ccd073a3b4af30b495cce51964121.mp4.mp4',380503996,0,'',1546426270,'/file/ts/a7b0a51f909546fe7211285980b6434a',0,0),(6,3578,'/file/video/38b39fd4ed8e6810c42c1842be7b6113.mp4','[风车字幕组][名侦探柯南剧场版第22部][零的执行人][BDRip][简体][MP4][1080P].mp4',2323530328,1545537481,1545540998,'/file/video/38b39fd4ed8e6810c42c1842be7b6113.mp4.mp4',569475673,0,'',1546426460,'/file/ts/b5452f1dceaa8f44ffc1b698d54ed2a1',0,0),(7,3579,'/file/video/a8fd581c0f9b763ccbc0b2b39970a937.mp4','[DMG] 劇場版 さよならの朝に約束の花をかざろう [BDRip][AVC_AAC][720P][CHS](AEDF05A6).mp4',1776299530,1545541081,1545543927,'/file/video/a8fd581c0f9b763ccbc0b2b39970a937.mp4.mp4',461222666,0,'',1546426639,'/file/ts/b32c8215e21478e8c2b92309a3d3bdae',0,0),(8,3580,'/file/video/3f62ce40930cef98ffacf51ef8f3ed60.mp4','[Nekomoe kissaten][Liz and the Blue Bird／Liz to Aoi Tori][720p][x264_aac][chs][rev].mp4',753540270,1545544021,1545545915,'/file/video/3f62ce40930cef98ffacf51ef8f3ed60.mp4.mp4',324999995,0,'',1546426817,'/file/ts/cb3eee0192c364953ad960d917423cb0',0,0),(9,3582,'/file/video/579634d87a8356c899d531fec619c827.mp4','毒液：致命守护者.Venom.2018.HD720P.X264.AAC.English.CHS-ENG.Mp4Ba.mp4',2356511401,1545618602,1545622041,'/file/video/579634d87a8356c899d531fec619c827.mp4.mp4',693357074,0,'',1546427009,'/file/ts/28e646ad8e4ffc88f2c7487467fb9bb3',0,0),(29,3583,'/file/video/85870e3022bcad6ba4b62afd2e6f6a8c.mp4','Chloe Amour.mp4',417576702,1545614041,1545615134,'/file/video/85870e3022bcad6ba4b62afd2e6f6a8c.mp4.mp4',188521932,0,'',1546427170,'/file/ts/e857fbdd3ea46943c3ba15d5fb4bb59b',0,0),(30,3583,'/file/video/3c188c2888482ede81b7cc389fddb883.mp4','Destiny Love.mp4',356957097,1545615301,1545616311,'/file/video/3c188c2888482ede81b7cc389fddb883.mp4.mp4',160043775,0,'',1546427350,'/file/ts/369dfa5e68e967df86cc726d97032feb',0,0),(31,3583,'/file/video/8514f071dd00b5430c2babda094b8884.mp4','Cynthia Thomas.mp4',391578626,1545616441,1545617504,'/file/video/8514f071dd00b5430c2babda094b8884.mp4.mp4',175535358,0,'',1546427530,'/file/ts/f9ab87197a5eaf9f42a80bc004406be2',0,0),(32,3583,'/file/video/2669496f8cf2243e9301f16d370a43f7.mp4','Dillion Harper.mp4',339492958,1545617581,1545618495,'/file/video/2669496f8cf2243e9301f16d370a43f7.mp4.mp4',159750502,0,'',1546427707,'/file/ts/5654ce2917c55a2f1ba0b9e1aaaee4e5',0,0),(33,3583,'/file/video/433b1ef3cece2baf07a1ea08d9ff99ca.mp4','Morning Pussy.mp4',445381003,1545622141,1545623451,'/file/video/433b1ef3cece2baf07a1ea08d9ff99ca.mp4.mp4',220537221,0,'',1546427890,'/file/ts/b90155ada098a32c647a5ec41ee25dc4',0,0),(34,3585,'/file/video/87a88f4d24a83379b9b8db23c4410364.mp4','2c0489df4afac53adcb84d9ee7a02b58.mp4',161407283,1545623521,1545624397,'/file/video/87a88f4d24a83379b9b8db23c4410364.mp4.mp4',135111462,0,'',1546428066,'/file/ts/382614f18008a09d41846558b1619749',0,0),(35,3592,'/file/video/9e501c03877f69b4ad768780c9448fd9.mp4','情.劫.肉肉版Chinggip 1993.mp4',1252299615,1545624481,1545630315,'/file/video/9e501c03877f69b4ad768780c9448fd9.mp4.mp4',1138205515,0,'',1546428272,'/file/ts/41c2a52bcdb2ddda06a385275f68d15c',0,0),(36,3593,'/file/video/93ea4d87d445fd88fe8b30d210e2dcd1.mp4','台湾UU聊天室爆操极品美女激情裸聊视频-uux29.com.mp4',21808611,1545630421,1545630469,'/file/video/93ea4d87d445fd88fe8b30d210e2dcd1.mp4.mp4',8579055,0,'',0,'0',0,1545716105),(37,3593,'/file/video/c31615d56792889c7b498e71915a80ee.mp4','hjd2048.com_181204-19.mp4',620856235,1545630541,1545632543,'/file/video/c31615d56792889c7b498e71915a80ee.mp4.mp4',254079954,0,'',1546428428,'/file/ts/284340107c9eba573706528af70f5971',0,0),(38,3593,'/file/video/426c111091f556dc59a5419e20dfc199.mp4','MG电子游戏-www.334477.com-注册免费送77元.mp4',7942052,1545716941,1545716966,'/file/video/426c111091f556dc59a5419e20dfc199.mp4.mp4',6657855,0,'',0,'0',0,1545720982),(39,3593,'/file/video/cd0930b10b12a147f11a765276fea110.mp4','★★★★美女裸聊，免费试看请输入网址uu392.com ★★★★.mp4',20787728,1545632701,1545632740,'/file/video/cd0930b10b12a147f11a765276fea110.mp4.mp4',5963433,0,'',0,'0',0,1545716069),(40,3593,'/file/video/9df6ba43b977c9887432d0e209e8e874.mp4','裸聊直播,可以指揮潮吹表演 A57X.COM.mp4',20920967,1545632821,1545632890,'/file/video/9df6ba43b977c9887432d0e209e8e874.mp4.mp4',8075825,0,'',0,'0',0,1545721006),(41,3593,'/file/video/9f06dde4c67a9cdc5e35f82444cda8b1.mp4','hjd2048.com_181204-19-5.mp4',115673085,1545633001,1545634307,'/file/video/9f06dde4c67a9cdc5e35f82444cda8b1.mp4.mp4',228102119,0,'',1546428608,'/file/ts/5c12693e9097169c0e0635030bf22033',0,0),(42,3593,'/file/video/9651e7715a28b043fb334bf2f9bab8c0.mp4','奔驰宝马娱乐城-www.885522.com-注册免费送55元.mp4',8283991,1545634381,1545634404,'/file/video/9651e7715a28b043fb334bf2f9bab8c0.mp4.mp4',5535031,0,'',0,'0',0,1545720969),(43,3593,'/file/video/5434dcd924146d6d0025ef87060ab84b.mp4','美女荷官自拍被干vip1196.mp4',8048638,1545634441,1545634481,'/file/video/5434dcd924146d6d0025ef87060ab84b.mp4.mp4',6530394,0,'',0,'0',0,1545720993),(44,3594,'/file/video/ac0c4ab439232c94d9280fc812cdedba.mp4','[妈妈的咪呀!我来了.Young Mom 3.2015.WEB-DL.1080P.X264.AAC.CHT.mp4',2066344695,1545634562,1545637989,'/file/video/ac0c4ab439232c94d9280fc812cdedba.mp4.mp4',447011288,0,'',1546428798,'/file/ts/e2652eee94bc0efec37b787baf916307',0,0),(45,3598,'/file/video/d52a83448264c3a748cfea8edda48cf9.mkv','[TSKS][2018][Intimate Strangers][(1080P)][KO_CN].mkv',1849893547,1545638101,1545641720,'/file/video/d52a83448264c3a748cfea8edda48cf9.mkv.mp4',502559875,0,'',1546428980,'/file/ts/db4e2f104803b833e047da977081d7d1',0,0),(46,3601,'/file/video/628cb22e006b48002ae7048592d7caf4.mp4','[ThZu.Cc]SIRO-3641.mp4',1956091034,1545641821,1545644690,'/file/video/628cb22e006b48002ae7048592d7caf4.mp4.mp4',348294124,0,'',1546429155,'/file/ts/51d52e2801d9c9403e0cc9a843e44617',0,0),(47,3602,'/file/video/2a4d0d09389ef69be0e24bcf92b1e508.mp4','[ThZu.Cc]kmhr-057.mp4',4143252383,1545644821,1545651839,'/file/video/2a4d0d09389ef69be0e24bcf92b1e508.mp4.mp4',1025092229,0,'',1546429350,'/file/ts/354970a7dcfc89a6f81a07d0e6bb3a46',0,0),(48,3603,'/file/video/2e62e9395fb5dc26e6ba4b581d8c65c8.mp4','[ThZu.Cc]ABP-815.mp4',5901892530,1545651961,1545661144,'/file/video/2e62e9395fb5dc26e6ba4b581d8c65c8.mp4.mp4',1092561043,0,'',1546429533,'/file/ts/09e5beaa0cd257372e66cba6222b68dd',0,0),(49,3605,'/file/video/9ed6210bdc906b2895e1fb21158161dc.mp4','[ThZu.Cc]ABP-814.mp4',4624981483,1545661261,1545669157,'/file/video/9ed6210bdc906b2895e1fb21158161dc.mp4.mp4',1236159767,0,'',1546429713,'/file/ts/61c9330eedd862afccc131ae015aebf7',0,0),(50,3606,'/file/video/71312725b9fa88df3e4e381cdfab8a07.mp4','[ThZu.Cc]ABP-813.mp4',6173653561,1545669241,1545679306,'/file/video/71312725b9fa88df3e4e381cdfab8a07.mp4.mp4',1382465280,0,'',1546429897,'/file/ts/be5a7d41481898e67fd7abffd41a4fd6',0,0),(51,3607,'/file/video/6d332346987bddd7d68d6c4a64e64bd8.mp4','[ThZu.Cc]ABP-812.mp4',4808532621,1545679381,1545687414,'/file/video/6d332346987bddd7d68d6c4a64e64bd8.mp4.mp4',1145927033,0,'',1546430071,'/file/ts/cacf70abb3326b0a02d1540b8580ac03',0,0),(52,3608,'/file/video/e177d93c492aba4733600dae4c21f14f.mp4','[ThZu.Cc]juy-713.mp4',3631248133,1545687541,1545693195,'/file/video/e177d93c492aba4733600dae4c21f14f.mp4.mp4',690090283,0,'',1546430242,'/file/ts/ae4795f7b4ca60c8bd34274a4ef4bf13',0,0),(53,3611,'/file/video/a7a8bbbf476280dcc95e5ff2caa21400.mp4','台湾uu祼聊室，注册成为会员免费送50点，指挥妹子露波露B.mp4',17812417,1545693301,1545693354,'/file/video/a7a8bbbf476280dcc95e5ff2caa21400.mp4.mp4',6505469,0,'',0,'0',0,1545723397),(54,3611,'/file/video/4503bed677206ad4331fdee73fa0b72a.mp4','裸聊直播,可以指揮潮吹表演 A57X.COM.mp4',20920967,1545693421,1545693490,'/file/video/4503bed677206ad4331fdee73fa0b72a.mp4.mp4',8075825,0,'',0,'0',0,1545735681),(55,3611,'/file/video/113a01da3aafb6d6a0cfbbca0df9a127.mp4','美女荷官自拍被干vip1196.mp4',8048638,1545693601,1545693640,'/file/video/113a01da3aafb6d6a0cfbbca0df9a127.mp4.mp4',6530394,0,'',0,'0',0,1545720956),(56,3611,'/file/video/2ab7328ec9c526ab2769c323e60462a5.mp4','miae209-5.mp4',642314209,1545693721,1545700260,'/file/video/2ab7328ec9c526ab2769c323e60462a5.mp4.mp4',1074188647,0,'',1546430431,'/file/ts/e1ed784c376c2dd4dc3f453b1bfda3a4',0,0),(57,3611,'/file/video/e904a7308571167df4c035f3df8577da.mp4','hjd2048.com-0331miae209-h264.mp4',4696267264,1545722761,1545730943,'/file/video/e904a7308571167df4c035f3df8577da.mp4.mp4',1130489514,0,'',1546430613,'/file/ts/09567bdd6eb648a31b268329b24dbb4a',0,0),(58,3611,'/file/video/86d4d075b0dec9d2f68510d6543bdb0b.mp4','★★★★美女裸聊，免费试看请输入网址uu392.com ★★★★.mp4',20787728,1545708661,1545708700,'/file/video/86d4d075b0dec9d2f68510d6543bdb0b.mp4.mp4',5963433,0,'',1546430761,'/file/ts/40f76697790a48ac8472e0f35b3fecf5',0,0),(59,3589,'/file/video/1277c951dee3be5268a7ac146e607d62.avi','[HD]STAR-561.avi',2680174598,1545708781,1545716840,'/file/video/1277c951dee3be5268a7ac146e607d62.avi.mp4',1259871050,0,'',1546430974,'/file/ts/a1f3739698661008a64ad8066f64d944',0,0),(60,3619,'/file/video/19f098ee0dd3fbff5c43973b90191492.mkv','[电影天堂www.dy2018.com]无双HD国语中字.mkv',3099255685,1545717001,1545722636,'/file/video/19f098ee0dd3fbff5c43973b90191492.mkv.mp4',716281693,0,'',1546431143,'/file/ts/13b2186ce9f70cb79e0995f9917a6541',0,0),(61,3617,'/file/video/0a5c98c6c88eaee1b08e5f75b4a814b2.mkv','[电影天堂www.dy2018.com]神奇动物：格林德沃之罪HD中英双字.mkv',1595365459,1545731041,1545737731,'/file/video/0a5c98c6c88eaee1b08e5f75b4a814b2.mkv.mp4',685763386,0,'',1546431325,'/file/ts/60eb978d90b557834a747756ad62da1d',0,0),(62,3618,'/file/video/30a1c95692dc93e8d83f3c460204683f.mkv','[电影天堂www.dy2018.com]克隆人HD中字.mkv',1296431399,1545737821,1545740680,'/file/video/30a1c95692dc93e8d83f3c460204683f.mkv.mp4',510003482,0,'',1546431499,'/file/ts/a2270971c804f8eff0a9805fc8121fe8',0,0),(63,3631,'/file/video/ed304c180f5e3e85a252c07d40b91d3d.mp4','[Nekomoe kissaten][Steins;Gate 0][24END][GB][720P].mp4',123380449,1545740761,1545741283,'/file/video/ed304c180f5e3e85a252c07d40b91d3d.mp4.mp4',82782558,0,'',1546431666,'/file/ts/ca38efe56c4b3bc5f6f98da52bd1d2bd',0,0),(64,3630,'/file/video/2576c239922bd936fce0aa2451104edc.mp4','[JYFanSub][Steins;Gate Zero][02][GB_CN][HEVC][720p].mp4',108704233,1545741361,1545741976,'/file/video/2576c239922bd936fce0aa2451104edc.mp4.mp4',90401296,0,'',1546431846,'/file/ts/b14e1f378139ae8a2d672094f5a960cd',0,0),(65,3630,'/file/video/496b2f56302bb24335605c5c28869b06.mp4','[JYFanSub][Steins;Gate Zero][01][GB_CN][HEVC][720p].mp4',129879027,1545742081,1545742722,'/file/video/496b2f56302bb24335605c5c28869b06.mp4.mp4',104842951,0,'',1546432027,'/file/ts/345df45c4e241fcf53611408c9952cf7',0,0),(66,3630,'/file/video/ec982cab3fce53f600b509e6c551ff11.mp4','[JYFanSub][Steins;Gate Zero][07][GB_CN][HEVC][720p].mp4',81331540,1545742801,1545743369,'/file/video/ec982cab3fce53f600b509e6c551ff11.mp4.mp4',78736602,0,'',1546432206,'/file/ts/80ab85d51c4d85b9e784e571d8557629',0,0),(67,3630,'/file/video/135eaeee5d8a6c26ccc50984cbdf5d2f.mp4','[JYFanSub][Steins;Gate Zero][20][GB_CN][HEVC][720p].mp4',65808732,1545743461,1545743979,'/file/video/135eaeee5d8a6c26ccc50984cbdf5d2f.mp4.mp4',70010775,0,'',1546432386,'/file/ts/7cf6d55d0cc2941643a04c65fec521b4',0,0),(68,3630,'/file/video/599b53b66c8b424bc410cb44ffb4989f.mp4','[JYFanSub][Steins;Gate Zero][09][GB_CN][HEVC][720p].mp4',83287455,1545744061,1545744619,'/file/video/599b53b66c8b424bc410cb44ffb4989f.mp4.mp4',78741024,0,'',1546432566,'/file/ts/4639273c9b4bed78c2c3a71c47715a18',0,0),(69,3630,'/file/video/d603f3b11666ad5a4d344e5bdb3ef35b.mp4','[JYFanSub][Steins;Gate Zero][04][GB_CN][HEVC][720p].mp4',85158385,1545744721,1545745274,'/file/video/d603f3b11666ad5a4d344e5bdb3ef35b.mp4.mp4',79528759,0,'',1546432746,'/file/ts/496aaca59f734dac96a356b49c9e8997',0,0),(70,3630,'/file/video/51e9da191996de640ff2c0f61741e0ef.mp4','[JYFanSub][Steins;Gate Zero][16][GB_CN][HEVC][720p].mp4',69508355,1545745381,1545745918,'/file/video/51e9da191996de640ff2c0f61741e0ef.mp4.mp4',72824300,0,'',1546432925,'/file/ts/1e03431f18bc81d7c64450d46fc2844b',0,0),(71,3630,'/file/video/7ab31c9ffde199c9d8366945090317bb.mp4','[JYFanSub][Steins;Gate Zero][05][GB_CN][HEVC][720p].mp4',87488010,1545746041,1545746602,'/file/video/7ab31c9ffde199c9d8366945090317bb.mp4.mp4',82367988,0,'',1546433106,'/file/ts/8a752ec5d2639f0e081988433278a2ba',0,0),(72,3630,'/file/video/ebc404389b4efa7987523e07a6a78194.mp4','[JYFanSub][Steins;Gate Zero][19][GB_CN][HEVC][720p].mp4',71660122,1545746701,1545747263,'/file/video/ebc404389b4efa7987523e07a6a78194.mp4.mp4',77132478,0,'',1546433286,'/file/ts/1b0c1679586699a7c7e2f773df06d355',0,0),(73,3630,'/file/video/86ec92d29adec382be2bb9d30f365a59.mp4','[JYFanSub][Steins;Gate Zero][10][GB_CN][HEVC][720p].mp4',103391915,1545747361,1545747925,'/file/video/86ec92d29adec382be2bb9d30f365a59.mp4.mp4',83137430,0,'',1546433466,'/file/ts/834a8804a0b6c31b6ca6f056fc0f59c7',0,0),(74,3630,'/file/video/f5e12014cdc63932458e1fb4e903c266.mp4','[JYFanSub][Steins;Gate Zero][06][GB_CN][HEVC][720p].mp4',93154474,1545748021,1545748587,'/file/video/f5e12014cdc63932458e1fb4e903c266.mp4.mp4',84075070,0,'',1546433646,'/file/ts/c44dc44f0ee21721bfda4a05411634e7',0,0),(75,3630,'/file/video/6e768437c8a3a8fa059775b3b32d22c6.mp4','[JYFanSub][Steins;Gate Zero][11][GB_CN][HEVC][720p].mp4',76937139,1545748681,1545749246,'/file/video/6e768437c8a3a8fa059775b3b32d22c6.mp4.mp4',80288092,0,'',1546433826,'/file/ts/63c7bf705b2686f32ab4c93110fafd3f',0,0),(76,3630,'/file/video/16c328a9fbdcd4143e4cfb4a62bcfee7.mp4','[JYFanSub][Steins;Gate Zero][17][GB_CN][HEVC][720p].mp4',74656198,1545749342,1545749893,'/file/video/16c328a9fbdcd4143e4cfb4a62bcfee7.mp4.mp4',77138289,0,'',1546434006,'/file/ts/e87f2f8ba0bdec7440f1aba5c9a7af66',0,0),(77,3630,'/file/video/a661fba537fa5e559cf1047268718936.mp4','[JYFanSub][Steins;Gate Zero][08][GB_CN][HEVC][720p].mp4',76503056,1545750001,1545750541,'/file/video/a661fba537fa5e559cf1047268718936.mp4.mp4',74483808,0,'',1546434186,'/file/ts/c030426670d70c4d21dee4093036e59d',0,0),(78,3630,'/file/video/26bcfd49693d1a9d1c66956c4a86a36b.mp4','[JYFanSub][Steins;Gate Zero][12][GB_CN][HEVC][720p].mp4',90877186,1545750661,1545751183,'/file/video/26bcfd49693d1a9d1c66956c4a86a36b.mp4.mp4',73069514,0,'',1546434366,'/file/ts/3007e004a6f18a81541097f7e6ab96ae',0,0),(79,3630,'/file/video/1cc70da89740dbf4caffd58694e45679.mp4','[JYFanSub][Steins;Gate Zero][21][GB_CN][HEVC][720p].mp4',64351180,1545751261,1545751796,'/file/video/1cc70da89740dbf4caffd58694e45679.mp4.mp4',74395015,0,'',1546434546,'/file/ts/c37b578e32f38b866ef788c72efcd6c2',0,0),(80,3630,'/file/video/0f1de5a6bb285c2a7402ad655e254381.mp4','[JYFanSub][Steins;Gate Zero][15][GB_CN][HEVC][720p].mp4',78974990,1545751921,1545752457,'/file/video/0f1de5a6bb285c2a7402ad655e254381.mp4.mp4',76239222,0,'',1546434726,'/file/ts/863ef416e67aff8535bac31e1050417e',0,0),(81,3630,'/file/video/db01354f553f9ede69a8c077f2d24854.mp4','[JYFanSub][Steins;Gate Zero][23][GB_CN][HEVC][720p].mp4',79772010,1545752581,1545753198,'/file/video/db01354f553f9ede69a8c077f2d24854.mp4.mp4',89316014,0,'',1546434906,'/file/ts/d48bf3b2de62335911f905c1a4734923',0,0),(82,3630,'/file/video/8b427bb581824b3f21526d43e9948678.mp4','[JYFanSub][Steins;Gate Zero][13][GB_CN][HEVC][720p].mp4',88577779,1545753301,1545753863,'/file/video/8b427bb581824b3f21526d43e9948678.mp4.mp4',79548153,0,'',1546435086,'/file/ts/1bc6147a1189573f4f44830da8241278',0,0),(83,3630,'/file/video/6a8d26e02ed02587e4e6b5413e682e03.mp4','[JYFanSub][Steins;Gate Zero][03][GB_CN][HEVC][720p].mp4',110427038,1545753961,1545754546,'/file/video/6a8d26e02ed02587e4e6b5413e682e03.mp4.mp4',87685988,0,'',1546435266,'/file/ts/a5ea11babffeed9da4a9eac4c1b617c8',0,0),(84,3630,'/file/video/6627aafaf12823883b4bc2830fad5a48.mp4','[JYFanSub][Steins;Gate Zero][22][GB_CN][HEVC][720p].mp4',61651241,1545754621,1545755117,'/file/video/6627aafaf12823883b4bc2830fad5a48.mp4.mp4',67159965,0,'',1546435445,'/file/ts/750516ca54ea75244dd9e3a3dad75509',0,0),(85,3630,'/file/video/aba1bb9b724c0f7e4cef50341932e9d9.mp4','[JYFanSub][Steins;Gate Zero][14][GB_CN][HEVC][720p].mp4',77212436,1545755221,1545755770,'/file/video/aba1bb9b724c0f7e4cef50341932e9d9.mp4.mp4',75198481,0,'',1546435626,'/file/ts/0bd3968e265487a1418d0a1559877999',0,0),(86,3630,'/file/video/d04df6d2b5053364e9f6d16d44d3363f.mp4','[JYFanSub][Steins;Gate Zero][18][GB_CN][HEVC][720p].mp4',75439081,1545755881,1545756444,'/file/video/d04df6d2b5053364e9f6d16d44d3363f.mp4.mp4',79440689,0,'',1546435806,'/file/ts/b5f4bc09d5f068c55d8cbf427a235313',0,0),(87,3632,'/file/video/beeb0ea4dc7b14ee588df51a5d489c4e.mp4','[DMG] 冴えない彼女の育てかた 第07話「敵か味方か新キャラか」 [BDRip][AVC_AAC][720P][CHS](2CF5A55C).mp4',296221028,1545756541,1545757026,'/file/video/beeb0ea4dc7b14ee588df51a5d489c4e.mp4.mp4',83965744,0,'',1546435986,'/file/ts/486c81b2cb2d662a1517c4b3f3ff0bb1',0,0),(88,3632,'/file/video/44cd71949a44b21a835b467724d4bb91.mp4','[DMG] 冴えない彼女の育てかた♭ 第00話「恋と純情のサービス回」 [BDRip][AVC_AAC][720P][CHS](6E873BAB).mp4',297245212,1545757141,1545757699,'/file/video/44cd71949a44b21a835b467724d4bb91.mp4.mp4',91402933,0,'',1546436166,'/file/ts/4b9f13892640ada11622742029f08cfd',0,0),(89,3632,'/file/video/fc7fbe987ed38743b0458c27363aac4d.mp4','[DMG] 冴えない彼女の育てかた 第11話「伏線回収準備よし」 [BDRip][AVC_AAC][720P][CHS](5FB1C9F5).mp4',263529331,1545757801,1545758300,'/file/video/fc7fbe987ed38743b0458c27363aac4d.mp4.mp4',83754731,0,'',1546436346,'/file/ts/2fe8a0666837663726b64aa4c93201dc',0,0),(90,3632,'/file/video/e4890257661e2dab7ea5888fec6246f2.mp4','[DMG] 冴えない彼女の育てかた♭ 第02話「本気で本当な分岐点」 [BDRip][AVC_AAC][720P][CHS](0A6AAD97).mp4',274632620,1545758401,1545758943,'/file/video/e4890257661e2dab7ea5888fec6246f2.mp4.mp4',86494628,0,'',1546436526,'/file/ts/8cf264f2b791a27a3a7db1ffd4da405f',0,0),(91,3632,'/file/video/00e277f2ead8452c8b3639cffefec30c.mp4','[DMG] 冴えない彼女の育てかた♭ 第07話「リベンジまみれの新企画」 [BDRip][AVC_AAC][720P][CHS](58385664).mp4',303628945,1545759061,1545759627,'/file/video/00e277f2ead8452c8b3639cffefec30c.mp4.mp4',94081481,0,'',1546436706,'/file/ts/9e81def230b1da7da22e884d5a007ce0',0,0),(92,3632,'/file/video/b1debce5545051aedd505899d5f2f580.mp4','[DMG] 冴えない彼女の育てかた 第05話「すれ違いのデートイベント」 [BDRip][AVC_AAC][720P][CHS](A9ABE857).mp4',262118230,1545759721,1545760205,'/file/video/b1debce5545051aedd505899d5f2f580.mp4.mp4',83472656,0,'',1546436886,'/file/ts/c884114448bd1208d38823d64133ac81',0,0),(93,3632,'/file/video/f62f542cff47bf5818867f191145ad5a.mp4','[DMG] 冴えない彼女の育てかた 第08話「当て馬トラウマ回想モード」 [BDRip][AVC_AAC][720P][CHS](9F483248).mp4',304344568,1545760321,1545760823,'/file/video/f62f542cff47bf5818867f191145ad5a.mp4.mp4',93008122,0,'',1546437066,'/file/ts/491df6664af4e31e5b745b6e76b5d66f',0,0),(94,3632,'/file/video/19cd3331940f29223423d1c65898a438.mp4','[DMG] 冴えない彼女の育てかた♭ 第06話「雪に埋もれたマスターアップ」 [BDRip][AVC_AAC][720P][CHS](5C79FE66).mp4',279942139,1545760922,1545761458,'/file/video/19cd3331940f29223423d1c65898a438.mp4.mp4',87672807,0,'',1546437246,'/file/ts/ef7e40288c5d8e697389b109f1a9fdc1',0,0),(95,3632,'/file/video/b68c23d57f666ddd5be6ee65add64733.mp4','[DMG] 冴えない彼女の育てかた♭ 第10話「そして竜虎は神に挑まん」 [BDRip][AVC_AAC][720P][CHS](8A17EFAA).mp4',264242584,1545761581,1545762127,'/file/video/b68c23d57f666ddd5be6ee65add64733.mp4.mp4',83372117,0,'',1546437425,'/file/ts/fc8218a09ec246833fda4e8dbefdd7e7',0,0),(96,3632,'/file/video/c6b551cecf34d0177420b3171a3d6a7d.mp4','[DMG] 冴えない彼女の育てかた♭ 第09話「卒業式と超展開」 [BDRip][AVC_AAC][720P][CHS](8C5AD14D).mp4',275221351,1545762241,1545762770,'/file/video/c6b551cecf34d0177420b3171a3d6a7d.mp4.mp4',85632370,0,'',1546437606,'/file/ts/a680615db142c018a6234c975473a1d1',0,0),(97,3632,'/file/video/774ba4f998bf9a245c11ad4276d38042.mp4','[DMG] 冴えない彼女の育てかた 第04話「予算と納期と新展開」 [BDRip][AVC_AAC][720P][CHS](106A97B7).mp4',243682091,1545762841,1545763357,'/file/video/774ba4f998bf9a245c11ad4276d38042.mp4.mp4',89034822,0,'',1546437786,'/file/ts/fac966df55bc64164e374dbbf80abde5',0,0),(98,3632,'/file/video/90b013a85be4d9e902743039a5035630.mp4','[DMG] 冴えない彼女の育てかた♭ 第03話「初稿と二稿と大長考」 [BDRip][AVC_AAC][720P][CHS](7E722549).mp4',295784192,1545763441,1545763971,'/file/video/90b013a85be4d9e902743039a5035630.mp4.mp4',91354051,0,'',1546437966,'/file/ts/6bd1827cf207fbd8546254c6e9802d1e',0,0),(99,3632,'/file/video/fcf8c78ebd5b7281fc87258a4f02fa8f.mp4','[DMG] 冴えない彼女の育てかた♭ 第01話「冴えない竜虎の相見えかた」 [BDRip][AVC_AAC][720P][CHS](A8A88992).mp4',292592422,1545764101,1545764660,'/file/video/fcf8c78ebd5b7281fc87258a4f02fa8f.mp4.mp4',93530412,0,'',1546438146,'/file/ts/ac40a0799435132c245edee7baa1393f',0,0),(100,3632,'/file/video/81f2dc2c1c06742ab237161a562bce71.mp4','[DMG] 冴えない彼女の育てかた 第09話「八年ぶりの個別ルート」 [BDRip][AVC_AAC][720P][CHS](171E9FB4).mp4',294884753,1545764761,1545765281,'/file/video/81f2dc2c1c06742ab237161a562bce71.mp4.mp4',88705638,0,'',1546438326,'/file/ts/448daa7774d7be4e2eb3ec8f676bcf7f',0,0),(101,3632,'/file/video/7d387489db71295e74d78b52a48d5b4f.mp4','[DMG] 冴えない彼女の育てかた 第02話「フラグの立たない彼女」 [BDRip][AVC_AAC][720P][CHS](1A5476DE).mp4',250803781,1545765361,1545765840,'/file/video/7d387489db71295e74d78b52a48d5b4f.mp4.mp4',81588027,0,'',1546438506,'/file/ts/f5e12f6a29c97a5daf46ca4862cd40d3',0,0),(102,3632,'/file/video/69159270d956c4e20396248432a78f34.mp4','[DMG] 冴えない彼女の育てかた 第10話「思い出とテコ入れのメロディ」 [BDRip][AVC_AAC][720P][CHS](B181DE00).mp4',286130755,1545765961,1545766478,'/file/video/69159270d956c4e20396248432a78f34.mp4.mp4',87591965,0,'',1546438684,'/file/ts/8195ee3a99f47caa2e6e5ac5b2814d81',0,0),(103,3632,'/file/video/6f378ca7462e7156e9dba2b58bcebbb1.mp4','[DMG] 冴えない彼女の育てかた 第01話「間違いだらけのプロローグ」 [BDRip][AVC_AAC][720P][CHS](F36A9499).mp4',283674590,1545766561,1545767090,'/file/video/6f378ca7462e7156e9dba2b58bcebbb1.mp4.mp4',96078373,0,'',1546438866,'/file/ts/d6a2218cdf49cfb9f418c16863bbb90d',0,0),(104,3632,'/file/video/a5d8483e82743c20ed14e7a94eddd80b.mp4','[DMG] 冴えない彼女の育てかた♭ 第05話「締め切りが先か、覚醒が先か」 [BDRip][AVC_AAC][720P][CHS](BC86DD31).mp4',261719129,1545767161,1545767684,'/file/video/a5d8483e82743c20ed14e7a94eddd80b.mp4.mp4',81754876,0,'',1546439046,'/file/ts/670e15f8e8aae77d5eeb1ade02f3ef58',0,0),(105,3632,'/file/video/aa3405ae4b972078c903dc39573aaf7b.mp4','[DMG] 冴えない彼女の育てかた♭ 第11話「再起と新規のゲームスタート」 [BDRip][AVC_AAC][720P][CHS](F831C7C3).mp4',340885682,1545767761,1545768357,'/file/video/aa3405ae4b972078c903dc39573aaf7b.mp4.mp4',110457030,0,'',1546439226,'/file/ts/d5e6ea890503db2cc9e3ecf3fbe0a795',0,0),(106,3632,'/file/video/eea9510494d5cff33d00d44418bc625e.mp4','[DMG] 冴えない彼女の育てかた 第03話「クライマックスはリテイクで」 [BDRip][AVC_AAC][720P][CHS](20ECC79A).mp4',237619816,1545768481,1545768951,'/file/video/eea9510494d5cff33d00d44418bc625e.mp4.mp4',82994208,0,'',1546439406,'/file/ts/bec43cb31af1e0541389080049d41358',0,0),(107,3632,'/file/video/ea0ff962a8fe88e2bedefe78b78a526b.mp4','[DMG] 冴えない彼女の育てかた♭ 第08話「フラグを折らなかった彼女」 [BDRip][AVC_AAC][720P][CHS](41DB1C60).mp4',258308847,1545769081,1545769603,'/file/video/ea0ff962a8fe88e2bedefe78b78a526b.mp4.mp4',80867088,0,'',1546439586,'/file/ts/3047eef86b5ce5c874fca440af202843',0,0),(108,3632,'/file/video/1738074def9e92a1426269a6b088d303.mp4','[DMG] 冴えない彼女の育てかた 第00話「愛と青春のサービス回」 [BDRip][AVC_AAC][720P][CHS](1A59F566).mp4',350013059,1545769681,1545770243,'/file/video/1738074def9e92a1426269a6b088d303.mp4.mp4',109055681,0,'',1546439766,'/file/ts/1a364f3d8a6392edd2f46c7a5d249523',0,0),(109,3632,'/file/video/c649d280efd0276bcde662d8aac4408e.mp4','[DMG] 冴えない彼女の育てかた 第06話「二人の夜の選択肢」 [BDRip][AVC_AAC][720P][CHS](7FF8210F).mp4',287688742,1545770342,1545770870,'/file/video/c649d280efd0276bcde662d8aac4408e.mp4.mp4',89780367,0,'',1546439946,'/file/ts/746f3d597acf4c02f1394d1688ea04c1',0,0),(110,3632,'/file/video/11c292439da928cb5e9d4f9902022d20.mp4','[DMG] 冴えない彼女の育てかた 第12話「波乱と激動の日常エンド」 [BDRip][AVC_AAC][720P][CHS](006218CC).mp4',337856158,1545771001,1545771557,'/file/video/11c292439da928cb5e9d4f9902022d20.mp4.mp4',99472651,0,'',1546440126,'/file/ts/247ceab95ef682b3c7ffd4747af53c9f',0,0),(111,3632,'/file/video/0e028e9e0399848ceb1f85e683842de4.mp4','[DMG] 冴えない彼女の育てかた♭ 第04話「二泊三日の新ルート」 [BDRip][AVC_AAC][720P][CHS](A7AF668A).mp4',252936706,1545771661,1545772189,'/file/video/0e028e9e0399848ceb1f85e683842de4.mp4.mp4',84279939,0,'',1546440306,'/file/ts/880b0b48ceebd9ba4c2b5317973c6b96',0,0),(112,3634,'/file/video/375c0f47e2dd15422466dbebe0b1b085.mp4','VivThomas.18.12.21.Alyssa.Reece.And.Angelika.Greys.Warm.Down.XXX.SD.MP4-KLEENEX.mp4',217227687,1545772261,1545773174,'/file/video/375c0f47e2dd15422466dbebe0b1b085.mp4.mp4',155925982,0,'',1546440487,'/file/ts/b6266057851ee8119af9768348946253',0,0),(113,3643,'/file/video/255e801d93f4425974fb0469454bf337.mp4','度 娘 流 出 嬌 小 可 愛 的 學 院 美 女 和 男 友 啪 啪 男 的 用 淫 語 挑 逗 要 找 朋 友 一 起 操 她 邊 幹 邊 拍 淫 叫 太 深 了 不 要 了 別 拍 我.mp4',486063281,1545802441,1545803516,'/file/video/255e801d93f4425974fb0469454bf337.mp4.mp4',260207969,0,'',1546440677,'/file/ts/eb7f0b0b6eb5c63d771542d53dbd7cb9',0,0),(114,3650,'/file/video/626caa0a282b547f4fd33b071315f81d.mp4','6号线_x264.mp4',550104121,1545817741,1545818108,'/file/video/626caa0a282b547f4fd33b071315f81d.mp4.mp4',45510756,0,'',1546440842,'/file/ts/93932e18cf60f9b8690f2d3880bae667',0,0),(115,3657,'/file/video/0f728d2fb4d03fd4d7d92e56980f4428.mp4','081916_669 加勒比変態行為を断れない家出っ娘後編-....mp4',741850776,1545831421,1545834283,'/file/video/0f728d2fb4d03fd4d7d92e56980f4428.mp4.mp4',416886027,0,'',1546441038,'/file/ts/a9a3eda445a9b2c0d93bf682d45e3d9c',0,0),(116,3638,'/file/video/ebea9c83a4685463c14c820cf48820c3.mp4','pup_enza_480p_750-chkm8te.mp4',293294749,1545848881,1545851299,'/file/video/ebea9c83a4685463c14c820cf48820c3.mp4.mp4',444338277,0,'',1546441217,'/file/ts/b8f1d0b705b40c40f108b2fd878c52ef',0,0),(117,3659,'/file/video/faf7e222d0452bf7d5d457ffa11e4701.mp4','[Nekomoe kissaten][Liz and the Blue Bird／Liz to Aoi Tori][720p][x264_aac][chs][fin].mp4',753542918,1545875161,1545877087,'/file/video/faf7e222d0452bf7d5d457ffa11e4701.mp4.mp4',325050437,0,'',1546441400,'/file/ts/74bf55aac44cda3a357074ddd94f19ff',0,0),(118,3658,'/file/video/65df55a6924e6d45b100b06cbb054213.mp4','[DMG][I_Want_to_Eat_Your_Pancreas][MOVIE][720P][GB].mp4',1063955201,1545877201,1545879789,'/file/video/65df55a6924e6d45b100b06cbb054213.mp4.mp4',417078187,0,'',1546441580,'/file/ts/0f4660acf702d85c6e1c52083475837d',0,0),(119,3660,'/file/video/5643ebc7b0dce445098a137a114e45a1.mp4','[FLsnow][Sayoasa][AVC_AAC][720p][zh-Hans].mp4',852977778,1545879901,1545882418,'/file/video/5643ebc7b0dce445098a137a114e45a1.mp4.mp4',447903295,0,'',1546441762,'/file/ts/f078df1a7e0b82b9d5313a0e77970962',0,0),(120,3661,'/file/video/8beed43e42493e591c6cb341df5efa01.mp4','강남 스캔들.E01.181126.720p-NEXT.mp4',717981310,0,0,'/file/video/8beed43e42493e591c6cb341df5efa01.mp4.mp4',0,5,'',0,'0',0,0),(121,3609,'/file/video/70d5dc4faf8514a8181c765d67b743ea.mkv','[Airota&LoliHouse] Tonari no Kyuuketsuki-san - 12 [WebRip 1080p HEVC-yuv420p10 AAC ASSx2].mkv',217441944,1545892621,1545893345,'/file/video/70d5dc4faf8514a8181c765d67b743ea.mkv.mp4',68154408,0,'',1546441930,'/file/ts/1d43966f56abf5869ee17080f74a0a07',0,0),(122,3671,'/file/video/7fb7875b7602f678b747d5726edcac82.mp4','【看片请关注微信：悟恋】火王之千里同风09.mp4',363663738,1545995221,1545996512,'/file/video/7fb7875b7602f678b747d5726edcac82.mp4.mp4',191888430,0,'',1546442115,'/file/ts/27b8ff6db0838e051febdef5e228b088',0,0),(123,3669,'/file/video/92e9fbdc0ade1389eca423e9e5247204.mp4','闪电侠.The.Flash.S03E13.中英字幕.WEB-HR.AAC.1024X576.x264.mp4',423665325,1546008721,1546010301,'/file/video/92e9fbdc0ade1389eca423e9e5247204.mp4.mp4',261665231,0,'',1546442296,'/file/ts/bb108100c683c3b8bc5ef314f1d92bc3',0,0),(124,3675,'/file/video/4ab987e6c66384dad8aa3acc3f9d3a07.mp4','来电狂响TS.mp4',806126549,1546070101,1546075031,'/file/video/4ab987e6c66384dad8aa3acc3f9d3a07.mp4.mp4',866371517,0,'',1546442491,'/file/ts/c4e85c685a98d3921d219703a61c5949',0,0),(125,3679,'/file/video/03747720a6c383a870ce23f7a4b5d66f.mp4','国产最新流出美女如云的餐厅高级坐厕第7季多角度肉丝白领姐姐的小穴很有撸点.mp4',731226127,1546156861,1546158386,'/file/video/03747720a6c383a870ce23f7a4b5d66f.mp4.mp4',340805252,0,'',1546442655,'/file/ts/2e825d8d2528aa970374753d9047dbba',0,0),(126,3678,'/file/video/c2eab0ae7bcdcfbcb694524bcabd9005.mp4','z.nation.s05e13.720p.web.x264-tbs.chs.eng.mp4',845802337,1546320841,1546322636,'/file/video/c2eab0ae7bcdcfbcb694524bcabd9005.mp4.mp4',270338432,0,'',1546442836,'/file/ts/c374540f9f1c7ff0b717865c777bf1a9',0,0),(127,3680,'/file/video/97ca0ca9aef46ad519c5457af48ecb5b.mp4','[Youkoso Japari Park][11][GB][MP4][1080P].mp4',74643463,1546408071,1546408266,'/file/video/97ca0ca9aef46ad519c5457af48ecb5b.mp4.mp4',33439475,1,'',1546443003,'/file/ts/31b8f78f995ec9f7378482dd1ead7850',0,0),(128,3682,'/file/video/4d06c87ca6b61955d320fd4b3dd1a6bf.mp4','[Nekomoe kissaten][Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai][13END][720p][CHT].mp4',133360734,1546409691,1546410243,'/file/video/4d06c87ca6b61955d320fd4b3dd1a6bf.mp4.mp4',89792253,0,'',1546443190,'/file/ts/442005550297757bf22d9966675fafaa',0,0),(129,3683,'/file/video/bc7cc224b0828eaee8942433a4f2b29a.mp4','a.mp4',1225369,1546414321,1546414325,'/file/video/bc7cc224b0828eaee8942433a4f2b29a.mp4.mp4',727178,0,'',1546443361,'/file/ts/71c732437c35ec98a0cd3788a3242abb',0,0),(130,3686,'/file/video/9ebe520ed76dfb240c69aa2219c1c083.mp4','3059-土豪微信约某校性感漂亮的小美女酒店啪啪,自带黑丝,这美女可没少花银子啊.mp4',140053225,1546414801,1546415226,'/file/video/9ebe520ed76dfb240c69aa2219c1c083.mp4.mp4',92868937,0,'',1546443544,'/file/ts/ab5aed9c4e33db33e1008e82e85f08e6',0,0),(131,3686,'/file/video/5d5a9527147b1c493361a525168882cc.mp4','3062-网曝门事件 台湾极品性感女神嫩模Half9999不雅淫乱生活流出.mp4',25225687,1546415341,1546415406,'/file/video/5d5a9527147b1c493361a525168882cc.mp4.mp4',16207902,0,'',1546443723,'/file/ts/02183d1e2cb0208964a567ddea09a12b',0,0),(132,3686,'/file/video/f993e1dc7d8714c81a3fac00452b8c38.mp4','3058-汤不热网红极品嫩妹小鸟酱-小草莓蒙眼销魂口技唾液充足嘴当逼洞插.mp4',125135179,1546415461,1546415998,'/file/video/f993e1dc7d8714c81a3fac00452b8c38.mp4.mp4',70234045,0,'',1546443903,'/file/ts/16f3eb7d25a100a359ca6a53bddd4fd7',0,0),(133,3686,'/file/video/c0a7dfd0dc2cc65cb1e0ab1c278a63cc.mp4','3063-小姨子婚前最后一次跟我约啪，多套情趣衣服多体位满足我，呻吟浪叫不断，让我忍不住想射精.mp4',108825658,1546416121,1546416319,'/file/video/c0a7dfd0dc2cc65cb1e0ab1c278a63cc.mp4.mp4',56453918,0,'',1546444087,'/file/ts/ae0bdfe43d463216589de764de5c7de7',0,0),(134,3686,'/file/video/407b5c1d95d6cc064cb864f167d897bc.mp4','3061-网红美女小羚羊穿着厚黑丝约了一位胖大叔做爱.mp4',365011798,1546416421,1546417620,'/file/video/407b5c1d95d6cc064cb864f167d897bc.mp4.mp4',183212789,0,'',1546444266,'/file/ts/ba7f4eb2b164afb749260df61b0adfec',0,0),(135,3686,'/file/video/8ee1441e6adcd9d21e34eafb55c93986.mp4','3060-网红哆啦福利视频过生日KTV厕所啪啪啪扣逼舔JB洗手盆上操不要错过.mp4',124718242,1546417741,1546418102,'/file/video/8ee1441e6adcd9d21e34eafb55c93986.mp4.mp4',79607043,0,'',1546444444,'/file/ts/019a9908c7655d783836b1821e948601',0,0),(136,3688,'/file/video/fa4f740616fee80ffae72854e0ff8dfe.mp4','[SumiSora][Ao_Buta][13][GB][720p].mp4',212200119,1546418221,1546418791,'/file/video/fa4f740616fee80ffae72854e0ff8dfe.mp4.mp4',88782585,0,'',1546444630,'/file/ts/192b5970db8f64beb948c7ef6ca5631e',0,0),(137,3689,'/file/video/a679f829eb6440dd7f243df33a6019c9.mp4','[Comicat&KissSub][Goblin Slayer][12][720P][GB][MP4].mp4',223574159,1546418881,1546419553,'/file/video/a679f829eb6440dd7f243df33a6019c9.mp4.mp4',102339120,0,'',1546444805,'/file/ts/597a442454dab340df31279f439130b1',0,0),(138,3681,'/file/video/401c464bb1ec49f24625c5fccea86da7.mp4','[YUI-7][Yagate Kimi ni Naru][13END][GB][X264_AAC][720P].mp4',116820186,1546423801,1546424348,'/file/video/401c464bb1ec49f24625c5fccea86da7.mp4.mp4',84011456,0,'',1546444989,'/file/ts/6b55e3e15748f414b9d54dc3aad8ac7f',0,0);
/*!40000 ALTER TABLE `yunbt_vf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-03  9:45:08

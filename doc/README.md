### USAGE

#### Install Aria2

Debian


install Aria2 


```
apt-get install -y aria2
```

install screen

```
apt-get install -y screen
```

Aria2 config

```
mkdir /root/.aria2


wget http://webdir.cc/aria2.config /root/.aria2/aria2.config


wget http://webdir.cc/dht.dat /root/.aria2/dht.dat


echo '' > /root/aria2.session 

```

start up Aria2 

```
screen -dmS aria2 aria2c --enable-rpc --rpc-listen-all=true --rpc-allow-origin-all -c 
```

#### yunBT

5.3< PHP < 5.6

#####Database
Create database yunbt

import yunbt.sql

database config:

/Bt/Conf/config.php
```
<?php
return array(
	//'配置项'=>'配置值'
	 'DB_TYPE'      =>  'mysql',     // 数据库类型  
    'DB_HOST'      =>  'localhost',     // 服务器地址  
    'DB_NAME'      =>  'yunbt',     // 数据库名  =database name
    'DB_USER'      =>  'root',     // 用户名  =database username
    'DB_PWD'       =>  '',     // 输入安装MySQL时设置的密码  =database password
    'DB_PORT'      =>  '3306',     // 端口  
    'DB_PREFIX'    =>  'tr_',     // 数据库表前缀  
   // 'SHOW_PAGE_TRACE'=>True,
    'LAYOUT_ON'=>true,
    'LAYOUT_NAME'=>'Public/index'
);
?>
```
##### Directory 

website directory right

/uploads 777

/download 777

/Bt/Runtime 777


##### Refresh task

Debian crontab

```
crontab -e

```

Add a record
```
*/1 * * * * curl http://your_domain/index.php/Ondo/curl
```

##### Download setting
/index.php
```
 define("DO_SIZE",10);//max download file size;  
```
10 => 10GB

If the file is greater than 10GB will be deleted



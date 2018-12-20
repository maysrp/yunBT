# YunBT
***
基于ThinkCMS的YunBT的多用户下载程序，支持Magnet和HTTP下载。每个单独用户支持10个任务，默认下载文件最大为10GB，可以在后台修改。下载完成后用户可以直接查看下载的文件仅支持mp4文件在线播放。管理员可以添加用户的下载量及查看管理下载任务。  

暂不支持下载工具下载，可以在浏览器中下载，后续将添加  

测试站点:[yunbt](http://yunbt.w4.pw)
## 安装

### Aria2
安装Aria2  
`apt-get update && apt-get install -y aria2 `

`screen -dmS aria2 aria2c --enable-rpc --rpc-listen-all=true --rpc-allow-origin-all -c `

### PHP
php>7   
lnmp下php安装fileinfo插件  
lnmp1.4 安装php fileinfo扩展 方法  
- 第一步：在lnmp1.4找到php安装的版本  
使用命令 `tar   -jxvf   php-7.1.7.tar.bz2` 解压  
- 第二步： 在解压的php-7.1.7文件夹里找到fileinfo文件夹，然后使用命令 `cd  /home/xxx/lnmp1.4/src/php-7.1.7/ext/fileinfo`进入到fileinfo文件夹  
- 第三步：输入`/usr/local/php/bin/phpize` 得到数据  
- 第四步： 使用如下命令编译安装  
`./configure -with-php-config=/usr/local/php/bin/php-config`  
`make && make install`
   
- 第五步：再修改/usr/local/php/etc/php.ini  查找：extension = 再最后一个extension= 后面添加上extension = "fileinfo.so"   保存，执行`/etc/init.d/php-fpm restart` 重启。

### Nginx  

nginx修改fastcgi.conf配置  
>lnmp下该文件在 `/usr/local/nginx/conf/fastcgi.conf`  

把其中的  
```
#fastcgi_param PHP_ADMIN_VALUE "open_basedir=$document_root/:/tmp/:/proc/";
fastcgi_param PHP_ADMIN_VALUE "open_basedir=$document_root/../:/tmp/:/proc/";
```


Nginx 配置
>下文件为lnmp下的配置    

```
server
    {
        listen 80;
        #listen [::]:80;
        server_name yunbt.w4.pwt;
        index index.html index.htm index.php default.html default.htm default.php;
        root  /home/wwwroot/yunbt.w4.pw/public;

	location / {
   	if (!-e $request_filename) {
        	rewrite ^(.*)$ /index.php?s=/$1 last;
    	}
        	rewrite ^/file/(.*) /file.php?file=$1 last;
	}
	location /afile{
                internal;
                alias /home/wwwroot/yunbt.w4.pw/public/file;
        }
        #error_page   404   /404.html;

        # Deny access to PHP files in specific directory
        #location ~ /(wp-content|uploads|wp-includes|images)/.*\.php$ { deny all; }
	location ~* ^/(file|upload)/.*\.(php|php5)$ {  
		deny all; 
	}  
        include enable-php.conf;

        location ~ .*\.(gif|jpg|jpeg|png|bmp|swf)$
        {
            expires      30d;
        }

        location ~ .*\.(js|css)?$
        {
            expires      12h;
        }

        location ~ /.well-known {
            allow all;
        }

        location ~ /\.
        {
            deny all;
        }

        access_log  /home/wwwlogs/yunbt.w4.pw.log;
    }

```
### 数据库
创建数据库名yunbt  
用户名yunbt  
密码a123456  
数据库导入yunbt.sql  

数据库配置 data/conf/database.php

### 管理员
用户名 admin  
密码 a123456  

### cron

添加定时任务  
`crontab -e`

`*/1 * * * * curl http://yunbt.w4.pw/portal/cron/download`  
请替换其中yunbt.w4.pw 为你自己的域名

### 权限修改
修改data文件夹下的权限  

`chmod -R 777 data/`  
`chmod -R 777 public/`  


### 管理后台  
your_domain.com/admin  
目前功能：
- 添加用户下载量
- 下载管理
- 修改当前最大下载文件量［默认10GB］

## 未来计划
1. 分享功能
2. 用户转码功能
3. 积分功能
4. 邀请功能
5. 工具下载




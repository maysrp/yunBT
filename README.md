# YunBT
***
基于ThinkCMS的YunBT的多用户下载程序，支持Magnet和HTTP下载。每个单独用户支持10个任务，默认下载文件最大为10GB，可以在后台修改。下载完成后用户可以直接查看下载的文件仅支持mp4文件在线播放。管理员可以添加用户的下载量及查看管理下载任务。  

暂不支持下载工具下载，可以在浏览器中下载，后续将添加  

## 安装
php>7 mysql  
php安装fileinfo插件  

nginx修改fastcgi.conf配置  
```
#fastcgi_param PHP_ADMIN_VALUE "open_basedir=$document_root/:/tmp/:/proc/";
fastcgi_param PHP_ADMIN_VALUE "open_basedir=$document_root/../:/tmp/:/proc/";

```

Nginx 配置  
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




## 未来计划
1. 分享功能
2. 用户转码功能
3. 积分功能
4. 邀请功能
5. 工具下载




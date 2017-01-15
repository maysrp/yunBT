# YunBT


##安装

### Aria2 安装:

Debian 8系统 apt-get 安装
 
``` 
apt-get update && apt-get install -y aria2 
```

创建目录: 

```
mkdir /root/.aria2 
```

修改配置文件: 下载配置文件:http://webdir.cc/aria2.conf 

修改配置信息请参考:<a href="http://aria2c.com/usage.html">aria2.conf</a>

保存到刚刚的目录上 

```
wget http://webdir.cc/aria2.conf /root/.aria2/ 
```

下载http://webdir.cc/dht.dat dht.dat 到/root/.aria2/ 
```
wget http://webdir.cc/dht.dat /root/.aria2/ 
```
执行命令: 
```
echo '' > /root/aria2.session 
```
执行命令，让aria2启动: 
若没安装screen 请先
```
apt-get install -y screen 
```

在安装好screen后执行
```
screen -dmS aria2 aria2c --enable-rpc --rpc-listen-all=true --rpc-allow-origin-all -c 
```

### yunbt配置服务 

#### 数据库
yunbt.sql导入数据库

/Bt/Conf/config.php 数据库配置

### 权限配置

/uploads 777

/download 777

/Bt/Runtime 777

### 刷新设置

Debian

crontab -e

```
*/1 * * * * curl http://your_domain/index.php/Ondo/curl
```

## 使用

### 用户面板



### 管理面板
Apache
LNMP下需要pathinfo的支持。 

默认管理员:

admin

a123456

管理面板:

http://your_domain/index.php/Admin


## 问题/注意

1. 分享内容暂时管理员无法管理
2. 管理员无法群聊(可以设置一个admin的用户)
3. 用户与管理员分离，用户名可以为admin，需要管理员创建一个admin的用户。
4. 不会对此大改。[下版本将基于TP5的版本]
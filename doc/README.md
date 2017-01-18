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


#####Database
Create database yunbt

import yunbt.sql

database config:
/Bt/Conf/config.php


#####Website directory right

/uploads 777

/download 777

/Bt/Runtime 777


#####crontab

Debian

```
crontab -e

```

```
*/1 * * * * curl http://your_domain/index.php/Ondo/curl
```

##### Max download
```
 define("DO_SIZE",10);//max download file size;  
```
10 => 10GB







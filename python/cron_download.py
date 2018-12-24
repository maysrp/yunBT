import os
import xmlrpc.client
maxsize=10 #限制文件大小为10GB
maxsize=maxsize*1024*1024*1024
s = xmlrpc.client.ServerProxy('http://localhost:6800/rpc') 
def rmd(dir):
    if len(dir)>20:
        strs='rm -rf %s' %(dir,)
        os.system(strs)
def jugg(downloading):
    for i in downloading:
        fdir=i['dir']
        fsize=i['totalLength']
        if int(fsize)>maxsize:
            rmd(fdir)
stoping=s.aria2.tellStopped(0,1000)
downloading=s.aria2.tellActive()
waiting=s.aria2.tellWaiting(0,1000)
jugg(stoping)
jugg(downloading)
jugg(waiting)
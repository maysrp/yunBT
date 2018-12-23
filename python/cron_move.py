import os
import hashlib
import pymysql
import time
import shutil
import random

class filefind(object):
    rev=[]
    flist=[]
    fnew=[]
    ferr={}
    fdic={}
    fdir='/home/wwwroot/www.yunbt.net/public/file/video/'#修改到目录
    wdir='/file/video/'#修改到目录
    videoex=['.mp4','.mkv','.rm','.rmvb','.avi','.3gp','.webm','.wmv','flv']
    # 需要修改
    def filelist(self,filedir):
        filedir=str(filedir)
        dira=os.listdir(filedir)
        for i in dira:
            fd2=filedir+'/'+str(i)
            if os.path.isdir(fd2):
                self.filelist(fd2)
            else:
                self.flist.append(fd2)
    def video(self,file):
        (filename,extension)=os.path.splitext(file)
        ex=extension.lower()
        if ex in self.videoex:
            return filename+extension
        return None
    def achieve(self,dirn):
        self.filelist(dirn)
        for i in self.flist:
            if self.video(i):
                self.rev.append(i)
    def md5(self,info):
        info=str(info) 
        md=hashlib.md5()
        md.update(info.encode(encoding="utf8"))
        return md.hexdigest()
    def findname(self,name,file):
        myname=[name]
        (filename,extension)=os.path.splitext(file)
        fn=filename.lower()
        if fn in myname:
            return filename+extension
        return None
    def findext(self,ext,file):
        myext=[ext]
        (filename,extension)=os.path.splitext(file)
        ex=extension.lower()
        if ex in myext:
            return filename+extension
        return None
    def newdir(self):
        if len(self.rev):
            self.rev=list(set(self.rev))
            for i in self.rev:
                # rin=random.randint(1,1000)
                nfn=self.md5(i)
                (filename,extension)=os.path.splitext(i)
                nf=self.fdir+nfn+extension
                shutil.copyfile(i,nf)
                if os.path.getsize(i)==os.path.getsize(nf):
                    self.fnew.append(nf)
                    webdir=self.wdir+nfn+extension
                    self.fdic[i]=[os.path.getsize(i),webdir,os.path.basename(i)]
                    #成功移动就不用通知
                else:
                    self.ferr[i]=nf
    
db=pymysql.connect("localhost",'yunbt','a123456','yunbt')#Mysql修改 localhost 用户名 密码 数据库
cursor=db.cursor()
cursor.execute("SELECT * FROM `yunbt_magnet` WHERE `del` = '0' AND `udel` =0 AND `cmid` = 0 AND done=0")
data=cursor.fetchone()
if data:
    filedir=data[9]
    fm=filefind()
    fm.achieve(filedir)
    print(fm.rev)#符合的文件
    fm.newdir()#转移文件
    # print(fm.fdic)#转移文件列表
    # print(fm.ferr)#错误文件
    if not len(fm.ferr):
        print(len(fm.fdic))
        for m in fm.fdic:
            i=fm.fdic[m]
            print(i)
            # ['size','dir','original_name']
            SQLC="SELECT * FROM yunbt_vf WHERE file='%s' AND del='0'" % (i[1],)
            print(SQLC)
            cursor.execute(SQLC)
            jugg=cursor.fetchone()
            if not jugg:
                SQLI="INSERT INTO yunbt_vf(mid,file,filename,size,mp4) VALUES('%d','%s','%s','%d','%s')" % (data[0],i[1],i[2],i[0],i[1]+'.mp4')
                print(SQLI)
                cursor.execute(SQLI)
                db.commit()
        SQLU="UPDATE yunbt_magnet SET done=%d WHERE mid='%d' " % (int(time.time()),data[0])
        print(SQLU)
        cursor.execute(SQLU)
        db.commit()
        cursor.execute("SELECT * FROM yunbt_magnet WHERE mid='%d' " % (data[0],))
        coxn=cursor.fetchone()
        print(str(coxn[0])+':'+str(coxn[14]))
        # cursor.execute(SQLU)
        # db.commit()
db.close()


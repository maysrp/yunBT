import os
import pymysql
import time
import re

def disk_stat():  
    import os  
    hd={}  
    disk = os.statvfs("/")  
    hd['available'] = disk.f_bsize * disk.f_bavail  
    hd['capacity'] = disk.f_bsize * disk.f_blocks  
    hd['used'] = disk.f_bsize * disk.f_bfree  
    return hd  
def load_stat():  
    loadavg = {}  
    f = open("/proc/loadavg")  
    con = f.read().split()  
    f.close()  
    loadavg['lavg_1']=float(con[0])  
    loadavg['lavg_5']=float(con[1])  
    loadavg['lavg_15']=float(con[2])  
    loadavg['nr']=con[3]  
    loadavg['last_pid']=con[4]  
    return loadavg  
def fsize(size):
    if size>1024*1024*1024:
        rs=size/(1024*1024*1024)
        return str(round(rs,2))+"GB"
    elif size>1024*1024:
        rs=size/(1024*1024)
        return str(round(rs,2))+"MB"
    elif size>1024:
        rs=size/1024
        return str(round(rs,2))+"KB"
    else:
        return str(size)+"B"

ppp=fsize(1212312)
disk=disk_stat()
load=load_stat()
if disk['available']>1410241024:
    if load['lavg_1']<2.0:
        pid=os.getpid()
        db=pymysql.connect("localhost",'yunbt','a123456','yunbt')
        cursor=db.cursor()
        cursor.execute("SELECT * FROM yunbt_vf WHERE stime=0 AND del=0 AND dof<5")
        data=cursor.fetchone()
        if data:
            if data[9]<5:
                orid='/home/wwwroot/www.yunbt.net/public' #设置你的目录
                log=orid+'/file/log/'+str(data[0])+'.log'
                starttime=time.time()
                #SQL提取语句
                strx="ffmpeg -i %s -vcodec libx264 -crf 28 -y -vf \"scale=1280:-2\" -strict -2 -acodec aac -ab 128k %s 2>&1|tee %s" % (orid+str(data[2]),orid+str(data[7]),log)
                upd="UPDATE yunbt_vf SET stime='%d' WHERE vid='%d'" %(int(starttime),data[0])
                cursor.execute(upd)
                db.commit()
                os.system(strx)
                with open(log,'r') as f:
                    pre=f.read()
                    if re.findall(r'Invalid',pre):
                        upd="UPDATE yunbt_vf SET dof='%d',stime='0' WHERE vid='%d'" %(data[9]+1,data[0])
                        cursor.execute(upd)
                        db.commit()
                        db.close()
                        exit(0)
                    if re.findall(r'consecutive',pre):
                        done=int(time.time())
                        mp4=orid+str(data[7])
                        size=os.path.getsize(mp4)
                        upc="UPDATE yunbt_vf SET msize ='%s',done='%s' WHERE vid='%d'" % (size,int(time.time()),data[0])
                        print(upc)
                        mxc=cursor.execute(upc)
                        mxv=db.commit()
                        print(mxc)
                        print(mxv)
                    else:
                        upd="UPDATE yunbt_vf SET dof='%d',stime='0' WHERE vid='%d'" %(data[9]+1,data[0])
                        cursor.execute(upd)
                        db.commit()
                        db.close()
                        exit(0)
        pass
    else:
        pass
else:
    pass






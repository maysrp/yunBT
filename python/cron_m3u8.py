import hashlib
import os
import pymysql
import time
def md5(info):
    info=str(info) 
    md=hashlib.md5()
    md.update(info.encode(encoding="utf8"))
    return md.hexdigest()
db=pymysql.connect("localhost",'yunbt','a123456','yunbt')
cursor=db.cursor()
cursor.execute("SELECT * FROM yunbt_magnet_site WHERE mid=1")
sdata=cursor.fetchone()
cursor.execute("SELECT * FROM yunbt_vf WHERE stime>0 AND del=0 AND done>0 and sm3u8=0 and em=0")
data=cursor.fetchone()
if data and sdata[10]:
    orid='/home/wwwroot/www.yunbt.net/public' #设置你的目录
    mxm='/file/ts/'+str(md5(data[7]))
    mdir=orid+mxm #m3u8 video
    if not os.path.isdir(mdir):
        os.mkdir(mdir)
    ofile=orid+data[7]
    if os.path.isfile(ofile):
        mdir=mdir+'/index.m3u8'
        # mxm=mxm+'/index.m3u8'
        m3u8_log=orid+'/file/log/m3u8_'+str(data[0])+'.log'
        stri="ffmpeg -i %s -vcodec copy -acodec copy -f hls  -hls_time %d -hls_list_size 0  -y  %s 2>&1|tee %s" %(ofile,sdata[11],mdir,m3u8_log)
        # print(stri)
        os.system(stri)
        usql="UPDATE yunbt_vf SET sm3u8=\"%d\",m3u8=\"%s\" WHERE vid=\"%d\"" % (int(time.time()),mxm,data[0])
        cursor.execute(usql)
        db.commit()
    else:
        usql="UPDATE yunbt_vf SET em=1 WHERE vid=\"%d\"" % (data[0],)
        cursor.execute(usql)
        db.commit()
db.close()





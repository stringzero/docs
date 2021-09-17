# Linux

1. 添加用户 	
`adduser [用户名]`	l
2. 查看系统的编码方式  
`locale` 	
3. 切换用户   
`su 用户名`   
4. 管理员用户/超级用户  
`sudo su/-i`	
5. 建立文件夹  	
`mkdir`	
6. 手动临时挂载/手动卸载磁盘 	
`mount/unmount`	
7. 自动挂载 
`etc/fstab`	
8. 查询系统的磁盘信息
`fdisk -l`或者`df -h`	
9.  帮助文档1	
`man`空格翻页 回车翻行 Q退出
10. 帮助文档2  
`--help`	
11. 查看文档1
```  	
`cat` 文档 -n加行数 Ctrl+D结束输入
`＞＞`文档追加  
`＞`文档覆盖  
文档1 文档2＞文档
将文档1和文档2合并到9文档
文档1＞＞文档2
将文档1的的内容追加到99文档
```
12. 查看文档2	more 文档
more +n从第n行开始显示
more/head -n显示到第n行	以页为单位
空格翻页
回车翻行
Q退出
查看文档3	tail 文档
tail +n显示第n行之后
tail -n显示后n行	head和tail也可以用＞＞追加
ls	文件夹-蓝色
链接文件-天蓝色
-l
普通文件-黑色	
echo		
ln	软链接
ln -s file1 lnfile
不能失去源文件
硬链接
ln file1 lnfile
可以删除源文件
不能在不同的目录间创建	
		
隐藏文件以.开头
2018.10.31
组	主组
附加组	
/etc/group
/etc/shadow
/etc/passwd		
useradd	d 修改主目录
g
m 自动创建主目录
u 用户编号
c 注释	
gpasswd	修改组	
 
netstat -ant | wc -l

查看当前目录下的文件数量
`ls -l|grep "^-"| wc -l`
查看当前目录下的文件数量（包含子目录）
`ls -lR|grep "^-"| wc -l`
查看当前目录下的文件夹个数 
`ls -l|grep "^d"| wc -l`

* 端口转发
`ssh -g -L 30008:127.0.0.1:30008 ttx@47.116.117.101`

> 压缩文件
tar -czvf test.tar.gz test/
> 解压文件
tar -xzvf test.tar.gz
>

1,查看分区情况

fdisk -l 
2,查看系统的磁盘空间占用情况

df -h
df -TH
3,查看某个目录的使用空间大小

du -sh       需要先进入该目录,或者后面加上路径
du -sh 路径
4,查看该目录下,每个文件夹占用的空间大小

查看某目录下占用空间最多的文件或目录。取前10个。需要先进入该目录下。
du -cks * | sort -rn | head -n 10
5,该路径下所有文件的大小

查看所有的文件占用大小

du -h --max-depth=2 /
du -h --max-depth=2 /home/forjie/project
6,查看根目录下各文件夹的占用空间大小

sudo du -sh /* --exclude proc
 

当空间用完以后,清理空间方法

 

目錄 /var/log 下 .gz 副檔名的檔案
一般都可以刪除
這些檔案是短期內佔用 / 分割區 空間 最主要的來源
刪除這些檔案 也是收回 / 分割區 空間 最有效的方法

sudo ls -al /var/log | grep .gz
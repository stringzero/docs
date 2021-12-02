# `1.硬盘文件写入速度测试`  
>time dd if=/dev/zero bs=10240 count=1000000 of=/home/ttx/install/test.file
![](/images/write.png)  


# `2.硬盘文件读取速度测试`  
>dd if=/home/ttx/install/test.file bs=1024k |dd of=/dev/null
![](/images/read.png)  


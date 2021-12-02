# Linux定时清除缓存1.1

1. shell脚本

   ```shell
   #!/bin/sh
   
   #已占用缓存
   caches=$(free -m | grep Mem | awk '{print $6}')
   
   #内存总量
   
   total=$(free -m | grep Mem | awk '{print $2}')
   
   #已使用内存
   
   used=$(free -m | grep Mem | awk '{print $3}')
   
   #内存使用率
   
   rate=$(($used * 100 / $total))
   
   time=date
   
   echo "############$(date)###############"
   
   #$1 is max Mem $2是caches MAX
   if  [ "$rate" -gt "$1" ]||[ "$caches" -gt "$2" ];  then
   
       echo "rate=$rate caches=$caches FreeMemory start!"
   
       sync
   
       echo 3 >>/proc/sys/vm/drop_caches
   
       echo "FreeMemory Success!"
   
   else
   
       echo "rate=$rate Memory is normal"
   
   fi
   ```

2. 创建脚本目录

   ```shell
   mkdir -p /home/ttx/installer/freeCaches
   ```

3. vi /home/ttx/installer/freeCaches/freeCaches.sh 贴入以上shell脚本

4. 切换到root用户下执行命令crontab -e打开编辑定时配置文件

5. 在文件的最后面添加下面的命令：每小时检测当前内存占用，超过就清除缓存，例子是%85或者缓存caches超过10g(10240m),这里是荣亲的报表服务，内存设置为10240

   ```shell
   0 */1 * * * ./home/ttx/installer/freeCaches/freeCaches.sh 85 10240 >>/home/ttx/installer/freeCaches/cachesLog.txt
   ```

# Linux定时清除缓存1.1

1. shell脚本

   ```shell
   echo ","bip":"192.168.2.1/24"" >>/etc/docker/daemon.json
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

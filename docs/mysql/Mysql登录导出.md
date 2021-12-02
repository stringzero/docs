# Mysql登录导出

## 登录
1. 本地登录

   ```shell
   mysql -u root -p
   #指定端口
   mysql -u root -p  -P 3306
   ```

2. 远程登录

   ```shell
   mysql -h 127.0.0.1 -u root -p -P 3306
   #JD-DZ
   mysql -h cybertrans.ittx.com.cn -u root -p -P 33306
   ```
## 导出
1. 导出整个数据库

   ```shell
   mysqldump -u 用户名 -p 数据库名 > 导出的文件名
   #本地
   mysqldump -u root -p -P 33306 k8s-ttx-dev-wms210dzls > jddz.sql
   #远程
   mysqldump -h cybertrans.ittx.com.cn -u root -p -P 33306 k8s-ttx-dev-wms210dzls > jddz.sql
   ```
   
2. 导出一个表

   ```shell
   mysqldump -u 用户名 -p 数据库名 表名 > 导出的文件名
   #本地
   mysqldump -u root -p -P 33306 k8s-ttx-dev-wms210dzls warehouse > jddz_warehouse.sql
   #远程
   mysqldump -h cybertrans.ittx.com.cn -u root -p -P 33306 k8s-ttx-dev-wms210dzls warehouse > jddz_warehouse.sql
   ```

3. 导出一个数据库结构

   ```shell
   mysqldump -u 用户名 -p -d --add-drop-table 数据库名 > 导出的文件名
   #-d 没有数据 --add-drop-table 在每个create语句之前增加一个drop table
   #本地
   mysqldump -u root -p -d k8s-ttx-dev-wms210dzls > jddz.sql
   #远程
   mysqldump -h cybertrans.ittx.com.cn -u root -p -d k8s-ttx-dev-wms210dzls > jddz.sql
   ```

4. 导入数据

   ```shell
   #常用source 命令
   #进入mysql数据库控制台，
   如mysql -u root -p
   #mysql
   mysql>use 数据库;
   #然后使用source命令，后面参数为脚本文件(如这里用到的.sql)
   mysql>source d:222.sql (注：如果写成source d:\222.sql，就会报语法错误)
   ```

   
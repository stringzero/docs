# Mysql开启慢sql

1. 开启

   ```sql
   # 查看慢SQL是否启用
   show variables like 'slow_query_log'; 
   # 开启慢查询命令
   set global slow_query_log = on;
   # 查看慢查询参数，即设置超过多少秒的查询归为了慢查询。参数为：long_query_time，查询命令
   show global  variables like 'long_query_time';
   # 这里设置时间为1秒，即超过1秒就会被认为慢查询。设置命令
   set global long_query_time =1;
   # 查询慢sql存储位置
   show variables like "log_output%";
   # 设置慢sql存储到表
   set global log_output='TABLE';
   ```

   

2. 查看

   ```sql
   SELECT *,CONVERT(sql_text USING utf8) from mysql.slow_log  ORDER BY start_time desc LIMIT 100
   ```

   


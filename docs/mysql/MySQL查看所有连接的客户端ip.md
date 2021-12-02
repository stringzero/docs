# MySQL查看所有连接的客户端ip

1. sql

   ```sql
   SELECT substring_index(host, ':',1) AS host_name,state,count(*) FROM information_schema.processlist GROUP BY state,host_name;
   ```

   


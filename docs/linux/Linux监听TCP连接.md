# Linux监听TCP连接

1. shell

   ```shell
   for (( c=1; c>0; )); do netstat -an|awk '/tcp/ {print $6}'|sort|uniq -c;echo "############$(date)###############";sleep 10; done
   ```

   
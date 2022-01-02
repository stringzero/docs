```yaml
version: "2"
services:
  report:
    image:  registry.cn-hangzhou.aliyuncs.com/loghub/cbt-report:latest
    container_name: report
    restart: always
    mem_limit: 8g
    ports:
    - "9220:9220/tcp"
    environment:
      #mongo
      cybertrans.mongo.connectionString: "xxx"
      MONGO_PORT: "3717"
```
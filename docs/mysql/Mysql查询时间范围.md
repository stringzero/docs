# Mysql查询时间范围

1. sql

   ```sql
   # 今天
   
   select * from 表名 where to_days(时间字段名) = to_days(now());
   
   # 昨天
   
   SELECT * FROM 表名 WHERE TO_DAYS( NOW( ) ) - TO_DAYS( 时间字段名) <= 1
   
   # 近7天
   
   SELECT * FROM 表名 where DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= date(时间字段名)
   
   # 近30天
   
   SELECT * FROM 表名 where DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= date(时间字段名)
   
   # 本月
   
   SELECT * FROM 表名 WHERE DATE_FORMAT( 时间字段名, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )
   
   # 上一月
   
   SELECT * FROM 表名 WHERE PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( 时间字段名, '%Y%m' ) ) =1
   
   # 查询本季度数据
   
   select * from ht_invoice_information where QUARTER(create_date)=QUARTER(now());
   
   # 查询上季度数据
   
   select * from ht_invoice_information where QUARTER(create_date)=QUARTER(DATE_SUB(now(),interval 1 QUARTER));
   
   # 查询本年数据
   
   select * from ht_invoice_information where YEAR(create_date)=YEAR(NOW());
   
   # 查询上年数据
   
   select * from ht_invoice_information where year(create_date)=year(date_sub(now(),interval 1 year));
   
   # 查询当前这周的数据
   
   SELECT name,submittime FROM enterprise WHERE YEARWEEK(date_format(submittime,'%Y-%m-%d')) = YEARWEEK(now());
   
   # 查询上周的数据
   SELECT name,submittime FROM enterprise WHERE YEARWEEK(date_format(submittime,'%Y-%m-%d')) = YEARWEEK(now())-1;
   ```

   
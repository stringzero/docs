
> 密码强度策略
```sql
SELECT * FROM ttx_system WHERE `code` LIKE 'password_regex%';
```
| code                              | value                                       |
|-----------------------------------|---------------------------------------------|
| password_regex_crop_admin         | ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\s\S]{8,}$  |
| password_regex_crop_admin_desc	 | 至少8个字符，至少1个大写字母，1个小写字母和1个数字  |
| password_regex_crop_user	         | ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\s\S]{8,}$  |
| password_regex_crop_user_desc     | 	至少8个字符，至少1个大写字母，1个小写字母和1个数字  |
| password_regex_system_admin       | 	^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\s\S]{8,}$ |
| password_regex_system_admin_desc | 	至少8个字符，至少1个大写字母，1个小写字母和1个数字   |

> 导出数量策略
```sql
SELECT * FROM ttx_system WHERE `code` LIKE 'system_query_%';
```

| code              | value  |
|-------------------|--------|
| system_query_limit | 500000 |
| system_query_step | 50000  |
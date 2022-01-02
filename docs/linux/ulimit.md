
### 短期修改, 重启失效:
```bash
ulimit -n 65535
ulimit -SHn 65535
# 其中-S是soft软限制模式, -H指hard硬限制模式;
# 默认是软限制, 如果只指定-n, 那就会同时配置-SH.

sudo tee /proc/sys/fs/file-max  <<-EOF
6553560
EOF
```

### 长期修改,重启生效
```bash
sudo tee -a  /etc/security/limits.conf  <<-EOF
* soft nofile 65535
* hard nofile 65535
root hard nofile 65535
root soft nofile 65535
EOF
```

# Headline

* [正式访问地址](http://docs.stringzero.win/)

> An awesome project.
* [Guide](guide.md)

## 文档维护发布方法
### 下载当前项目 

``` bash
git clone http://git.ittx.com.cn/zwzeng/docsify.git
```
### 编辑文件

> _coverpage.md  项目封面
> _sidebar.md    维护目录

### 发布
> 堡垒机登录 通天晓-实施部-WMS-测试-66
```
cd /home/ttx/app/compose/docsify
git pull
# 完成发布
```

## 本地启动
> 安装 docsify
```
npm i docsify-cli -g
```
> 项目启动

```
docsify serve docs
```

# 服务器上如何更新文档
```bash
cd /home/ttx/app/compose/docsify
git pull
```
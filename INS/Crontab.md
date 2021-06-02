# Linux crontab用法、启动关闭重启操作
1. 在系统中有service这个命令时：   
这个命令在red hat当中常用,有的linux发行版本中没有这个命令.
```
service crond start //启动服务
```
```
service crond stop //关闭服务
```
```
service crond restart //重启服务
```
 
2. linux发行版本没有service这个命令时：
```
/etc/init.d/cron stop
```
```
/etc/init.d/cron start
```
 
3. 执行出现 /bin/systemctl 。。。。说明是新版的可用以下命令操作
``` 
/bin/systemctl restart crond.service  #启动服务
```
```
/bin/systemctl reload  crond.service  #重新载入配置
```
```
/bin/systemctl status  crond.service  #查看crontab服务状态
```

# Mysql-learn
一些SQL 语句练习


## MySQL 数据库准备
参考这里：<http://dbafu.oschina.io/2017/10/27/docker-quickly-build-mysql-multi-instance-service,-and-data-volume-separation/>

1 首先安装 docker， 找到对应操作系统的docker安装包，下载安装。

2 准备MySQL
##
```sh
# 从docker hub的仓库中拉取mysql镜像

docker pull mysql


```
3 运行第一个mysql实例的命令如下：

```sh
docker run -d --name myMysql -v ~/data/mysql1:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -p 3307:3306 mysql
```
>
-d : –detach，后台运行。
–name : 为你的镜像创建一个别名，该别名用于更好操作。
-p : 映射端口，一般我们会将默认端口进行更改，避免与本机的mysql端口冲突，如果你宿主机有mysql，请更改端口，如 -p 3307:3306。 3307代表本地端口 3306为容器端口这是固定的（固定在MySQL官方镜像里），
-e : 环境变量。为mysql的root用户设置密码为123456。
-v : 指定数据卷，意思就是将mysql容器中的/var/lib/mysql（这个是数据库所有数据信息文件）映射到宿主机~/data/mysql里面。

4 在本机登陆到MySQL实例

```sh
mysql -h 127.0.0.1 -P 3308 -u root -p

or

mysql -h 192.168.0.116 -P 3308 -u root -p
```
> 一定要指定 ip 参数，不可以省略 否则报错，连接失败

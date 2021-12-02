## 项目说明

本项目用于ferry项目的部署 [项目地址](https://github.com/lanyulei/ferry)

为了解决前后端分离，以及golang编译困难同学的部署难题。

## 部署方式

1. clone 或者下载代码到本地
2. 放在自己想要的目录里，任何目录都可
3. 根据自己系统进行执行首次安装任务，首次安装任务做了什么请见下文
4. ubuntu 14.04以上系统执行`first_start_ubuntu_14.04_up.sh`
5. centos7 以上系统执行`first_start_centos7_up.sh`

## 首次安装任务

1. 执行安装docker以及docker-compose包任务
2. 从docker镜像中心下载docker镜像
3. 进行首次启动mysql镜像，并且自动化导入基础数据表
4. 启动整体服务

## 首次访问

1. 绑定浏览器所使用的机器host
2. 域名为test.example.com
3. 将域名绑定地址指向为启动服务的服务器地址

## 维护命令

> 以下所有命令必须在项目根目录，有docker-compose.yaml文件的同级目录执行！！！！

`docker-compose up -d` 启动项目命令，并且自动增加开机自启动，首次不要使用！！！关闭后再次启动时候再用！

`docker-compose logs` 查看所有镜像的日志

`docker-compose down` 关闭所有服务,并且关闭开机自启动

`docker-compose restart` 重启所有服务


## 目录结构说明

未完待续
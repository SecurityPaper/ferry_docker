#!/bin/bash
echo "正在安装docker环境预计需要2分钟"
apt update && apt install -y docker docker-compose
echo "================================"

echo "正在下载需要的镜像"
docker pull securitypaperorg/ferry_web:latest
docker pull securitypaperorg/ferry_server:latest
docker pull mysql:5.7
docker pull redis

echo "================================"

echo "第一次启动需要导入数据库，预计需要60秒"
echo "正在启动数据库......"
docker-compose up -d mysql
sleep 40
echo "正在启动其他服务...."
docker-compose up -d

echo "以后启动在本目录执行docker-compose up -d 即可"
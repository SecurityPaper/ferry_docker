#!/bin/bash

echo "第一次启动需要导入数据库，预计需要30秒"
echo "正在启动数据库......"
docker-compose up -d mysql
sleep 40
echo "正在启动其他服务...."
docker-compose up -d

echo "以后启动在本目录执行docker-compose up -d 即可"
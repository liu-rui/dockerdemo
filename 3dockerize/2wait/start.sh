#!/bin/bash

# 8080端口的程序(如tomcat)启动后输出hello world,超时时间为60s

dockerize -wait tcp://localhost:8080  -timeout 60s echo "hello world"


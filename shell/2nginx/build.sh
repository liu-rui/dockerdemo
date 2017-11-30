#!/bin/bash
NAME="liurui/nginx1"

sudo docker rmi  -f $NAME
sudo docker build -t $NAME .

echo "\n--------------------"
sudo docker run --rm -p 92:80 $NAME

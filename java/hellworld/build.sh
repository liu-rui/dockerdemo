#!/bin/bash
NAME="liurui/java-hello"

sudo docker rmi  -f $NAME
sudo docker build -t $NAME . 

echo "\n--------------------"
sudo docker run --rm -it $NAME

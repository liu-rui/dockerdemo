#!/bin/bash
NAME="liurui/label"

sudo docker rmi  -f $NAME
sudo docker build -t $NAME .

echo "\n--------------------"
sudo docker run --rm -it $NAME

#!/bin/bash
NAME="liurui/maintainer"

sudo docker rmi  -f $NAME
sudo docker build -t $NAME .

echo "\n--------------------"

sudo docker inspect  --format '{{.Author}}'  liurui/maintainer

echo "\n--------------------"
sudo docker run --rm -it $NAME

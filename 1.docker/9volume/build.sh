#!/bin/bash
NAME="liurui/volume"

sudo docker rmi  -f $NAME
sudo docker build -t $NAME .

echo "\n--------------------"
sudo docker run --rm -it  -v $(pwd):/data  $NAME

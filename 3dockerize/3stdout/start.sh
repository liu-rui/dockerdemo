#!/bin/bash

# 类似与 tail -f 

$(while true;  do  echo `date` >> 2.log ;sleep 2; done) &

dockerize -stdout 2.log
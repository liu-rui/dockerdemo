#!/bin/bash



docker build . -t myregistry.com/gb-frontend:v5

docker push  myregistry.com/gb-frontend:v5
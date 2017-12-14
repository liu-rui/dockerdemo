#!/usr/bin/env bash

name="myregistry.com/rollingupdatedemo:3"

docker build . -t $name
docker push  $name
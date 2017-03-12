#!/bin/bash

sudo docker build -t zeppelin .
DATASETS=`readlink -e ../datasets`
sudo docker run --volume=$DATASETS:/datasets --rm --net=host -p 8080:8080 zeppelin


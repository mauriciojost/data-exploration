#!/bin/bash

DATASETS_DIR=`readlink -e ../datasets`
DATASETS_MOUNTPOINT=/datasets

echo ""
echo "Zeppelin will be available at:"
echo "   http://localhost:8080/"
echo ""
echo "Can run spark-shell with:"
echo "   sudo docker ps"
echo "   sudo docker exec <containerid> spark-shell"
echo ""
echo "The datasets will be mounted at:"
echo "   $DATASETS_MOUNTPOINT"
echo ""
echo ""

sudo docker build -t zeppelin .

sudo docker run --volume=$DATASETS_DIR:$DATASETS_MOUNTPOINT --rm --net=host -p 8080:8080 zeppelin


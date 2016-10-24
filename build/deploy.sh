#!/bin/bash

set -o verbose
set -o errexit

source $(dirname $0)/_variables

echo "Running container $REGISTRY/$REPOSITORY:$VERSION..."

echo "REGISTRY=$REGISTRY"
echo "REPOSITORY=$REPOSITORY"
echo "VERSION=$VERSION"
echo "NAME=$NAME"

docker stop $NAME || true #ignore on error
docker rm -f $NAME || true
docker pull $REGISTRY/$REPOSITORY:$VERSION
docker run -d --name $NAME --restart always -p 1505:80 --log-driver gelf --log-opt gelf-address=udp://127.0.0.1:12201  $REGISTRY/$REPOSITORY:$VERSION

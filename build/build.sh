#!/bin/bash

set -o errexit
set -o verbose

source $(dirname $0)/_variables

echo "Building $REGISTRY/$REPOSITORY:$VERSION..."

echo "REGISTRY=$REGISTRY"
echo "REPOSITORY=$REPOSITORY"
echo "VERSION=$VERSION"

docker build -t $REGISTRY/$REPOSITORY:$VERSION .
docker push $REGISTRY/$REPOSITORY:$VERSION

echo "Finished building and publishing $REGISTRY/$REPOSITORY:$VERSION"

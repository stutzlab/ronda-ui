#!/bin/bash

source $(dirname $0)/_variables

echo "REGISTRY=$REGISTRY"
echo "REPOSITORY=$REPOSITORY"
echo "VERSION=$VERSION"

echo "Testing $REGISTRY/$REPOSITORY:$VERSION..."

echo "NO TESTS TO RUN"

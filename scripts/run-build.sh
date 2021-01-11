#!/bin/bash

set -euo pipefail

DIR=$(dirname "$(readlink -f "$0")")

NAMESPACE="$(cat $DIR/../galaxy.yml | egrep -e '^namespace:' | sed 's/^namespace:\s*//g')"
NAME="$(cat $DIR/../galaxy.yml | egrep -e '^name:' | sed 's/^name:\s*docker-//g')"
IMAGE="docker-${NAME}/${TAG}:${MOLECULE_INSTANCE_NAME}-1-commit"

molecule destroy -s $TAG
molecule converge -s $TAG
molecule converge -s $TAG
molecule verify -s $TAG
docker tag $IMAGE $NAMESPACE/$NAME:$TAG
docker push $NAMESPACE/$NAME:$TAG
molecule destroy -s $TAG

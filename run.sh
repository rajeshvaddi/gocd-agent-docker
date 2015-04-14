#!/bin/bash

set -e
set -x
set -u

DOCKER_REGISTRY_IP=$1

docker build -t gocd-agent-webcollage .

docker tag gocd-agent-webcollage $DOCKER_REGISTRY_IP:5000/gocd-agent-webcollage
docker push $DOCKER_REGISTRY_IP:5000/gocd-agent-webcollage

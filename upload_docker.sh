#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
dockerid="8if8troin6i4rv2p"
dockername="machine-leaning"

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

dockerpath="$dockerid/$dockername"

# Step 2:  
# Authenticate & tag
docker login && docker tag $dockername $dockerpath

# Step 3:
# Push image to a docker repository

docker push $dockerpath
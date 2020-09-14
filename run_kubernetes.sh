#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

dockerid="8if8troin6i4rv2p"
dockername="machine-leaning"
local_port="8000"
remote_port="80"

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="$dockerid/$dockername"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $dockername\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=dockername


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward $dockername $local_port:$remote_port
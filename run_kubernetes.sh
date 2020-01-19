#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="deepakmits/api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run apilocal\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=apilocal


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward apilocal 8000:80


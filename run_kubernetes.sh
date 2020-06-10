#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path

dockerpath="anvillasoto/scalable-machine-learning-microservice-api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run scalable-machine-learning-microservice-api\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=scalable-machine-learning-microservice-api


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward scalable-machine-learning-microservice-api 8000:80
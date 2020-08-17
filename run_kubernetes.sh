#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="eserksnas/es_project4_api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitymicroservicesapi\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=udacitymicroservicesapi


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacitymicroservicesapi 8000:80


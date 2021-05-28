#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=capstone
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username eisa26
docker tag capstone eisa26/capstone:v1pro3
# Step 3:
# Push image to a docker repository
docker push eisa26/capstone:v1pro3
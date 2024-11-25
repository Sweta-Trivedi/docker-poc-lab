#!/bin/bash

# Define container name
CONTAINER_NAME="postgres-container"

# Stop and remove the container
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

echo "PostgreSQL container stopped and removed."

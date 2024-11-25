#!/bin/bash

# Set PostgreSQL credentials
POSTGRES_PASSWORD="yourpassword"
POSTGRES_USER="postgres"
POSTGRES_DB="my_database"
CONTAINER_NAME="postgres-container"

# Start PostgreSQL container
docker run --name $CONTAINER_NAME -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD -d -p 5432:5432 postgres

# Wait for the container to be ready (PostgreSQL may take a few seconds to start)
echo "Waiting for PostgreSQL to start..."
sleep 10
#!/bin/bash

# Define PostgreSQL container and credentials
CONTAINER_NAME="postgres-container"
POSTGRES_USER="postgres"
POSTGRES_DB="my_database"

# Create a table in PostgreSQL
docker exec -i $CONTAINER_NAME psql -U $POSTGRES_USER -d $POSTGRES_DB <<EOF
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
EOF

echo "Table 'users' created."

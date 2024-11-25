#!/bin/bash

# Define PostgreSQL container and credentials
CONTAINER_NAME="postgres-container"
POSTGRES_USER="postgres"
POSTGRES_DB="my_database"

# Insert data into the table
docker exec -i $CONTAINER_NAME psql -U $POSTGRES_USER -d $POSTGRES_DB <<EOF
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');
EOF

echo "Data inserted into the 'users' table."

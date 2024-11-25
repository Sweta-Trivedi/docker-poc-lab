#!/bin/bash

echo "Making all scripts executable..."
chmod +x scripts/*.sh

echo "Starting PostgreSQL container..."
./scripts/start_postgres.sh

echo "Creating the 'users' table..."
./scripts/create_table.sh

echo "Inserting sample data..."
./scripts/insert_data.sh

echo "All setup tasks completed successfully!"

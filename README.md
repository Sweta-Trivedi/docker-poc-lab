# Docker-poc-lab
A collection of Docker-based setups for multiple data engineering proof-of-concepts (POCs). This repository simplifies the process of creating, running, and managing isolated environments for experimenting with tools like Apache Flink, PostgreSQL, and more.

### **Getting Started**

##### Prerequisites

**Docker**: Ensure Docker is installed and running on your system. You can download it here.

**Git**: Install Git to clone the repository.

### Setup Instructions

#### Clone the Repository:

`git clone https://github.com/your-username/docker-poc-environments.git
cd docker-poc-environments`

Run the Unified Startup Script: Execute the setup_all.sh script to set up the environment, start the PostgreSQL container, and initialize the database:


`./setup_all.sh`

Verify the Setup: Once the script completes, you can connect to the PostgreSQL instance to check the created tables and inserted data:

`docker exec -it postgres-container psql -U postgres -d my_database`

### Available Commands

To Start the Environment:

`./setup_all.sh`

To Stop the PostgreSQL Container:

`./scripts/stop_postgres.sh`

To Run Individual Steps:
Start PostgreSQL:

`./scripts/start_postgres.sh`

Create Table:

`./scripts/create_table.sh`

Insert Data:

`./scripts/insert_data.sh`
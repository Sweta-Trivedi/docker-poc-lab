# Hadoop Docker Lab Setup

## Overview
This repository provides an easy setup for a multi-node Hadoop environment using Docker. You can use this lab for learning and testing Hadoop features in a controlled environment.

## Prerequisites
Before setting up the lab, ensure you have the following installed:
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

### 1. Clone the Repository

Clone this repository to your local machine

### 2. Run the cluster

cd big-data-1

hadoop % ls

alice.txt		hadoop.env		words.txt
config			mapred-site.xml
docker-compose.yaml	test.sh

hadoop % docker-compose up -d

WARN[0000] network hbase: network.external.name is deprecated in favor of network.name 
[+] Running 5/5
 ⠿ Container hadoop-namenode-1         Ru...                               0.0s
 ⠿ Container hadoop-datanode-1         Ru...                               0.0s
 ⠿ Container hadoop-resourcemanager-1  Running                             0.0s
 ⠿ Container hadoop-nodemanager-1      Running                             0.0s
 ⠿ Container hadoop-historyserver-1    Started                             0.4s

All the nodes must be running:
1. namenode-1 http://localhost:8042/node
  <img width="1721" alt="Screenshot 2025-02-06 at 10 01 15 AM" src="https://github.com/user-attachments/assets/4fef48af-4c43-45dd-a654-272a41c5f2f6" />

2. historyserver-1 http://localhost:8188/applicationhistory
  <img width="1722" alt="Screenshot 2025-02-06 at 10 02 12 AM" src="https://github.com/user-attachments/assets/82cd399d-ed16-4bee-9a3d-b0269550e316" />

3. resourcemanager-1  http://localhost:8088/cluster
  <img width="1711" alt="Screenshot 2025-02-06 at 10 05 59 AM" src="https://github.com/user-attachments/assets/76b6bd75-c59d-493c-ae72-d800a7a6bc64" />

4. datanode-1  http://localhost:50075/datanode.html
  <img width="1581" alt="Screenshot 2025-02-06 at 10 03 09 AM" src="https://github.com/user-attachments/assets/723c9e37-139d-412b-b1df-8ad2241bf8cd" />

5. namenode-1  http://localhost:9870/dfshealth.html#tab-overview
  <img width="1205" alt="Screenshot 2025-02-06 at 10 04 28 AM" src="https://github.com/user-attachments/assets/4b370a25-3b33-4f8f-a047-de91637659d7" />
  <img width="639" alt="Screenshot 2025-02-06 at 10 05 05 AM" src="https://github.com/user-attachments/assets/7619847b-2d20-441a-84c5-529cef054435" />

### 3. List all docker containers

big-data-1 % docker ps

CONTAINER ID   IMAGE                                                    COMMAND                  CREATED       STATUS                       PORTS                                NAMES

e72b728ccc50   bde2020/hadoop-nodemanager:2.0.0-hadoop3.2.1-java8       "/entrypoint.sh /run…"   6 weeks ago   Up About an hour (healthy)   0.0.0.0:8042->8042/tcp               hadoop-nodemanager-1

a7fdf804e468   bde2020/hadoop-historyserver:2.0.0-hadoop3.2.1-java8     "/entrypoint.sh /run…"   6 weeks ago   Up 36 minutes (healthy)      0.0.0.0:8188->8188/tcp               hadoop-historyserver-1

131f9db98d30   bde2020/hadoop-resourcemanager:2.0.0-hadoop3.2.1-java8   "/entrypoint.sh /run…"   6 weeks ago   Up About an hour (healthy)   0.0.0.0:8088->8088/tcp               hadoop-resourcemanager-1

24af0141e6ff   bde2020/hadoop-datanode:2.0.0-hadoop3.2.1-java8          "/entrypoint.sh /run…"   6 weeks ago   Up About an hour (healthy)   9864/tcp, 0.0.0.0:50075->50075/tcp   hadoop-datanode-1

01a0b5b213b1   bde2020/hadoop-namenode:2.0.0-hadoop3.2.1-java8          "/entrypoint.sh /run…"   6 weeks ago   Up About an hour (healthy)   0.0.0.0:9870->9870/tcp               hadoop-namenode-1


### 4. login to docker bash namenode

hadoop % docker exec -it 01a0b5b213b133c701511e3deb2160774207551ed99c5c84911059236b987c62 /bin/bash

root@01a0b5b213b1:/# ls

KEYS  dev	     hadoop	  lib	 mnt   root    sbin  tmp

bin   entrypoint.sh  hadoop-data  lib64  opt   run     srv   usr

boot  etc	     home	  media  proc  run.sh  sys   var

root@01a0b5b213b1:/# cd opt

root@01a0b5b213b1:/opt# ls

hadoop-3.2.1





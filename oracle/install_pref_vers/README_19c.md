## Oracle Database

## Technology stack  
- **OS System**: Windows 10
- **Version**: Oracle 19.3000 (oracle 19c)
- **IDE**: SQL Plus & SQL Developer

## Setting up OS Requirements
1. Check if you have 10 GB of empty space on disk space.
   
⚠️ Check if in your C:/ have at least 10GB of free space.

3. Check if you have 2 GB minimum of physical memory.
   
⚠️ Check if your pc have 2GB of RAM free.

4. Screen Resolution: 1024 X 768 minimum

5. System Architecture: Processor: AMD64 and Intel EM64T

6. Virtual memory (swap): If physical memory is between 2 GB and 16 GB, then set virtual memory to 1 times the size of the RAM.If physical memory is more than 16 GB, then set virtual memory to 16 GB

7. Follow instructions at [Oracle Official Site)](https://docs.oracle.com/en/database/oracle/oracle-database/19/ntdbi/operating-system-checklist-oracle-database-installation-microsoft-windows.html) in order to be able to run your database without `help` privileges. 

## _How_to_install_your_database_

In order to ensure that your database will be installed fine, you have to follow the next steps.


⚠️Commands to [+create+] / [-destroy-] the **development** environment: ⚠️
```
 sudo systemctl enable docker.service
 sudo systemctl enable containerd.service
```
```
 # Build images from .yml file & start containers (services) 🔼
 docker compose -f ./docker-compose.dev.yml up -d --build  
```
```
 # Start containers (services) ✅, ❎ after they have been stopped using the 'stop' command 
 docker compose -f ./docker-compose.dev.yml start  
```
```
 # Stop & delete containers (services) 🔽
 docker compose -f ./docker-compose.dev.yml down
```
Use `stop` when leaving for the day.  
Use `start` when you start working.  
Use `up -d --build` only when the `docker-compose.dev.yml` file is changed.


#### **Pg Admin Setup**

- Go to localhost:8001
- Login with the credentials defined in the docker-compose file, associated with the pg_admin container
- Register a new Server connection
- In the connection Tab,the hostname is the db_postgres container's name, credentials are defined in the docker-compose file asscoiated with the db_postgres container
- Data is in the Servers->Databases Schemas->Tables
#### **Services**


- [+django+]: Responsible for running the development webserver at `0.0.0.0:8000`. Autoreload functionality on code change is also functional,  
- [+db_postgres+]: PostgreSQL database server. Used here in order to more closely resemble the prod environment,  
- [+db_pgadmin+]: Web management interface for PostgreSQL db servers. Only accepts outside traffic from `127.0.0.1` on port `8001`,
- [+celery_beat+] & [+celery_worker+]: Responsible for scheduling periodic tasks (e.g., DB backup) and executing asynchronous tasks (e.g., e-mail notifications), respectively,
- [+redis+]: A message broker which allows Celery Beat, Celery Worker & Django to work together in order to execute periodic & async tasks.
```

## **Extra** commands
Force build images & start containers for an environment: 
```
 docker compose -f ./docker-compose.dev.yml up -d --build --remove-orphans --force-recreate
```
Force rebuild of **ONLY ONE** service: 
```
 docker compose -f ./docker-compose.de.yml build <service name>
```
List all images on the host system: 
```
 docker image list -a
```  
List all containers (running or stopped): 
```
 docker container list -a
```   
Clean up leftover images after several consecutive builds in order to free up disk space (the cache is also discarded): 
```
 docker rmi $(docker images -q -f dangling=true)
 docker builder prune
```
Inspect the logs of a container that **is currently running**:
```
 docker-compose logs -f [container id|container name]
```
Get a shell inside of a container
```
 docker exec -it <container name> /bin/bash
```


# My Docker Project
It demonstrates basic DevOps skills: building a Docker image, pushing it to Docker Hub, and pushing the code to GitHub

Steps Followest

Stap 1: Identify a Sample Application

I created a basic hade js web server that prints "Hello World" when accessest.

Step 2 identify the Dependencies

Node.js

Express (A sininal web frameverk for Node.js)

Stap 3: Create huckerfile

The Dockerfile includes

Using Node.js official bose snage nodes latest

Setting a working directory

Copying the project files

Installing dependencies

Running the server

St 4: Build the docker Image
Command used

bash

docker build -t my-node-web-app



# Part 2:


# Step 1: Using the Docker Image from Part 1

The Docker image created in Part 1 of this assignment will be used.

# Step 2: Run the Docker Container



# Command:

docker run -d --name my_app_containr your_docker_image_name



# Step 3: Use Different Docker Container Commands

# docker ps
Description: Lists all running containers.



# docker stop
Description: Stops a running container.

Command:

docker stop my_app_containr



# docker rm
Description: Removes a stopped container.

Command:

docker rm my_app_containr



# docker logs
Description: Displays the logs of a container.

Command:

docker logs my_app_containr



# docker inspect
Description: Displays detailed information about a container.

Command:

docker inspect my_app_containr

# docker exec
Description: Executes a command inside a running container.

Command:

docker exec -it my_app_containr bash



# docker attach
Description: Attaches the terminal's standard input, output, and error streams to a running container.

Command:

docker attach my_app_containr



# docker commit
Description: Creates a new image from a container's changes.

Command:

docker commit my_app_containr new_image_name



# docker cp
Description: Copies files/folders between the container and the host.

Command:

docker cp source_path destination_path

(Where source path and destination path are host file path and container file path)



# docker stats
Description: Views the resource usage of containers.

Command:

docker stats my_app_containr



# docker top
Description: Views the running processes inside a container.

Command:

docker top my_app_containr


# docker start
Description: Starts a stopped container.

Command:

docker start my_app_containr



# docker pause
Description: Pauses all processes within a container.

Command:

docker pause my_app_containr



# docker unpause
Description: Unpauses a paused container.

Command:

docker unpause my_app_containr



# docker rename
Description: Renames a container.

Command:

docker rename my_app_containr new_name


# docker wait
Description: Waits for a container to stop and then displays its exit code.

Command:

docker wait my_app_containr

# docker port
Description: Displays the public-facing port that a container is listening on

Command:

docker port container_name_or_id



# docker update
Description: Updates a container's resource limits.

Command:

docker update container_name_or_id --memory=new_memory_limit



# docker restart
Description: Restarts a container.

Command:

docker restart my_app_containr



# Step 4: Document Your Results in README.md


# Step 5: Push the Codebase to GitHub

# part3
Step 1: Create Docker Volume

* **Description:** Creates a new Docker volume named "my_volume".
* **Command:**
    docker volume create my_volume


# Step 2: Run Nginx Container with Volume

Description: Creates and runs a new Docker container using the Nginx image and mounts the "my_volume" volume to the "/usr/share/nginx/html" directory.
Command:
    docker run -d -p 8080:80 --name my_nginx_container -v my_volume:/usr/share/nginx/html nginx:l


# Step 3: Verify Nginx Access
### Step 4: Create index.html
### Step 5: Copy index.html to Volume
Description: Copies the "index.html" file to the "my_volume" volume.
Command:
    docker cp /path/to/your/index.html my_nginx_container:/usr/share/nginx/html/
### Step 6: Verify index.html Access
### Step 7: Stop and Remove Nginx Container
docker stop: Stops the running container.

docker rm: Removes the stopped container.
### Step 8: Run Httpd Container with Volume
Description: Creates and runs a new Docker container using the Httpd image and mounts the "my_volume" volume to the "/usr/local/apache2/htdocs" directory.
Command:
    docker run -d -p 8081:80 --name my_httpd_container -v my_volume:/usr/local/apache2/htdocs httpd:latest
### Step 9: Verify Httpd Access
### Step 10: Create about.html
### Step 11: Copy about.html to Volume

Description: Copies the "about.html" file to the "my_volume" volume.
Command:
     docker cp /path/to/your/about.html my_httpd_container:/usr/local/apache2/htdocs/
    ### Step 13: Stop and Remove Httpd Container

Description:Stops and removes the Httpd container.
Command:
    docker stop my_httpd_container
    docker rm my_httpd_container
    
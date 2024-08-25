#!/bin/bash

sudo docker rm container -f
sudo docker rmi my_docker:tag
sudo docker build -t my_docker:tag .
sudo docker run -it --name container -p 80:81 -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf -d my_docker:tag
sudo DOCKER_CONTENT_TRUST=1  dockle my_docker:tag
# curl http://localhost:80
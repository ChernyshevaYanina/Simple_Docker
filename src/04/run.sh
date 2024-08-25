#!/bin/bash 

sudo docker rm container -f
sudo docker build -t my_docker:tag .
sudo docker run -it --name container -p 80:81 -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf -d my_docker:tag
sleep 1
curl http://localhost:80
sudo docker exec container nginx -s reload
curl http://localhost:80/status
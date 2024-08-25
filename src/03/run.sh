#!/bin/bash

sudo docker pull nginx
sudo docker run  --name container -d -p 81:81 nginx
sudo docker cp nginx.conf container:/etc/nginx/
sudo docker cp hello.c container:/home/
sudo docker cp run_con.sh container:/home/
sudo docker exec container nginx -s reload
sudo docker exec -it container bash

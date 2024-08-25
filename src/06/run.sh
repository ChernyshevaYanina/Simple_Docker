#!/bin/bash

sudo docker rm container -f
sudo docker rmi my_docker:tag
sudo docker-compose build
sudo docker-compose up
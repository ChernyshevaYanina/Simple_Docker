#!/bin/bash

apt update
apt -y upgrade
apt install -y gcc libfcgi-dev spawn-fcgi
gcc -o hello hello.c -lfcgi 
spawn-fcgi -p 8080 ./hello
nginx -s reload

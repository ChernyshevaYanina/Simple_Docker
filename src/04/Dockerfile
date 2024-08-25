FROM nginx:latest
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./hello.c /home/hello.c
COPY ./start.sh /home/start.sh
RUN apt-get update; \
    apt-get -y upgrade; \
    apt-get install -y gcc libfcgi-dev spawn-fcgi; \
    rm -rf /var/lib/apt/lists
    
WORKDIR /home/
CMD ["sh", "./start.sh"]
FROM alpine


COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./hello.c /home/hello.c
COPY ./start.sh /home/start.sh

WORKDIR /home/

RUN apk update && \ 
    apk add --no-cache nginx gcc fcgi spawn-fcgi make libc-dev fcgi-dev shadow && \
    groupadd -r user && \
    useradd -r -g user user; \
    rm -rf /var/lib/apt/lists && \
    chown -R user:user  /home/ && \
    chown -R user:user /var/lib/nginx && \
    chown -R user:user /var/log/nginx && \
    chown -R user:user /var/run/ && \
    chmod 755 /sbin/unix_chkpwd && \
    chmod 755 /usr/bin/gpasswd && \
    chmod 755 /usr/bin/chage && \
    chmod 755 /usr/bin/chfn && \
    chmod 755 /usr/bin/expiry && \
    chmod 755 /usr/bin/passwd && \
    chmod 755 /usr/bin/chsh

    

USER user
HEALTHCHECK --interval=5m --timeout=3s CMD curl --fail http://localhost/ || exit 1
ENTRYPOINT ["sh", "./start.sh"]
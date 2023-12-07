FROM ubuntu
WORKDIR /home

COPY ./nginx/nginx.conf /home/etc/nginx/nginx.conf
COPY ./hello.c .
COPY ./run.sh .

RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx gcc spawn-fcgi libfcgi-dev && rm -rf /var/lib/apt/lists

RUN useradd prunesga; \
    chown -R prunesga:prunesga /home; \
    chown -R prunesga:prunesga /etc/nginx/nginx.conf; \
    # Раздача прав для исправления INFO уязвимостей
    chown -R prunesga:daemon /var/cache/nginx; \
    touch /var/run/nginx.pid; \
    chown -R prunesga:daemon /var/run/nginx.pid;



#ENV DOCKER_CONTENT_TRUST=1

USER prunesga

HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1

ENTRYPOINT ["sh", "./run.sh"]
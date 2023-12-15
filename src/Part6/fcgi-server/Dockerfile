FROM ubuntu
WORKDIR /home

COPY ./hello.c .
COPY ./run.sh .

RUN apt-get update && apt-get upgrade -y  \
    && apt-get install -y nginx gcc spawn-fcgi libfcgi-dev  \
    && rm -rf /var/lib/apt/lists \
    && groupadd -g 999 prunesga \
    && useradd -r -u 999 -g prunesga prunesga \
    && chown -R prunesga:prunesga /home; \
    chown -R prunesga:prunesga /etc/nginx;\
    chown -R prunesga:prunesga /var/log/nginx; \
    chown -R prunesga:prunesga /var/lib/nginx;

USER prunesga

HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1

ENTRYPOINT ["sh", "./run.sh"]
FROM debian
#LABEL version="1.0"


RUN apt-get update && apt-get install -y \
    nginx \
    gcc \
    libfcgi-dev \
    spawn-fcgi \
    && rm -rf /var/lib/apt/lists

WORKDIR /home/
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./hello.c .
COPY ./run.sh .

RUN chmod +x run.sh

RUN groupadd -g 999 prunesga && \
    useradd -r -u 999 -g prunesga prunesga
USER prunesga

ENTRYPOINT ["./run.sh"]
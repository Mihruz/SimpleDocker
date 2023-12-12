FROM nginx
WORKDIR /home
RUN apt-get update && apt-get install -y gcc spawn-fcgi libfcgi-dev

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./hello.c .
COPY ./run.sh .

ENTRYPOINT ["sh", "./run.sh"]
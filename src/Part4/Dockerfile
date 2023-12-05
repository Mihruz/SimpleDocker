FROM nginx
WORKDIR /home
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y spawn-fcgi
RUN apt-get install -y libfcgi-dev

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./hello.c .
COPY ./run.sh .

ENTRYPOINT ["sh", "./run.sh"]
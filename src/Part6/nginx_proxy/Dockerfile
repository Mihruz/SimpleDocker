FROM nginx
WORKDIR /home
RUN apt-get update && apt-get install -y gcc spawn-fcgi libfcgi-dev

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./run.sh .

ENTRYPOINT ["sh", "./run.sh"]
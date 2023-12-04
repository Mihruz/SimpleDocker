FROM nginx

RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y spawn-fcgi
RUN apt-get install -y libfcgi-dev

COPY . /project
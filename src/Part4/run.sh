#!/bin/bash

gcc -o server hello.c -lfcgi
spawn-fcgi -p 8080 ./server
service nginx start
/bin/bash
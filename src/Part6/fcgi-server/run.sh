#!/bin/bash

gcc -o server hello.c -lfcgi
nginx
spawn-fcgi -p 8080 -f ./server
sleep infinity

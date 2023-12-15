#!/bin/bash
gcc -o server hello.c -lfcgi
nginx
spawn-fcgi -p 81 -f ./server
sleep infinity

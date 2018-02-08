#!/bin/bash

echo "server {
        listen 80;
        server_name $SERVER_NAME;
        root $DOCUMENTROOT;
        index index.html index.htm index.nginx-debian.html;
}" > /etc/nginx/sites-enabled/default

mkdir -p $DOCUMENTROOT
mv /tmp/html/* $DOCUMENTROOT
chown -R www-data. $DOCUMENTROOT
nginx -g 'daemon off;'

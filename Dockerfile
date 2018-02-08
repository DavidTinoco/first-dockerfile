FROM debian:stretch
MAINTAINER daviid.tc@gmail.com

ENV DOCUMENTROOT=/var/www/html
ENV SERVER_NAME=_

ADD run.sh /usr/local/bin/run.sh

RUN apt update && \
    apt install nginx -y && \
    chmod +x /usr/local/bin/run.sh && \
    mkdir /tmp/html

ADD html5up-massively /tmp/html

EXPOSE 80
CMD ["run.sh"]

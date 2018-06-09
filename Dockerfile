FROM node:alpine

MAINTAINER inSreeMan@gmail.com

# Copy app to /src
COPY . /src
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

#install php
RUN apk add --no-cache apache2 php7 \
    && echo "IncludeOptional /etc/apache2/vhost.d/*.conf" >> /etc/apache2/httpd.conf \
    && mkdir /run/apache2 /etc/apache2/vhost.d \
    && ln -sf /proc/self/fd/1 /var/log/apache2/access.log \
    && ln -sf /proc/self/fd/1 /var/log/apache2/error.log

#apk add --no-cache apache2 php5-apache2 openrc
#apk add openrc --no-cache

# Install app and dependencies into /src

EXPOSE 80

CMD httpd -D FOREGROUND
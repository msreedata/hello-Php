FROM node:alpine

MAINTAINER inSreeMan@gmail.com

# Copy app to /src.
COPY . /src

#install php
RUN apk add --no-cache php7

# Install app and dependencies into /src

EXPOSE 80

#CMD cd /src && node ./app.js
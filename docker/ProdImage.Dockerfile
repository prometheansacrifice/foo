FROM node:current-alpine
RUN apk add sudo
COPY _container_release /app/_container_release
WORKDIR /app/_container_release
RUN sudo npm i --unsafe-perms -g . --prefix /usr/local
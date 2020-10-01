FROM node:current-alpine

COPY _container_release /app/_container_release
WORKDIR /app/_container_release
RUN npm i --unsafe-perms -g . --prefix /usr/local
FROM node:12.18.4

COPY _release $HOME/app
WORKDIR $HOME/app
RUN ls
RUN npm i --prefix=/usr/local --unsafe-perm  -g .
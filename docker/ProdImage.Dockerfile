FROM node:current-alpine
RUN apk add musl-dev
COPY _container_release /app/_container_release
RUN ls -l /app/_container_release
WORKDIR /app/_container_release
RUN yarn global --prefix /usr/local add --verbose $PWD
# RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
# RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk
# RUN apk add glibc-2.31-r0.apk
RUN ldd /usr/local/bin/FooApp
RUN FooApp
FROM mhart/alpine-node:6
MAINTAINER Yoshua Wuyts <yoshuawuyts@gmail.com>

RUN apk add --no-cache python make xvfb
RUN npm i -g --unsafe-perm dat electron-webrtc

EXPOSE 3282
ENTRYPOINT ["dat"]

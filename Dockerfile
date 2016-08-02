FROM node:0.10
MAINTAINER Jonty Bale
ENV BOTDIR /opt/superscript
WORKDIR ${BOTDIR}
CMD node server.js


FROM node:0.10
MAINTAINER Jonty Bale
ENV BOTDIR /opt/superscript
RUN mkdir ${BOTDIR}
WORKDIR ${BOTDIR}
ADD ./ ${BOTDIR}
RUN npm install
CMD ./run-superscript.sh


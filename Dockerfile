FROM docker.gamechanger.io/nodejs0.10
MAINTAINER Phil Sarin <phil.sarin@gc.com>

ADD . /gc/prerender
WORKDIR /gc/prerender
RUN apt-get update
RUN apt-get install -y libfontconfig
RUN npm install
ENV PORT=80

EXPOSE 80

CMD /usr/bin/node /gc/prerender/server.js

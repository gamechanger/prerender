FROM docker.gamechanger.io/nodejs0.10
MAINTAINER Phil Sarin <phil.sarin@gc.com>

ADD . /gc/prerender
WORKDIR /gc/prerender
RUN apt-get update
RUN apt-get install -y libfontconfig
RUN npm install
RUN mkdir -p /var/log/prerender

ENV PORT 80

EXPOSE 80

CMD ./docker-init

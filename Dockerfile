FROM registry.access.redhat.com/ubi8/nodejs-12

WORKDIR /usr/src/app

ADD package.json .
ADD package-lock.json .
ADD server.js
ADD run.sh

ENTRYPOINT ["node", "run.sh"]


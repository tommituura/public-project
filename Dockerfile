FROM registry.access.redhat.com/ubi8/nodejs-14
# FROM node:lts-buster

WORKDIR /usr/src/app

ADD package.json .
ADD package-lock.json .
ADD server.js .

USER 0:0

RUN npm install --only-production

RUN chmod -R +rwX /usr/src/app
USER 1001:0

ENTRYPOINT ["node", "/usr/src/app/server.js"]

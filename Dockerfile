# FROM registry.access.redhat.com/ubi8/nodejs-14
FROM node:lts-buster

WORKDIR /usr/src/app

ADD package.json .
ADD package-lock.json .
ADD server.js .

RUN npm install --only-production

RUN chown -R 1001:0 /usr/src/app
USER 1001

ENTRYPOINT ["node", "/usr/src/app/server.js"]

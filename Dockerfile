FROM registry.access.redhat.com/ubi8/nodejs-14

WORKDIR /usr/src/app

ADD package.json .
ADD package-lock.json .
ADD server.js .

RUN npm install --only-production

ENTRYPOINT ["node", "/usr/src/app/server.js"]


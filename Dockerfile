FROM registry.access.redhat.com/ubi8/nodejs-14

WORKDIR /usr/src/app
RUN chown -R 1001:0 /usr/src/app
USER 1001

ADD package.json .
ADD package-lock.json .
ADD server.js .

RUN npm install --only-production

ENTRYPOINT ["node", "/usr/src/app/server.js"]


FROM registry.access.redhat.com/ubi8/nodejs-14
# FROM node:lts-buster

WORKDIR /usr/src/app
USER 0:0
RUN chmod +rwx /usr/src/app

ADD package.json .
ADD package-lock.json .
ADD server.js .

# RUN chgrp -R 0 /usr/src/app && chmod -R +rwX /usr/src/app
# USER 1001

RUN npm install --only-production

ENTRYPOINT ["node", "/usr/src/app/server.js"]

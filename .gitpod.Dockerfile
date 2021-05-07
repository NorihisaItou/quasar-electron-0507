FROM node:12-alpine

WORKDIR /app

RUN apk update && \
    npm install --global yarn
RUN export PATH="$(yarn global bin):$PATH"
RUN yarn global add @quasar/cli
RUN yarn install
FROM node:12-alpine

WORKDIR /app

RUN apk update && \
    npm install --global yarn
RUN yarn global add @quasar/cli
RUN yarn install
FROM node:12-alpine

WORKDIR /app

RUN apk update
# ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH
# RUN yarn global add @quasar/cli
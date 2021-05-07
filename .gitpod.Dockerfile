FROM gitpod/workspace-full
USER gitpod
WORKDIR /app

# RUN apk update
# RUN yarn install
# ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH
# RUN yarn global add @quasar/cli
RUN yarn global add n

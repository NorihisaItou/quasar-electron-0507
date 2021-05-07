FROM gitpod/workspace-full-vnc:latest
USER gitpod
ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

RUN sudo apt-get update

RUN bash -c ". .nvm/nvm.sh && nvm install 12 && nvm use 12 && nvm alias default 12"
RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix

RUN sudo apt-get install libgtk-3-dev libxss1 libnss3-dev libasound2 x11-apps x11-utils x11-xserver-utils fonts-ipafont

RUN sudo apt-get install libc6-dev-armhf-cross linux-libc-dev-armhf-cross \
    g++-arm-linux-gnueabihf

RUN sudo apt-get install libc6-dev-arm64-cross linux-libc-dev-arm64-cross \
    g++-aarch64-linux-gnu

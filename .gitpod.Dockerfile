FROM gitpod/workspace-full-vnc:latest
USER gitpod
ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

RUN sudo apt-get update

RUN bash -c ". .nvm/nvm.sh && nvm install 12 && nvm use 12 && nvm alias default 12"
RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix

RUN sudo apt-get install build-essential clang libdbus-1-dev libgtk-3-dev \
    libnotify-dev libgnome-keyring-dev \
    libasound2-dev libcap-dev libcups2-dev libxtst-dev \
    libxss1 libnss3-dev gcc-multilib g++-multilib curl \
    gperf bison python-dbusmock openjdk-8-jre

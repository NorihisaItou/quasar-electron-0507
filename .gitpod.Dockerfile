FROM gitpod/workspace-full-vnc:latest

ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

RUN bash -c ". .nvm/nvm.sh && nvm install 12 && nvm use 12 && nvm alias default 12"
RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix

RUN sudo apt-get update && \
    sudo apt-get install -y libgtk-3-dev && \
    sudo apt-get install -y libgl1-mesa-dev xorg-dev && \
    sudo rm -rf /var/lib/apt/lists/*
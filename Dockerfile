FROM ubuntu:xenial-20190720
MAINTAINER developer@cloud-elements.com
ENV USER=root
ENV CHURROS_TEMPLATE="/qaAutomation/sauce.json"
ENV CHURROS_USER="claude.elements.qa+circleci@gmail.com"
ENV CHURROS_URL="snapshot.cloud-elements.com"
ENV CHURROS_PASSWORD="Cl0ud3l3m3nts!"
ENV CHURROS_ENV="snapshot"
ENV DISPLAY=:99
RUN apt-get update
RUN apt-get install curl -yq
RUN apt-get install ssh -yq
RUN apt-get install git -yq
RUN apt-get install build-essential libssl-dev -yq
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
CMD source ~/.bashrc
RUN apt-get install nodejs -yq
RUN apt-get install firefox -yq
RUN apt-get install chromium-browser -yq
RUN apt-get install xvfb -yq
RUN apt-get install xsel -yq
RUN apt-get install unzip -yq
RUN apt-get install libgconf2-4 -yq
RUN apt-get install libncurses5 -yq
RUN apt-get install libxml2-dev -yq
RUN apt-get install libxslt-dev -yq
RUN apt-get install libz-dev -yq
RUN apt-get install fonts-liberation -yq
RUN apt-get install libappindicator3-1 -yq
RUN apt-get install xclip -yq
RUN apt-get install chromium-chromedriver
RUN echo $NVM_DIR
RUN echo $PATH
RUN npm -v
CMD nvm -v
# Define default command.
ENTRYPOINT /bin/bash

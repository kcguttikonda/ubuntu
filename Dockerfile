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
RUN apt-get install firefox
RUN apt-get install chromium-browser
RUN apt-get install xvfb
RUN apt-get install xsel
RUN apt-get install unzip
RUN apt-get install libgconf2-4
RUN apt-get install libncurses5
RUN apt-get install libxml2-dev
RUN apt-get install libxslt-dev
RUN apt-get install libz-dev
RUN apt-get install fonts-liberation
RUN apt-get install libappindicator3-1
RUN apt-get install xclip


RUN npm -v
CMD nvm -v
# Define default command.
ENTRYPOINT /bin/bash

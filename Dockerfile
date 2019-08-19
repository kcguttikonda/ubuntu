FROM ubuntu:latest
MAINTAINER developer@cloud-elements.com

ENV USER=root
ENV CHURROS_TEMPLATE="/qaAutomation/sauce.json"
ENV CHURROS_USER="claude.elements.qa+circleci@gmail.com"
ENV CHURROS_URL="snapshot.cloud-elements.com"
ENV CHURROS_PASSWORD="Cl0ud3l3m3nts!"
ENV CHURROS_ENV="snapshot"
ENV DISPLAY=:99


RUN apt-get update &&\
    apt-get install curl -yq \
    ssh -yq \
    git -yq \
    build-essential libssl-dev -yq &&\
RUN \
  apt-get update && \
# Install Python 3 stuffs
  apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash && \ 
# Install stuffs to support UI browser testing
  apt-get install -yq \
  install build-essential libssl-dev -y \
  nodejs \
  ssh \
  git \
  git-core  \
  xvfb  \
  xsel  \
  unzip  \
  libgconf2-4 \
  libncurses5 \
  libxml2-dev \
  libxslt-dev \
  libz-dev \
  wget \
  fonts-liberation \
  libappindicator3-1 \
  xclip && \
# Define default command.
ENTRYPOINT ["bash"]

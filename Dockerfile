FROM ubuntu:latest
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
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
CMD source ~/.bashrc
CMD source ~/.profile
RUN node -v
RUN npm -v
RUN nvm -v
# Define default command.
ENTRYPOINT ["bash"]

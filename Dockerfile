FROM ubuntu:latest
MAINTAINER developer@cloud-elements.com
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
RUN apt-get install libgconf2-4 libxss1 -yq
RUN apt-get install libcurl3 -yq
RUN apt-get install xclip -yq
RUN echo $NVM_DIR
RUN echo $PATH
RUN npm -v
CMD nvm -v
RUN wget -q "https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz" -O /tmp/geckodriver.tgz \
    && tar zxf /tmp/geckodriver.tgz -C /usr/bin/ \
    && rm /tmp/geckodriver.tgz

# chromeDriver v2.45
RUN wget -q "https://chromedriver.storage.googleapis.com/76.0.3809.68/chromedriver_linux64.zip" -O /tmp/chromedriver.zip \
    && unzip /tmp/chromedriver.zip -d /usr/bin/ \
    && rm /tmp/chromedriver.zip

# chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install
ENTRYPOINT /bin/bash

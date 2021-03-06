#
# Ubuntu Node.js Dockerfile
#
# https://github.com/dockerfile/ubuntu/blob/master/Dockerfile
# https://docs.docker.com/examples/nodejs_web_app/
#

# Pull base image.
FROM ubuntu:14.04

#replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

#update the repository sources list
# and install dependencies
RUN apt-get update \
	&& apt-get install -y curl \
	&& apt-get -y autoclean

#nvm environment variables
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 8.0.0

# install nvm
# https://github.com/creationix/nvm#install-script
RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash
# install node and npm
RUN source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

# add node and npm to path so the commands are available
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# confirm installation
RUN node -v
RUN npm -v


# install git
RUN apt-get install -y git git-core

# ADD start.sh /tmp/
# RUN chmod +x /tmp/start.sh




WORKDIR nodedocker
# cd /tmp

# try to remove the repo if it already exists
# rm -rf nodedocker; true

#RUN git clone https://github.com/pallaviataws/nodedocker.git

# COPY package.json package-lock.json .



# Bundle app source
COPY . .

RUN npm install


EXPOSE 3000



#RUN npm start
CMD [ "npm", "start" ]
# not working CMD ./tmp/start.sh

# WORKDIR /usr/src/app
# COPY package.json .
# RUN npm install

# ADD startServer.sh 

# RUN chmod +x /tmp/startServer.sh

# CMD startServer.sh

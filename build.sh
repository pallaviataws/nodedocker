#!/usr/bin/env bash


# confirm docker daemon is running and connected
sudo docker version

# build the image based on the Dockerfile and name it `nvm`
# cache should be enabled. the git should pull the code everytime, if cache is enabled
sudo docker build  -t nvm .

# confirm image is present
sudo docker images

# enter container terminal
sudo docker run -p 8090:8080 -d nvm 

# run docker with nginx
cd ../nginx

sudo docker build -t nginx .
# sudo docker run -p 8000:80 -d nginx




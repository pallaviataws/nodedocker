#!/usr/bin/env bash

# confirm docker daemon is running and connected
sudo docker version

# build the image based on the Dockerfile and name it `nvm`
sudo docker build -t nvm .

# confirm image is present
sudo docker images

# enter container terminal
sudo docker run -it nvm bash

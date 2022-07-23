#!/bin/bash
sudo apt-get -y install screen

docker build -t display .
mkdir -p img
mkdir -p cuenta
screen -S docker -d -m bash -c "docker run -it --rm -v $PWD/img:/app/Almacenamiento/img -v $PWD/cuenta:/root  display"
screen -S web -d -m bash -c "cd img/ && python3 -m http.server 8080"



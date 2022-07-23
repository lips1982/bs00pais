#!/bin/bash
sudo apt-get -y install screen

docker build -t display .
mkdir -p img
mkdir -p cuentas
screen -S docker -d -m bash -c "docker run -it --rm -v $PWD/img:/app/Almacenamiento/img -v $PWD/cuentas:/root display"
screen -S web -d -m bash -c "cd img/ && python3 -m http.server 8080"



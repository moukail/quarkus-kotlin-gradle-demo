#!/usr/bin/env bash

PATH=$PATH:/root/.jbang/bin

quarkus version

# create new project if not exists
if [ ! -d "./src" ]; then
  . /home/install.sh
fi

quarkus dev

tail -f /dev/null

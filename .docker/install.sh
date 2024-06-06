#!/usr/bin/env bash

rm -rf ./*

echo "-------------------------------------------------------------------"
echo "-                create quarkus project                           -"
echo "-------------------------------------------------------------------"
quarkus create app --gradle-kotlin-dsl --kotlin --name=quarkus-demo --output-directory=./ --dockerfiles nl.moukafih:demo:1.0.0

chmod -R a+rw demo

rsync -a demo/ ./
rm -rf demo

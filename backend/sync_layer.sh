#!/usr/bin/env bash

npm i
rm -Rf ./build/nodejs
rm ./build/base.zip
mkdir ./build/nodejs
cp -r node_modules ./build/nodejs/

cd ./build/
zip -r base.zip nodejs

#!/usr/bin/env bash

echo "Running 'npm i'"
npm install

echo "Compressing the project"
PREFIX="backend"
TIME_STAMP=$(date +"%d-%m-%Y_%H-%M-%S")
EXTENSION=".zip"

BUILD_NAME="$PREFIX-$TIME_STAMP$EXTENSION"


zip -r "$BUILD_NAME" package.json package-lock.json src/

if [ -f "$BUILD_NAME" ]; then
  if mv "$BUILD_NAME" ./build/; then
    echo "File moved to ./build/ successfully."
  else
    echo "Failed to move the file." >&2
  fi
else
  echo "File $BUILD_NAME does not exist." >&2
fi

aws s3 mv ./build/$BUILD_NAME s3://navalport/app/ --profile tiagoaraujo

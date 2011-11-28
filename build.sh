#!/bin/bash

APP_NAME=SELBlocks  # short-name, jar and xpi files name. Must be lowercase with no spaces
mkdir build
cp -R *.sh ./build
cp -R *.rdf ./build
cp -R *.manifest ./build
cp -R chrome ./build
cp -R test ./build

echo "Generating $APP_NAME.xpi..."
cd build
zip -r ../$APP_NAME.xpi *
cd ..


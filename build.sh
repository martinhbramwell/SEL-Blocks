#!/bin/bash

find . -name "*~" -print0 | xargs -0 rm -rf

APP_NAME=sel-blocks_1.3.1a@chris.noe  # short-name, jar and xpi files name. Must be lowercase with no spaces
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


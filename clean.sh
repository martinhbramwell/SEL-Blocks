#!/bin/bash

APP_NAME=SELBlocks  # short-name, jar and xpi files name. Must be lowercase with no spaces
echo "Removing temporary files and $APP_NAME.xpi..."
echo "You can run build.sh to recreate them."

rm -f $APP_NAME.xpi
rm -fr build


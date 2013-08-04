#!/bin/bash

echo "Removing temporary files and the 'xpi' file..."
echo "You can run build.sh to recreate them."

find . -name "*~" -print0 | xargs -0 rm -rf

rm -f *.xpi
rm -fr build


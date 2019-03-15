#!/bin/bash
./make-package-osx.sh

cd ..

mkdir ~/Documents/Max\ 7/Packages/gigaverb-64
mkdir ~/Documents/Max\ 7/Packages/gigaverb-64/externals

cp -r package/gigaverb-64 ~/Documents/Max\ 7/Packages/

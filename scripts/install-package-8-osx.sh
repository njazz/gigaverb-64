#!/bin/bash
./make-package-osx.sh

cd ..

mkdir ~/Documents/Max\ 8/Packages/a-chaos-64
mkdir ~/Documents/Max\ 8/Packages/a-chaos-64/externals

cp -r package/a-chaos-64 ~/Documents/Max\ 7/Packages/

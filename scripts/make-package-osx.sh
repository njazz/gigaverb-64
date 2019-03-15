#!/bin/bash
./build.sh

cd ..

mkdir package
mkdir package/gigaverb-64
mkdir package/gigaverb-64/externals
mkdir package/gigaverb-64/help


cp -r build/*.mxo package/gigaverb-64/externals/
cp -r help/*.maxhelp package/gigaverb-64/help/

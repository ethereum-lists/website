#!/usr/bin/env sh

rm -rf output
mkdir output/chains -p

cd chains
./gradlew run

cp -v output/*.json ../output/chains

cd ..

cp -rv tokens/tokens output
cp -rv 4bytes/signatures output
mv output/signatures output/4bytes
cp index.html output

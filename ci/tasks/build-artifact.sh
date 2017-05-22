#!/usr/bin/env bash
set -e


curl -L -o gradle.zip "https://services.gradle.org/distributions/gradle-3.5-bin.zip"
unzip gradle.zip
cd spring-music-repo 
export GIT_VERSION=$(git describe --always)
../gradle-3.5/bin/gradle build -Pversion=$GIT_VERSION --console plain

cd ..
cp spring-music-repo/build/libs/spring-music.jar binaries/spring-music-$GIT_VERSION.jar
ls -l binaries/

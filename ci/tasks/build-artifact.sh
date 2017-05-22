#!/usr/bin/env bash
set -e


curl -L -o gradle.zip "https://services.gradle.org/distributions/gradle-3.5-bin.zip"
unzip gradle.zip
cd spring-music-repo 
export GIT_VERSION=$(git describe --always)
../gradle-3.5/bin/gradle build -Pversion=$(git_version) --console plain

cd ..
pwd
cp build/libs/*.jar binaries/spring-music-$(git_version).jar
ls -l binaries/

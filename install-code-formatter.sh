#!/bin/bash

#register hooks path
mkdir -p ~/hooks/
cp pre-commit ~/hooks/
git config --global core.hooksPath ~/hooks/

#install google-java-format
rm -rf google-java-format
git clone https://github.com/google/google-java-format.git
cd google-java-format
mvn clean install
mv core/target/google-java-format-*-all-deps.jar ~/hooks/google-java-format.jar

#install js-beautify
npm -g uninstall js-beautify
npm -g install js-beautify
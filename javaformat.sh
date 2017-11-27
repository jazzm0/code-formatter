#!/usr/bin/env bash

for i in `find $1 -name *.java`
do
    echo "format" ${i} "with google-java-format"
    java -jar ~/hooks/google-java-format.jar -r -a ${i}
done
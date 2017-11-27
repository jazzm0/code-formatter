#!/usr/bin/env bash

for i in `find $1 -name *.js`
do
    if [[ ${i} != *"node_modules"* && ${i} != *"eslintrules"* ]]; then
        js-beautify -r -n -j ${i}
    fi
done
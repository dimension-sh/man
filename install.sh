#!/bin/bash

for file in pages/*; do
    filename=$(basename -- "$file")
    section="${filename##*.}"
    cp $file /usr/local/share/man/man${section}/
done
mandb -q
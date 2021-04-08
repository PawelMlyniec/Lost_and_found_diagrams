#!/bin/sh

rm -f *.md

for f in src/*.puml; do
    WITHOUT_PREFIX=${f#src/}
    NEW_FILE_NAME="${WITHOUT_PREFIX%.puml}.md"
    cp -- "$f" $NEW_FILE_NAME
    sed -i '1s/.*/```plantuml/' $NEW_FILE_NAME
    sed -i '$s/.*/```/' $NEW_FILE_NAME
done

git add .
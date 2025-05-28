#!/bin/sh

# run pagefind to generate index for search (only appear in logs)
# npx -y pagefind --site out --serve
# npx -y pagefind --site out 

# check if docs/ is empty
# if [ -z "$(ls -A docs/)" ]; then
#    echo "The docs/ folder is empty"
# else
#    echo "The docs/ folder is not empty"
#    echo "Remove All Contents of docs/"
#    # remove contents
#    rm -r docs/*
# fi

echo "Copy Contents from public/ to ../docs/"
cp -a public/. ../docs/



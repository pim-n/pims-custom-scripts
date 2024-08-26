#!/usr/bin/bash

PATH_TO_REMOVE=/home/$(whoami)/.local/bin
TO_DELETE=$()

TO_DELETE=()

for i in "$PWD/scripts"/*; do
    TO_DELETE+=("$(basename "$i")")
done

for filename in "${TO_DELETE[@]}"; do
    if [ -e "$PATH_TO_REMOVE/$filename" ]; then
        rm "$PATH_TO_REMOVE/$filename"
        echo "Removed $PATH_TO_REMOVE/$filename"
    else
        echo "File $PATH_TO_REMOVE/$filename does not exist"
    fi
done

NUM_OF_FILES=${#TO_DELETE[@]}
echo $NUM_OF_FILES scripts removed from $PATH.

#!/usr/bin/bash

PATH_TO_INSTALL=/home/$(whoami)/.local/bin
FILES=($PWD/scripts/*)
NUM_OF_FILES=${#FILES[@]}

for f in ${FILES[*]}
do
    final_path=$PATH_TO_INSTALL/$(basename ${f})
    rm $final_path 2> /dev/null
    chmod +x $f
    ln -s $f $final_path
done

echo $NUM_OF_FILES scripts successfully installed to $PATH_TO_INSTALL.

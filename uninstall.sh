#!/usr/bin/bash

PATH=/home/$(whoami)/.local/bin
TO_DELETE=($PATH/pcs*)
NUM_OF_FILES=${#TO_DELETE[@]}

/usr/bin/rm -f ${TO_DELETE[@]}
echo $NUM_OF_FILES scripts removed from $PATH.

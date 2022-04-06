#!/bin/bash

name=${1%.*}.h
IFS_BAK=${IFS}
IFS="
"

declare -a lines
lines=( $(cat $1 | grep -E '^[a-z].*\)$') )
echo "" > $name
for line in "${lines[@]}"; do
    echo ${line%\{}\; >> $name
done
IFS=${IFS_BAK}
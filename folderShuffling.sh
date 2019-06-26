#!/bin/bash

RANDOMAN="../randomised_${PWD##*/}"

rm -rf "$RANDOMAN"
mkdir "$RANDOMAN"

find . -type f |
shuf |  # shuffle the input lines, i.e. apply a random permutation
nl -n rz |  # add line numbers 000001, …
while read -r number name; do
  ext=${name##*/}  # try to retain the file name extension
  case $ext in
    *.*) ext=.${ext##*.};;
    *) ext=;;
  esac
  cp "$name" "$RANDOMAN/${name%/*}/$number$ext"
done

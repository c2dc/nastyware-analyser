#!/bin/sh

FILES="distmatrix.txt  outtree-* clusters-of-*  outfile-*"

for i in $FILES; do
    rm -f $i
done

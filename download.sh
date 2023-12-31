#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
filename=$(basename "$1")
zippath="$DIR/$filename"

wget --no-check-certificate $1 -P $DIR
unzip -o $zippath -d $DIR
rm $zippath

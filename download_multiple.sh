#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for i in "$@"
do
case $i in
    -r|--reload-nginx)
    RELOAD_NGINX=true
    ;;
    *)

    ;;
esac
done

input="$DIR/SSL_URLS"
while IFS= read -r val
do
  filename=$(basename "$val")
  zippath="$DIR/$filename"
  wget $val -P $DIR
  unzip -o $zippath -d $DIR
  rm $zippath
done < "$input"

if [ "$RELOAD_NGINX" ]; then echo "reload"; fi

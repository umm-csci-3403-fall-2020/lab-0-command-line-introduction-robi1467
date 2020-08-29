#!/usr/bin/env bash

####Constans####
FILE_NAME=$1
FILE_BASE=$(basename -s .tgz "$FILE_NAME")
#Creating a TMP directory Found out about the X thing from Code-Maven... The URL is way to long to include
#in a comment
TMP_DIR=$(mktemp -d -t clean-XXXXXXXX)

####Main####
echo "$FILE_BASE"

tar -zxf "$FILE_NAME" --directory="$TMP_DIR"
#Remove temp Directory
rm -rf "$TMP_DIR"

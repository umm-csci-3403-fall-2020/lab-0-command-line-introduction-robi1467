#!/usr/bin/env bash

FILE_NAME=$1
FILE_BASE=$(basename -s .tgz "$FILE_NAME")
echo "$FILE_BASE"
SCRATCH=$2
tar -zxf "$FILE_NAME" --directory="$2"


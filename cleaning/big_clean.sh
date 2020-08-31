#!/usr/bin/env bash
#This is a script that will unarchive a file and then removed specified files
#AUSTIN ROBINSON

####Constans####
FILE_NAME=$1
FILE_BASE=$(basename -s .tgz "$FILE_NAME") #file name with out extension
HERE=$(pwd)
#Creating a TMP directory Found out about the X thing from Code-Maven... The URL is way to long to include
#in a comment
TMP_DIR=$(mktemp -d -t clean-XXXXXXXX)

####Main####

#Extracting files
tar -zxf "$FILE_NAME" --directory="$TMP_DIR"
cd "$TMP_DIR" || exit

#Removing files
grep -Rl "DELETE ME" | xargs rm

#Archiving file
TAR_NAME=cleaned_"$FILE_NAME"
tar -czf "$TAR_NAME" "$FILE_BASE"

#Moving archived file
mv "$TMP_DIR"/"$TAR_NAME" "$HERE"

#Remove temp Directory
rm -rf "$TMP_DIR"

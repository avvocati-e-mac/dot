#!/bin/sh

# This script will compile or run another finishing operation on a document. I
# have this script run via vim.
# Preso da Luke Smith https://github.com/LukeSmithxyz/voidrice/blob/master/.local/bin/compiler

file=$(greadlink -f "$1") # https://stackoverflow.com/questions/1055671/how-can-i-get-the-behavior-of-gnus-readlink-f-on-a-mac
dir=${file%/*}
base="${file%.*}"
ext="${file##*.}"

cd "$dir" || exit
	
case "$ext" in
	md)	pandoc "$file" --pdf-engine=xelatex -o "$base".pdf
esac

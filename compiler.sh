#!/bin/sh

# This script will compile or run another finishing operation on a document. I
# have this script run via vim.
# Preso da Luke Smith https://github.com/LukeSmithxyz/voidrice/blob/master/.local/bin/compiler
# Sto testando script che funzioni sia su macOS che su Linux usando un if statment e uname per differenziare i due sistemi operativi

system=$(uname)

if $system="Linux"
input=$(readlink -f "$1") # Script originale Luke Smith con mia variabile aggiuntiva
	else
input=$(greadlink -f "$1") # https://stackoverflow.com/questions/1055671/how-can-i-get-the-behavior-of-gnus-readlink-f-on-a-mac
fi

# C'è un problema con il comando (g)readlink e la conversione degli eventuali spazi bianchi nel perocroso del file se il nome dello stesso è composto di solo una parola

file="$input"
dir=${file%/*}
base="${file%.*}"
ext="${file##*.}"

cd "$dir" || exit
	
case "$ext" in
	md)	pandoc "$file" --pdf-engine=xelatex -o "$base".pdf
esac

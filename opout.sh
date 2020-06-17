#!/bin/sh

# Preso da Luke Smith https://github.com/LukeSmithxyz/voidrice/blob/master/.local/bin/opout
# Apre il PDF che ha lo stesso nome del file MD lavorato in quel momento in Vim
# Deve essere stato prima generato (da script compile.sh)

basename="$(echo "$1" | sed 's/\.[^\/.]*$//')"

case "$1" in
	*.tex|*m[dse]) open "$basename".pdf >/dev/null 2>&1 ;;
esac

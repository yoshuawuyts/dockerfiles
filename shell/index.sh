#!/bin/sh

filepath="/usr/src/app/cmd.sh"

if [ ! -f "$filepath" ]; then
  printf 'service-shell: expected %s to exist. Exiting. \n' "$filepath"
  exit 1
fi

sh "$filepath"

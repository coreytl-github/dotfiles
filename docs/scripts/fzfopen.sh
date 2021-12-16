#!/bin/sh

printf "What program would you like to open a file with?: "
read OPENWITH

if [ $OPENWITH = "v" ]; then
  nvim $(fzf)
else
  $OPENWITH $(fzf)
fi

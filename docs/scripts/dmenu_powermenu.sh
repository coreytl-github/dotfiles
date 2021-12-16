#!/bin/sh
#+TITLE: DMenu Shutdown
#+AUTHOR: Corey Truscott

. "$HOME/.cache/wal/colors.sh"

CHOICE=`echo -e "no\nyes" | dmenu -nb "$color0" -nf "$color15" -sb "$color1" -c -l 20 -i -p "are you sure you want to shutdown?"`

if [ "$CHOICE" = "yes" ]; then
    echo "powering off..."
    poweroff
else
    echo "exiting script..."
fi

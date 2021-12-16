#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main -c $(dirname $0)/config.ini &
polybar top_external -c $(dirname $0)/config.ini &

#!/bin/sh
# show on shell start
clear
CYAN='\e[36m'
WHITE='\e[39m'
UP=`uptime -p | sed -r 's/^.{3}//'`
OS_NAME=`uname --nodename | awk '{ print tolower($1) }'`

FILESYSTEM=`df -h 2> /dev/null | grep "Filesystem"`
DRIVE1=`df -h 2> /dev/null | grep "449G"`
DRIVE2=`df -h 2> /dev/null | grep "731G"`

figlet ${OS_NAME}

echo "\n${CYAN}Uptime:${WHITE}"
echo "  ${UP}"

echo "\n${CYAN}Drives:${WHITE}"
echo "  ${FILESYSTEM}"
echo "  ${DRIVE1}"
echo "  ${DRIVE2}"

[ "(stat -c %y $HOME/docs/scripts/weather.txt | cut -d' ' -f1" != "$(date '+%Y-%m-%d')" ] &&
  rm -f $HOME/docs/scripts/weather.txt &&
    curl -s wttr.in/Newton+Abbot?T >> $HOME/docs/scripts/weather.txt

sed -n '2,7p' $HOME/docs/scripts/weather.txt

OUTPUT=$HOME/pix/screenshots/$(date +%s_%h%d_%H:%M:%S).png

DMENU_SCRIPT=`echo "selection\nfullscreen" | dmenu -p "screenshot type"`

if [ $DMENU_SCRIPT="fullscreen" ] then;
  maim $OUTPUT
fi

if [ $DMENU_SCRIPT="selection" ] then;
  maim -s $OUTPUT
fi

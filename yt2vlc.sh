#!/bin/bash
id=$(wmctrl -l | grep -oP "(?<=)(0x\w+)(?=.*Firefox)")
sleep 0.3
xdotool key --window $id "ctrl+l"
xdotool key --window $id "ctrl+c"
link=$(xclip -o)
res=$(you-get -p vlc \"$RESULT\")

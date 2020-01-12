#!/bin/bash
pids=$(nohup wmctrl -lp | grep -oE "0 [0-9]{3,6} ")
for pid in $pids
do
  xdID=$(xdotool search --pid $pid | tail -1)
  nohup xdotool windowminimize $xdID &>/dev/null & 
done

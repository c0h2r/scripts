#!/bin/bash
isNeoVimRunning=$(wmctrl -l | grep nvim | wc -l)
desktopsCount=$(wmctrl -d | wc -l)
nvimOnDesktop=$(wmctrl -l | grep nvim)
if [[ $desktopsCount = 1 ]]
then
  wmctrl -n 2
fi
if [[ $isNeoVimRunning = 0 ]]
then
  nohup konsole --hide-menubar --fullscreen --profile NeoVim &>/dev/null &
else 
  if [[ ${nvimOnDesktop:12:1} = 0 ]]
  then
    wmctrl -r nvim -t 1
  else
    wmctrl -R nvim
  fi
fi

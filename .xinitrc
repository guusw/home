#!/bin/bash

# Required display setup for NVIDIA Optimus
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# Load resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

numlockx &
exec i3 --shmlog-size=26214400
xset r rate 170 30

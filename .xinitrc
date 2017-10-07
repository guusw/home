#!/bin/bash

# Required display setup for NVIDIA Optimus
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --output HDMI-1-1 --primary --pos 0x0 --output eDP-1-1 --pos 1920x0
# Change DPI for correct context menu sizes in vscode
xrandr --dpi 96

# Load resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xmodmap ~/.Xmodmap

numlockx &
exec i3 --shmlog-size=26214400
xset r rate 170 30

# Rebind caps-lock to escape (vim)
setxkbmap -option caps:escape

#!/bin/bash

# Required display setup for NVIDIA Optimus
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# Load resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xset r  rate 180 30
numlockx &
exec i3
#exec dbus-launch --exit-with-session i3

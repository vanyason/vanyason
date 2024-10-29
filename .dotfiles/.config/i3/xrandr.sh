#!/bin/sh
intern=eDP-1-1
extern=DP-1

if xrandr | grep "${extern} disconnected"; then
    xrandr  --auto
    xrandr  --output "$intern" --primary --mode 1920x1080 --rate 60
else
    xrandr  --output "$extern" --primary --mode 3440x1440 --pos 0x0 --rotate normal \
            --output "$intern" --mode 1920x1080 --pos 760x1440 --rotate normal
fi

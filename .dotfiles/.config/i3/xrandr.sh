#!/bin/sh
intern=eDP-1-1
extern=DP-1

if xrandr | grep "${extern} disconnected"; then
    echo "external screen disconnected"
    xrandr  --output "$extern" --off \
            --output "$intern" --mode 1920x1080 --rate 60
else
    echo "external screen connected"
    xrandr  --output "$extern" --primary --mode 3440x1440 --pos 0x0 --rotate normal \
            --output "$intern" --mode 1920x1080 --pos 760x1440 --rotate normal
fi

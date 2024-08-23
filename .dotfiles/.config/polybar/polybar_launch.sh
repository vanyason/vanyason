#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# detect monitors you can find yours with
# xrandr --query | grep " connected" | cut -d" " -f1
# or arandr
# intern=eDP-1-1
# extern=DP-1
# current_monitor=$intern
# if xrandr | grep "$extern connected"; then
#     current_monitor=$extern
# fi

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar --reload --config="~/.config/polybar/config.ini" top 2>&1 | tee -a /tmp/polybar.log & disown
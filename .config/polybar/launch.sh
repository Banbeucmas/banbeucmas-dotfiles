#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2

if [[ $(xrandr | grep eDP1) == *'eDP1 connected'* ]]; then
    polybar -r left_bar & polybar -r right_bar &
    echo "Main bar launched..."
fi

if [[ $(xrandr | grep HDMI1) == *'HDMI1 connected'* ]]; then
    polybar -r sub_bar &
    echo "Sub bar launched"
fi


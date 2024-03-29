#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config-i3-new top &
polybar -c ~/.config/polybar/config-i3-new bottom &

echo "Bars launched..."

#!/bin/sh

# Laptop display
DEFAULT="eDP1"
# External display
EXTERNAL="DP1"

while :; do
	if  xrandr --current | grep -q "$EXTERNAL connected"; then
		xrandr --output $EXTERNAL --primary --auto --output $DEFAULT --off
	else
		xrandr --output $DEFAULT  --primary --auto
	fi
	sleep 300 # 5 mins ( N mins * 60 secs )
done
exit $?


#!/bin/bash
xsetroot -name "Wait..."
while true; do
	BAT=
	for bat in /sys/class/power_supply/BAT*; do
		if [ -f "$bat/capacity" ]; then
			BAT="$(basename $bat): $(cat "$bat/capacity") "
		fi
	done
	BAT="${BAT% }"
	DATETIME=$(date '+%d.%m %H:%M')
	xsetroot -name "$BAT | $DATETIME"
	sleep 30
done

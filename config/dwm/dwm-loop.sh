#!/bin/sh

cleanup() {
    pkill -P $$ # Kill children
    wait
    exit 0
}

trap cleanup INT TERM EXIT

#set -x

[ -z "$DISPLAY" ] && export DISPLAY=:0

while true; do
	hsetroot -solid black
	which setxkbmap && setxkbmap -layout us,ru -option grp:alt_shift_toggle \
		|| echo "no setxkbmap"
	#which picom && picom -b --config ~/dots/dwm/picom.conf
	#	|| echo "no picom"
	# Child processes
	#which flameshot && { flameshot & }
	#	|| echo "no flameshot"
	pkill dwm-bar.sh
	~/.terminal-dotfiles/config/dwm/dwm-bar.sh &
	# Start dwm
	dwm
	sleep 1
done

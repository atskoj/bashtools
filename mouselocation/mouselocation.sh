#!/bin/bash
while true; do
	echo -e '\e[1A\e[K'$(xdotool getmouselocation)
done

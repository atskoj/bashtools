#!/bin/bash

while true; do
	
	echo -e '\e[1A\e[K'$(lscpu | grep -i -e "cpu mhz")

done

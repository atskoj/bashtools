#!/bin/bash

while getopts i: flag
do
	case "${flag}" in
		i) input=${OPTARG};;
	esac
done

#echo input for debugging purposes
echo $input

#if no input given install all, else install that specific module. maybe point towards a specific install.sh file in each individual module?

if [ -z "$input" ]
then 
	echo full install
fi

if [ -n "$input" ]
then
	echo input received, not empty
	case "$input" in
		time)
			echo "time install"
			;;
		cpuclock)
			echo "cpuclock install"
			;;
		mouselocation)
			echo "mouselocation install"
			;;
		performance)
			echo "performance install"
			;;
		powersave)
			echo "powersave install"
			;;
		*)
			#else, return command not found
			echo "$input" is not a valid module
			;;

	esac

fi

#chmod +x cpuclock/cpuclock.sh
#mv cpuclock/cpuclock.sh /usr/local/bin/cpuclock

#chmod +x mouselocation/mouselocation.sh
#mv mouselocation/mouselocation.sh /usr/local/bin/mouselocation

#chmod +x performance/performance.sh
#mv performance/performance.sh /usr/local/bin/performance

#chmod +x time/time.sh
#mv time/time.sh /usr/local/bin/time

#chmod +x powersave/powersave.sh
#mv powersave/powersave.sh /usr/local/bin/powersave



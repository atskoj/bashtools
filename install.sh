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
	echo "installing all modules"

	chmod +x cpuclock/cpuclock.sh
	cp cpuclock/cpuclock.sh /usr/local/bin/cpuclock

	chmod +x cpuclock/cpuclocklive.sh
	cp cpuclock/cpuclocklive.sh /usr/local/bin/cpuclocklive

	chmod +x mouselocation/mouselocation.sh
	cp mouselocation/mouselocation.sh /usr/local/bin/mouselocation

	chmod +x performance/performance.sh
	cp performance/performance.sh /usr/local/bin/performance

	chmod +x livetime/livetime.sh
	cp livetime/livetime.sh /usr/local/bin/livetime

	chmod +x powersave/powersave.sh
	cp powersave/powersave.sh /usr/local/bin/powersave


fi

if [ -n "$input" ]
then
	echo input received, not empty
	case "$input" in
		livetime)
			echo "installing livetime"
			chmod +x livetime/livetime.sh
			cp livetime/livetime.sh /usr/local/bin/livetime
			;;
		cpuclock)
			echo "installing cpuclock"
			echo "installing cpuclocklive"
			chmod +x cpuclock/cpuclock.sh
			cp cpuclock/cpuclock.sh /usr/local/bin/cpuclock
			chmod +x cpuclock/cpuclocklive.sh
			cp cpuclock/cpuclocklive.sh /usr/local/bin/cpuclocklive
			;;
		mouselocation)
			echo "installing mouselocation"
			chmod +x mouselocation/mouselocation.sh
			cp mouselocation/mouselocation.sh /usr/local/bin/mouselocation
			;;
		performance)
			echo "installing performance"
			chmod +x performance/performance.sh
			cp performance/performance.sh /usr/local/bin/performance
			;;
		powersave)
			echo "installing powersave"
			chmod +x powersave/powersave.sh
			cp powersave/powersave.sh /usr/local/bin/powersave
			
			;;
		*)
			#else, return command not found
			echo "$input" is not a valid module
			;;

	esac

fi

#chmod +x cpuclock/cpuclock.sh
#cp cpuclock/cpuclock.sh /usr/local/bin/cpuclock

#chmod +x cpuclock/cpuclocklive.sh
#cp cpuclock/cpuclocklive.sh /usr/local/bin/cpuclocklive

#chmod +x mouselocation/mouselocation.sh
#cp mouselocation/mouselocation.sh /usr/local/bin/mouselocation

#chmod +x performance/performance.sh
#cp performance/performance.sh /usr/local/bin/performance

#chmod +x time/time.sh
#cp time/time.sh /usr/local/bin/time

#chmod +x powersave/powersave.sh
#cp powersave/powersave.sh /usr/local/bin/powersave



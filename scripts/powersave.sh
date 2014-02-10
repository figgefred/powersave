#!/bin/sh
case $1/$2 in
  pre/*)
	/usr/bin/powersave false ;
	echo 0 >/usr/local/etc/powersave/active ;;
  post/*)
	if cat /sys/class/power_supply/ADP1/online | grep 0 > /dev/null 2>&1
	then
		/usr/bin/powersave true
	else
		/usr/bin/powersave false
	fi
	;;
esac

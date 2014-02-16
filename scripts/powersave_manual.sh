#!/bin/sh
do_powersave() {
	/home/scripts/powersave/scripts/powersave true &&
	echo 1 > /usr/local/etc/powersave/active
	notify-send "Power save profile active." --icon=dialog-information
}
no_powersave() {
	/home/scripts/powersave/scripts/powersave false &&
	echo 0 > /usr/local/etc/powersave/active
	notify-send "Normal power profile actives." --icon=dialog-information
}
case "$1" in
	true) # Enable power saving settings on battery
		do_powersave
	;;
	false) # Return to default on AC power
		no_powersave
	;;
	''|-z)
		if cat /sys/class/power_supply/ADP1/online | grep 0 > /dev/null 2>&1
		then
			do_powersave
		else
			no_powersave
		fi
	;;
esac
exit 0



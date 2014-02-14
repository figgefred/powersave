#!/bin/sh
case $1/$2 in
  pre/*)
	/usr/bin/powersave false ;;
  post/*)
	/usr/bin/powersave
	;;
esac

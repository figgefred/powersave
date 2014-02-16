#!/bin/sh
case $1/$2 in
  hibernate|suspend|pre/*)
	/usr/bin/powersave false ;;
  thaw|resume|post/*)
	/usr/bin/powersave
	;;
esac

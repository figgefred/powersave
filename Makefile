install:
	install -D scripts/powersave_manual $(DESTDIR)/usr/bin/powersave
	install -D rules/50-powersave.rules $(DESTDIR)/lib/udev/rules.d/50-powersave.rules
#	install -D rules/51-eth-down.rules $(DESTDIR)/lib/udev/rules.d/51-eth-down.rules
	install -D scripts/powersave.sh $(DESTDIR)/usr/lib/systemd/system-sleep/powersave.sh
	touch /usr/local/etc/powersave/active
	echo 0 > /usr/local/etc/powersave/active

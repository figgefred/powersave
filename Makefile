install:
	install -D scripts/powersave_manual.sh $(DESTDIR)/usr/bin/powersave
	install -D rules/50-powersave.rules $(DESTDIR)/lib/udev/rules.d/50-powersave.rules
#	install -D rules/51-eth-down.rules $(DESTDIR)/lib/udev/rules.d/51-eth-down.rules

# DOESNT work for crunchbang
# install -D scripts/powersave.sh $(DESTDIR)/usr/lib/systemd/system-sleep/powersave.sh

# Ubuntu and apparently thus also Crunchbang, therefore probably classic debian too and other debian distros
	install -D scripts/powersave.sh $(DESTDIR)/etc/pm/sleep.d/99-powersave.sh

	touch /usr/local/etc/powersave/active
	echo 0 > /usr/local/etc/powersave/active
uninstall:
	rm $(DESTDIR)/usr/bin/powersave
	rm $(DESTDIR)/lib/udev/rules.d/50-powersave.rules
#	rm $(DESTDIR)/lib/udev/rules.d/51-eth-down.rules
	rm $(DESTDIR)/etc/pm/sleep.d/99-powersave.sh
#	rm $(DESTDIR)/usr/lib/systemd/system-sleep/powersave.sh

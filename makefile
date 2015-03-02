install: uninstall
	cp -fv ./ntfsx /usr/local/bin

uninstall:
	rm -fv /usr/local/bin/ntfsx

.PHONY: install uninstall

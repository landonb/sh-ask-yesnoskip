PREFIX ?= /usr/local

install:
	cp -f bin/ask-yesnoskip.sh $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/ask-yesnoskip.sh


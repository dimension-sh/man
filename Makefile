DESTDIR ?=
PREFIX ?= /usr/local

.DEFAULT_GOAL := help
.PHONY: help

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sed -n 's/^\(.*\): \(.*\)##\(.*\)/\1\3/p' \
	| column -t  -s ' '

install:
	install -m 0755 -d $(DESTDIR)$(PREFIX)/share/man/man7
	gzip -9 man/man7/dimension.7 -c >$(DESTDIR)$(PREFIX)/share/man/man7/dimension.7.gz
	gzip -9 man/man7/gettingstarted.7 -c >$(DESTDIR)$(PREFIX)/share/man/man7/gettingstarted.7.gz
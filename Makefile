PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

install:
	$(info Installing the library to $(BINDIR))
	@install -Dm755 .bin/md2gemini.awk  $(BINDIR)/md2gemini

uninstall:
	$(info Removing library from $(BINDIR))
	@rm -f $(BINDIR)/md2gemini

test:
	$(info Running shellspec tests)
	@rm -rf ./coverage
	@shellspec --kcov

.PHONY: install uninstall test

all: README
.PHONY: all

README:	git-open.1
	man ./git-open.1 | perl -pe 's/.\010//g' > README

install:
	cp git-open $(PREFIX)/usr/local/bin/git-open
	cp git-open.1 $(PREFIX)/usr/local/share/man/man1/git-open.1

.PHONY:	install

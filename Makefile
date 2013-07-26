BINDIR = $(HOME)/.bin

TOOLS =		\
	debcow


install: $(addprefix $(BINDIR)/,$(TOOLS))

$(BINDIR)/%: % $(BINDIR)
	cp $< $@

$(BINDIR):
	mkdir -p $@

FILES =		\
	.pbuilderrc

TOOLS =		\
	debcow


install: $(addprefix $(HOME)/,$(FILES))
install: $(addprefix $(HOME)/.bin/,$(TOOLS))

$(HOME)/.bin:
	mkdir -p $@

$(HOME)/.bin/%: % $(HOME)/.bin
	cp $< $@

$(HOME)/%: %
	mkdir -p $(@D)
	cp $< $@

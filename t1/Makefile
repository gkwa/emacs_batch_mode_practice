EMACS_PARAMS =
EMACS_PARAMS += --no-init-file
EMACS_PARAMS += --load init.el
EMACS_PARAMS += --no-splash
EMACS_PARAMS += --script runme.el

QUIET_EMACS =
ifneq ($(findstring $(MAKEFLAGS),s),s)
ifndef V
	QUIET_EMACS = @
endif
endif

t1:
	$(QUIET_EMACS)emacs $(EMACS_PARAMS)

clean:
	rm -f *~

EMACS_PARAMS =
EMACS_PARAMS += --no-site-lisp
EMACS_PARAMS += --no-init-file
EMACS_PARAMS += --load init.el
EMACS_PARAMS += --no-splash

QUIET_EMACS =
ifneq ($(findstring $(MAKEFLAGS),s),s)
ifndef V
	QUIET_EMACS = @
endif
endif

t1: 
t1:
	HOME=$(CURDIR) emacs $(EMACS_PARAMS)

clean:
	rm -f *~

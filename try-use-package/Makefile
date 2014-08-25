EMACS_SW =
EMACS_SW += --quick
EMACS_SW += --batch
EMACS_SW += --no-window-system
EMACS_SW += --load emacs-install-clean.el

tree-mode:
	HOME=./mycleantest emacs $(EMACS_SW) --funcall main $@ mycleantest

dirtree:
	HOME=./mycleantest emacs $(EMACS_SW) --funcall main $@ mycleantest

calfw:
	HOME=./mycleantest emacs $(EMACS_SW) --funcall main $@ mycleantest

% ::
	HOME=./mycleantest emacs $(EMACS_SW) --funcall main $@ mycleantest

clean:
	rm -rf mycleantest
	rm -f *~ .*~
	rm -f */*~ */.*~

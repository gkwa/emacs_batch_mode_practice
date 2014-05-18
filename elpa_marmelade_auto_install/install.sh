#!/bin/sh

export HOME=./mycleantest
emacs -Q --batch -nw --load emacs-install-clean.el -f main "$@"


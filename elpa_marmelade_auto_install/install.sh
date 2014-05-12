#!/bin/sh

export HOME=./mycleantest
mkdir -p $HOME/.emacs.d
emacs -Q --batch -nw --load emacs-install-clean.el -f main "$@"


;; https://www.flickr.com/photos/taylormonacelli/sets/72157644655371733/

(fset 'yes-or-no-p 'y-or-n-p) ;; Make all "yes or no" prompts show "y or n" instead

(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)



(remove-hook 'find-file-hooks 'vc-find-file-hook)
(global-set-key (kbd "C-[ [ a a") 'helm-for-files)

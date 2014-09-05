;; http://stackoverflow.com/questions/14836958/updating-packages-in-emacs

(setq jpk-packages
      '(
	ggtags
	helm-gtags
	bookmark+
	java-file-create
	java-snippets
	javadoc-lookup
	jump-char
	jump
	json-mode
	javascript
	helm-chrome
	helm-chrome
	ac-helm
	helm-chrome
	magit-annex
	magit-filenotify
	magit-find-file
	magit-gerrit
	magit-gh-pulls
	magit-gitflow
	magit-log-edit
	magit-push-remote
	magit-simple-keys
	magit-stgit
	magit-svn
	magit-topgit
	magit-tramp
	magithub
	helm
	iedit
	magit
        ))

(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (pkg jpk-packages)
  (when (and (not (package-installed-p pkg))
	     (assoc pkg package-archive-contents))
    (package-install pkg)))

(defun package-list-unaccounted-packages ()
  "Like `package-list-packages', but shows only the packages that
  are installed and are not in `jpk-packages'.  Useful for
  cleaning out unwanted packages."
  (interactive)
  (package-show-package-list
   (remove-if-not (lambda (x) (and (not (memq x jpk-packages))
				   (not (package-built-in-p x))
				   (package-installed-p x)))
                  (mapcar 'car package-archive-contents))))

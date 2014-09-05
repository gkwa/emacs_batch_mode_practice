(add-hook 'after-init-hook
          (lambda () (setq debug-on-error t)))

;; ------------------------------
;; Package System, ELPA, MELPA, Marmalade
;; ------------------------------
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives ())
  (add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  ;;  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
  (add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t) ;; http://emacsredux.com/blog/2014/05/16/melpa-stable
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
;; Package System, ELPA, MELPA, Marmalade configuration

(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if t
           (package-install package)
         package)))
   packages))

(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; activate installed packages
(package-initialize)

(ensure-package-installed
 'ggtags
 'helm-gtags
 'bookmark+
 'java-file-create
 'java-snippets
 'javadoc-lookup
 'jump-char
 'jump
 'json-mode
 'javascript
 'helm-chrome
 'helm-chrome
 'ac-helm
 'helm-chrome
 'magit-annex
 'magit-filenotify
 'magit-find-file
 'magit-gerrit
 'magit-gh-pulls
 'magit-gitflow
 'magit-log-edit
 'magit-push-remote
 'magit-simple-keys
 'magit-stgit
 'magit-svn
 'magit-topgit
 'magit-tramp
 'magithub
 'helm
 'iedit
 'magit
 )

					; http://stackoverflow.com/questions/10092322/how-to-automatically-install-emacs-packages-by-specifying-a-list-of-package-name
;; https://github.com/slipset/emacs/blob/master/ensure-packages.el

(require 'package)
(require 'cl)
(package-initialize)

(setq url-http-attempt-keepalives nil)

(defvar ensure-packages
  '(
    ac-dabbrev
    yasnippet
    )
  "A list of packages to ensure are installed at launch.")

(defun ensure-packages-package-installed-p (p)
  (progn
    (message "checking")
    (cond ((package-installed-p p) t)
	  (t nil)))

  (defun ensure-packages-installed-p ()
    (mapcar 'ensure-packages-package-installed-p ensure-packages))

  (defun ensure-packages-install-missing ()
    (interactive)
    (unless (every 'identity (ensure-packages-installed-p))
      ;; check for new packages (package versions)
      (message "%s" "Emacs is now refreshing its package database...")
      (package-refresh-contents)
      (message "%s" " done.")
      ;; install the missing packages
      (dolist (p ensure-packages)
	(when (not (package-installed-p p))
	  (package-install p)))))

  (provide 'ensure-packages)

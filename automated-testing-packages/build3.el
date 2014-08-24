;; http://stackoverflow.com/questions/10092322/how-to-automatically-install-emacs-packages-by-specifying-a-list-of-package-name

(require 'package)
(require 'melpa)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(setq url-http-attempt-keepalives nil)

;; (defvar prelude-packages
;;   '(ack-and-a-half auctex clojure-mode coffee-mode deft expand-region
;;                    gist haml-mode haskell-mode helm helm-projectile inf-ruby
;;                    magit magithub markdown-mode paredit projectile
;;                    python sass-mode rainbow-mode scss-mode solarized-theme
;;                    volatile-highlights yaml-mode yari yasnippet zenburn-theme)
;;   "A list of packages to ensure are installed at launch.")

(defvar prelude-packages
  '(ack-and-a-half gist 
)
  "A list of packages to ensure are installed at launch.")


(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'prelude-packages)

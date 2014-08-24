(setq package-archives ())
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t) ;; http://emacsredux.com/blog/2014/05/16/melpa-stable

(package-initialize)
(package-refresh-contents)
(let ((package
       (concat
        (file-name-directory
         (or (buffer-file-name)
             load-file-name))
        (car (reverse command-line-args)))))
  (message "the package is: %s" package)
  (package-install-file package))

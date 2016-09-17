(server-start)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

;; configuration packages
(require 'package_list)
(require 'key-bindings)
(require 'org-settings)
(require 'filetypes)
(require 'defun)
(require 'defadvice)
(require 'desktop-settings)
(require 'misc-settings)
(require 'python-settings)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
(powerline-default-theme)
(elpy-enable)
(require 'disabled)


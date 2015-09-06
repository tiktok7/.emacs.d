(server-start)
(package-initialize)
(elpy-enable)                          

(add-to-list 'load-path "~/.emacs.d")

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

(require 'disabled)


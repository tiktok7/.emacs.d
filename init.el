(server-start)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(setq os-type
      (cond ((eq system-type 'windows-nt) 'win32)
	    ((eq system-type 'gnu/linux)
	     (if (string-match "Microsoft"
		 (with-temp-buffer (shell-command "uname -r" t)
				   (goto-char (point-max))
				   (delete-char -1)
				   (buffer-string)))
		 'wsl
	       'linux
	       ))
))

(defmacro with-os (type &rest body)
  "Evaluate BODY if OS equals TYPE."
  (declare (indent defun))
  `(when (eq os-type ',type)
     ,@body))

;; configuration packages
(require 'package_list)
(require 'key-bindings)
(require 'org-settings)
(require 'filetypes)
(require 'defun)
(require 'defadvice)
(require 'desktop-settings)
(require 'ac-settings)
(require 'misc-settings)
(require 'python-settings)
(require 'window-settings)
(require 'webdev-settings)

;; set up git bash as default terminal
(prefer-coding-system 'utf-8)
(with-os win32
  (setq explicit-shell-file-name "C:/Users/will/scoop/apps/git/current/bin/bash.exe")
  (setq explicit-bash.exe-args '("--login" "-i"))
  )

(setq save-interprogram-paste-before-kill t)
(setq custom-file "~/.emacs-custom.el")
(load custom-file)
(powerline-default-theme)
(elpy-enable)
(require 'disabled)


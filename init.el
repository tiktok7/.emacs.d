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

;; ;; configuration packages
(load-file "~/.emacs.d/settings.el")

;; set up git bash as default terminal
(prefer-coding-system 'utf-8)
(with-os win32
  (setq explicit-shell-file-name
	(expand-file-name
	 (concat
	  (file-name-as-directory (file-name-directory (executable-find "scoop")))
	  "../apps/git/current/bin/bash.exe")
	 )
	)
  (setq explicit-bash.exe-args '("--login" "-i"))
  )

(setq save-interprogram-paste-before-kill t)
(setq custom-file "~/.emacs-custom.el")
(load custom-file)

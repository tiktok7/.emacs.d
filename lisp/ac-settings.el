;; ==========================================================================
;; "Do what I Want" TAB behaviour for yasnippet auto-complete and org-mode
;; ==========================================================================
;; (require 'auto-complete)
;; (global-auto-complete-mode t)
;; (define-key ac-completing-map (kbd "TAB") 'ac-complete)
;; (define-key ac-completing-map (kbd "<tab>") 'ac-complete)
;; (setq ac-auto-show-menu 1.0)
;; (setq ac-auto-start nil)
;; (setq ac-delay 0.1)
;; (setq ac-disable-inline t)
;; (setq ac-dwim nil)
;; (setq ac-trigger-key "TAB")
;; (setq ac-expand-on-auto-complete nil)
;; (setq ac-auto-start nil)
;; (setq ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed
;; (ac-set-trigger-key "TAB") ; AFTER input prefix, press TAB key ASAP

;; ;; Use C-n/C-p to select candidate ONLY when completion menu is displayed
;; ;; Below code is copied from official manual
;; (setq ac-use-menu-map t)
;; ;; Default settings
;; (define-key ac-menu-map "\C-n" 'ac-next)
;; (define-key ac-menu-map "\C-p" 'ac-previous)
;; ;; extra modes auto-complete must support
;; (dolist (mode '(magit-log-edit-mode log-edit-mode org-mode text-mode haml-mode
;;                 sass-mode yaml-mode csv-mode espresso-mode haskell-mode
;;                 html-mode web-mode sh-mode smarty-mode clojure-mode
;;                 lisp-mode textile-mode markdown-mode tuareg-mode
;;                 js2-mode css-mode less-css-mode))
;;   (add-to-list 'ac-modes mode))

;; ;; Exclude very large buffers from dabbrev
;; (defun sanityinc/dabbrev-friend-buffer (other-buffer)
;;   (< (buffer-size other-buffer) (* 1 1024 1024)))

;; (setq dabbrev-friend-buffer-function 'sanityinc/dabbrev-friend-buffer)


;; (ac-config-default)

(require 'company)                                   ; load company mode
(require 'company-web-html)                          ; load company mode html backend
;; and/or
(require 'company-web-jade)                          ; load company mode jade backend
(require 'company-web-slim)                          ; load company mode slim backend



(provide 'ac-settings)

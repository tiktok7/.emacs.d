;; js settings
(require 'js2-mode)
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode) ;; Better imenu
(setq js2-highlight-level 3)
(define-key js-mode-map "{" 'paredit-open-curly)
(define-key js-mode-map "}" 'paredit-close-curly-and-newline)

(require 'js2-refactor)
(require 'xref-js2)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)


;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
  (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

(defun my-paredit-nonlisp ()
  "Turn on paredit mode for non-lisps."
  (interactive)
  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
       '((lambda (endp delimiter) nil)))
  (paredit-mode 1))

(add-hook 'js-mode-hook 'my-paredit-nonlisp) ;use with the above function

(require 'web-mode)
(setq web-mode-enable-auto-expanding t)
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(eval-after-load 'flycheck
  '(flycheck-add-mode 'html-tidy 'web-mode))
(define-key web-mode-map (kbd "TAB") 'company-web-html)
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

(defun my-web-mode-hook ()
  (set (make-local-variable 'company-backends) '(company-web-slim company-web-jade company-css company-web-html company-yasnippet company-files))
  )

(add-hook 'web-mode-hook  'my-web-mode-hook)

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'web-mode-hook  'emmet-mode)
(add-hook 'web-mode-hook  'rainbow-mode)

(add-hook 'web-mode-before-auto-complete-hooks
    '(lambda ()
     (let ((web-mode-cur-language
  	    (web-mode-language-at-pos)))
               (if (string= web-mode-cur-language "php")
    	   (yas-activate-extra-mode 'php-mode)
      	 (yas-deactivate-extra-mode 'php-mode))
               (if (string= web-mode-cur-language "css")
    	   (setq emmet-use-css-transform t)
      	   (setq emmet-use-css-transform nil)))))

(provide 'webdev-settings)

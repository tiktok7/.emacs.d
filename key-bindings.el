
;; misc
(global-set-key "\C-xra" 'append-to-register)
(global-set-key "\C-xrp" 'prepend-to-register)
(global-set-key (kbd "C-x C-p") 'camdez/show-buffer-file-name)
(global-set-key (kbd "C-z") 'shell)
(global-set-key (kbd "M-Z") (lambda (char) (interactive "cZap up to char backwards: ") (zap-to-char -1 char)))
(global-set-key [f11] 'gtd)
(global-set-key [(meta f11)] 'ibuffer)
(global-set-key [(meta f12)] 'recentf-open-files)
(global-set-key (kbd "M-R") 'revert-buffer)
(global-set-key (kbd "M-M") 'magit-status)
(global-set-key (kbd "C-c e") 'eval-and-replace)
(global-set-key (kbd "C-M-!") 'shell-with-fname-repl)

;; ace-jump
(define-key global-map (kbd "C-ü") 'ace-jump-mode)
(define-key global-map (kbd "C-Ü") 'ace-jump-mode-pop-mark)


;; org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; ================
;; ispell
;; ================
(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "C-<f8>") 'flyspell-mode)


;; ==================================================
;; expand-region
;; ==================================================
(global-set-key (kbd "C-Ö") 'er/contract-region)
(global-set-key (kbd "C-ö") 'er/expand-region)

(global-set-key (kbd "C-ä") 'mc/mark-next-like-this) ;;  Adds a cursor and region at the next part of the buffer forwards that matches the current region.
(global-set-key (kbd "C-Ä") 'mc/mark-more-like-this-extended) ;;  Use arrow keys to quickly mark/skip next/previous occurances.
 
;; (global-set-key (kbd "C-ä C-n") 'mc/mark-next-like-this) ;;  Adds a cursor and region at the next part of the buffer forwards that matches the current region.
;; (global-set-key (kbd "C-ä C-w") 'mc/mark-next-word-like-this) ;;  Like mc/mark-next-like-this but only for whole words.
;; (global-set-key (kbd "C-ä C-_") 'mc/mark-next-symbol-like-this) ;;  Like mc/mark-next-like-this but only for whole symbols.
;; (global-set-key (kbd "C-ä C-p") 'mc/mark-previous-like-this) ;;  Adds a cursor and region at the next part of the buffer backwards that matches the current region.
;; (global-set-key (kbd "C-ä M-b") 'mc/mark-previous-word-like-this) ;;  Like mc/mark-previous-like-this but only for whole words.
;; (global-set-key (kbd "C-ä C-S-_") 'mc/mark-previous-symbol-like-this) ;;  Like mc/mark-previous-like-this but only for whole symbols.
;; (global-set-key (kbd "C-ä m e") 'mc/mark-more-like-this-extended) ;;  Use arrow keys to quickly mark/skip next/previous occurances.
;; (global-set-key (kbd "C-ä C-S-n") 'mc/unmark-next-like-this) ;;  Remove the cursor furthest down in the buffer.
;; (global-set-key (kbd "C-ä C-S-p") 'mc/unmark-previous-like-this) ;;  Remove the cursor furthest up in the buffer.
;; (global-set-key (kbd "C-ä e") 'mc/edit-lines) ;;  Adds one cursor to each line in the current region.
;; (global-set-key (kbd "C-ä C-a") 'mc/edit-beginnings-of-lines) ;;  Adds a cursor at the start of each line in the current region.
;; (global-set-key (kbd "C-ä C-e") 'mc/edit-ends-of-lines) ;;  Adds a cursor at the end of each line in the current region.
;; (global-set-key (kbd "C-ä M-s o") 'mc/mark-all-like-this) ;;  Marks all parts of the buffer that matches the current region.
;; (global-set-key (kbd "C-ä M-s w") 'mc/mark-all-words-like-this) ;;  Like mc/mark-all-like-this but only for whole words.
;; (global-set-key (kbd "C-ä M-s _") 'mc/mark-all-symbols-like-this) ;;  Like mc/mark-all-like-this but only for whole symbols.
;; (global-set-key (kbd "C-ä M-s r") 'mc/mark-all-in-region) ;;  Prompts for a string to match in the region, adding cursors to all of them.
;; (global-set-key (kbd "C-ä M-s f") 'mc/mark-all-like-this-in-defun) ;;  Marks all parts of the current defun that matches the current region.
;; (global-set-key (kbd "C-ä M-s C-w") 'mc/mark-all-words-like-this-in-defun) ;;  Like mc/mark-all-like-this-in-defun but only for whole words.
;; (global-set-key (kbd "C-ä M-s C-_") 'mc/mark-all-symbols-like-this-in-defun) ;;  Like mc/mark-all-like-this-in-defun but only for whole symbols.
;; (global-set-key (kbd "C-ä M-/") 'mc/mark-all-like-this-dwim) ;;  Tries to be smart about marking everything you want. Can be pressed multiple times.
;; (global-set-key (kbd "C-ä C-/") 'mc/mark-sgml-tag-pair) ;;  Mark the current opening and closing tag.
;; (global-set-key (kbd "C-ä C-.") 'mc/insert-numbers) ;;  Insert increasing numbers for each cursor, top to bottom.
;; (global-set-key (kbd "C-ä C-o") 'mc/sort-regions) ;;  Sort the marked regions alphabetically.
;; (global-set-key (kbd "C-ä C-x C-t") 'mc/reverse-regions) ;;  Reverse the order of the marked regions.


(provide 'key-bindings)

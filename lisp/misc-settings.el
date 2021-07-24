(defalias 'yes-or-no-p 'y-or-n-p) ;
(setq visible-bell t)
(setq inhibit-startup-screen t)
(show-paren-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time-mode t)
(electric-indent-mode t)
(electric-layout-mode t)
(electric-pair-mode t)
(column-number-mode t)

(setq backup-by-copying-when-linked t)

(setq iedit-transient-mark-sensitive nil)
(projectile-global-mode t)
(setq projectile-use-git-grep t)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq split-height-threshold nil)
(setq split-width-threshold 0)

(setq tab-width 4)
(setq c-basic-offset 4)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

;; cua
(setq cua-delete-copy-to-register-0 nil)
(setq cua-enable-cua-keys nil)
(setq cua-enable-region-auto-help t)
(setq cua-highlight-region-shift-only t)
(setq cua-toggle-set-mark nil)

;; =======
;; ido-mode
;; =======
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-create-new-buffer 'always)
(setq ido-vertical-define-keys (quote C-n-C-p-up-down-left-right))
 
;; ==================================================
;; ace jump mode
;; ==================================================
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(progn
     (ace-jump-mode-enable-mark-sync)
     (setq ace-jump-mode-case-fold t)
     )
  )
 
;; ====================
;; multiple-cursors
;; ====================
(require 'multiple-cursors)
(defvar jc/mc-search--last-term nil) 
(define-key mc/keymap (kbd "C-s") 'jc/mc-search-forward)
(define-key mc/keymap (kbd "C-r") 'jc/mc-search-backward)
(define-key mc/keymap (kbd "C-:") 'mc/mark-next-like-this) ;;  Adds a cursor and region at the next part of the buffer forwards that matches the current region.
(define-key mc/keymap (kbd "C-*") 'mc/mark-more-like-this-extended) ;;  Use arrow keys to quickly mark/skip next/previous occurances.

 
(require 'yasnippet)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c C-i") 'yas-expand)
(setq yas-also-auto-indent-first-line nil)
(yas-global-mode t)
(setq yas-prompt-functions (quote (yas-ido-prompt yas-x-prompt yas-dropdown-prompt yas-completing-prompt yas-no-prompt)))



;; ==========
;; japanese
;; ==========
(require 'mozc)  ; or (load-file "/path/to/mozc.el")
(setq default-input-method "japanese-mozc")

;; ======
;; ispell
;; ======
(setq ispell-program-name "aspell")
(setq ispell-personal-dictionary "~/.ispell")
(require 'ispell)
(add-hook 'c-mode-common-hook 'flyspell-prog-mode)
(setq ispell-dictionary "british")
 
;; =====================
;; dired customizations
;; =====================
(require 'dired)
(define-key dired-mode-map (kbd "<return>") 'dired-find-alternate-file) ; was dired-advertised-find-file
(define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")))  ; was dired-up-directory
 
(defalias 'list-buffers 'ido-switch-buffer) ; always use ibuffer
 
;; ===============
;; better M-x
;; ===============
(require 'smex)
(smex-initialize)
(ido-vertical-mode t)
(flx-ido-mode t)
(ido-at-point-mode t)
(defalias 'list-buffers 'ido-switch-buffer) ; always use ibuffer 

;;==============================
;; set up C mode
;;==============================
(setq c-default-style "linux" c-basic-offset 4)
(setq c-offsets-alist '((inline-open +)
    (block-open +)
    (brace-list-open +)   ; all "opens" should be indented by the c-indent-level
    (case-label +))       ; indent case labels by c-indent-level, too
)


(provide 'misc-settings)

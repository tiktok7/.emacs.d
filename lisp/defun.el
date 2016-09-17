;; ===========================
;; grab filename to kill ring
;; ===========================
(defun camdez/show-buffer-file-name ()
  "Show the full path to the current file in the minibuffer."
 (interactive)
  (let ((file-name (buffer-file-name)))
    (if file-name
        (progn
          (message file-name)
          (kill-new file-name))
      (error "Buffer not visiting a file"))))

;; ============
;; shell->grep
;; ============
 
(defun ww-shell-to-grep-mode ()
  (interactive
   (progn
     (let((sbuf (current-buffer)))
       (if (eq major-mode (quote shell-mode))
        (progn
           (compilation-mode)
           (end-of-buffer)
           (setq compilation-current-error (point))
           (previous-error)
           (push-mark)
           )
        (progn
           (shell-mode)
           (end-of-buffer)
       (toggle-read-only nil)
           )
        )))))
 
(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))

;;==============================
;; shell commands with file replace
;;==============================
(defun shell-with-fname-repl ()
  (interactive)
  (let ((file-buffer (or (buffer-file-name) ""))
        (command (read-shell-command "Shell command: " nil nil nil)))
    (shell-command (replace-regexp-in-string "%" file-buffer command))
        )
  (set-buffer "*Shell Command Output*")
  (compilation-mode)
)

(defun jc/mc-search (search-command)
  ;; Read new search term when not repeated command or applying to fake cursors
  (when (and (not mc--executing-command-for-fake-cursor)
             (not (eq last-command 'jc/mc-search-forward))
             (not (eq last-command 'jc/mc-search-backward)))
    (setq jc/mc-search--last-term (read-from-minibuffer "Search: ")))
  (funcall search-command jc/mc-search--last-term))
 
(defun jc/mc-search-forward ()
  "Simplified version of forward search that supports multiple cursors"
  (interactive)
  (jc/mc-search 'search-forward))
 
(defun jc/mc-search-backward ()
  "Simplified version of backward search that supports multiple cursors"
  (interactive)
  (jc/mc-search 'search-backward))

(defun yas/org-very-safe-expand ()
  (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))

;;=======================================================
(provide 'defun)

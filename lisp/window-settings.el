
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(setq window-min-width 80)
(setq display-buffer-alist
   `(;; Display *Help* buffer at the bottom-most slot
     ("*\\(Help\\|trace-\\|Backtrace\\|RefTeX.*\\)"
      (display-buffer-reuse-window display-buffer-in-previous-window display-buffer-in-side-window)
      (side . right)
      (slot . 0)
      (window-width . 0.5)
      (reusable-frames . visible))
     ("^\\*info"
      (display-buffer-reuse-window display-buffer-in-previous-window display-buffer-pop-up-frame)
      (pop-up-frame-parameters
        (width . 80)
        (left . 1.0)
        (fullscreen . fullheight)))
     ;; Open new edited messages in a right-hand frame
     ;; For this to close the frame, add
     ;; (add-hook 'wl-draft-kill-pre-hook 'quit-window)
     ;; (setq wl-draft-send-function
     ;;   (lambda (buffer kill)
     ;;     (let ((frame (window-frame (selected-window))))
     ;;       (prog1 (wl-draft-normal-send-func buffer kill)
     ;;         (delete-frame frame)))))
     ("\\(\\*draft\\*\\|Draft/\\)"
      (display-buffer-reuse-window display-buffer-in-previous-window display-buffer-pop-up-frame)
      (pop-up-frame-parameters
        (width . 80)
        (left . 1.0)
        (fullscreen . fullheight)))
     ;; TeX output buffers to bottom, with 10 lines
     ;; Split shells at the bottom
     ("^\\*e?shell"
      (display-buffer-reuse-window display-buffer-in-previous-window display-buffer-below-selected)
      (window-min-height . 20)
      (reusable-frames . visible)
      )
     )
   )

(provide 'window-settings)

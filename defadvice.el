;; ============================================================
;; save windows clipboard before killing new text
;; ============================================================
(defadvice kill-new (before kill-new-push-xselection-on-kill-ring activate)
  "Before putting new kill onto the kill-ring, add the clipboard/external selection to the kill ring"
  (let ((have-paste (and interprogram-paste-function
                         (funcall interprogram-paste-function))))
    (when have-paste (push have-paste kill-ring)))
  )
 
(ad-activate 'kill-new)

(provide 'defadvice)

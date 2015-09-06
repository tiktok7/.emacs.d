(add-to-list 'auto-mode-alist '("\\.g4\\'" . antlr-mode))
(autoload 'bat-mode "dosbat" "\
Major mode for editing DOS batch files.
 
Special commands:
 
Font lock mode:
 
Turning on font lock mode causes various DOS batch syntactic
structures to be hightlighted.  It is on by default.
 
" t nil)
(add-to-list 'auto-mode-alist '("\\.\\(?:bat\\|com\\|cmd\\)$" . bat-mode))


(provide 'filetypes)

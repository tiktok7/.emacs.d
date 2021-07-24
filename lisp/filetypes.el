(add-to-list 'auto-mode-alist '("\\.g4\\'" . antlr-mode))
(autoload 'bat-mode "dosbat" "\
Major mode for editing DOS batch files.
 
Special commands:
 
Font lock mode:
 
Turning on font lock mode causes various DOS batch syntactic
structures to be hightlighted.  It is on by default.
 
" t nil)
(add-to-list 'auto-mode-alist '("\\.\\(?:bat\\|com\\|cmd\\)$" . bat-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(autoload 'qml-mode "qml-mode" "Editing Qt Declarative." t)
(add-to-list 'auto-mode-alist '("\\.qml$" . qml-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(provide 'filetypes)

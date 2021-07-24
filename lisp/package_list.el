(require 'check_packages)

(setq package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.org/packages/") ("orgmode" . "http://orgmode.org/elpa/"))))

(setq required-pkgs
      '(
        ace-jump-mode
        alert
        auctex
        auto-complete
        auto-complete-auctex
        bison-mode
        company
	company-qml
	company-web
        dash
	docker-compose-mode
	dockerfile-mode
        elpy
	emmet-mode
        epl
        expand-region
        find-file-in-project
        flx
        flx-ido
	flycheck
        fuzzy
        gh
        gh-md
        highlight-indentation
        ibuffer-projectile
        ido-at-point
        ido-completing-read+
        ido-vertical-mode
        idomenu
        iedit
        java-snippets
        jinja2-mode
        json
        json-mode
        json-reformat
        json-snatcher
	js2-mode
	js2-refactor
        logito
        magit
        magit-gh-pulls
        markdown-mode
	mozc
        multiple-cursors
        org
        org-plus-contrib
        pcache
        pkg-info
        popup
	powerline
        projectile
        pyvenv
	qml-mode
        rainbow-mode
        s
        smex
	solarized-theme
	tern
	xref-js2
        yasnippet
	yasnippet-classic-snippets
	yasnippet-snippets
        ))

(ww-check-packages required-pkgs)

(provide 'package_list)

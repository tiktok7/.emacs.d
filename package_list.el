(require 'check_packages)

(setq package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("orgmode" . "http://orgmode.org/elpa/"))))

(setq required-pkgs
      '(
        ace-jump-mode
        auctex
        auto-complete-auctex
        auto-complete
        bison-mode
        elpy
        company
        expand-region
        find-file-in-project
        flx-ido
        flx
        fuzzy
        highlight-indentation
        ibuffer-projectile
        ido-at-point
        ido-ubiquitous
        ido-vertical-mode
        idomenu
        iedit
        java-snippets
        jinja2-mode
        json
        json-mode
        json-reformat
        json-snatcher
        magit-gh-pulls
        magit
        git-rebase-mode
        git-commit-mode
        gh
        logito
        multiple-cursors
        nose
        org
        org-plus-contrib
        alert
        pcache
        popup
        projectile
        pkg-info
        epl
        dash
        pyvenv
        s
        smex
        yasnippet
        ))

(ww-check-packages required-pkgs)

(provide 'package_list)

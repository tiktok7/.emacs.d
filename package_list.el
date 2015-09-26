(require 'check_packages)

(setq package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("orgmode" . "http://orgmode.org/elpa/"))))

(setq required-pkgs
      '(
        ace-jump-mode
        alert
        auctex
        auto-complete
        auto-complete-auctex
        bison-mode
        company
        dash
        elpy
        epl
        expand-region
        find-file-in-project
        flx
        flx-ido
        fuzzy
        gh
        gh-md
        git-commit-mode
        git-rebase-mode
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
        logito
        magit
        magit-gh-pulls
        markdown-mode
        multiple-cursors
        nose
        org
        org-plus-contrib
        pcache
        pkg-info
        popup
        projectile
        pyvenv
        s
        smex
        yasnippet
        ))

(ww-check-packages required-pkgs)

(provide 'package_list)

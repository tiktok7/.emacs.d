;; check the list of required packages, and install if any are missing
;; source = http://stackoverflow.com/a/30926015/2063058
(require 'cl)

(defun ww-check-packages(required-pkgs)
  (setq pkgs-to-install
        (let ((uninstalled-pkgs (remove-if 'package-installed-p required-pkgs)))
          (remove-if-not '(lambda (pkg) (y-or-n-p (format "Package %s is missing. Install it? " pkg))) uninstalled-pkgs)))

  (when (> (length pkgs-to-install) 0)
    (package-refresh-contents)
    (dolist (pkg pkgs-to-install)
      (package-install pkg)))
  )

(provide 'check_packages)

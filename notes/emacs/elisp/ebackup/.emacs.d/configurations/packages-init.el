;;-----------------------packages configurations-----------------------------
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize);;search every package directory and write to the company-mode-autoload autoload.el file -function
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (require 'cl)
)
;;add whatever packages you want here 
(defvar my/packages '(
		      company
		      monokai-theme
		      hungry-delete
		      smex
		      swiper
		      counsel
		      popwin
		      ;;smartparents
		      highlight-escape-sequences
		      org-pomodoro
		      ) "Default packages"
)
(defun my/packages-installed-p()
  (loop for pkg in my/packages
	when (not(package-installed-p pkg)) do (return nil)
	finally (return t)
  )
)
(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
     (package-install pkg)
     )
  )
)
;;----------------------end the configurations---------------------------------

;;;;###autoload
;;company-autoload invoke the initialize
;; different load types as follws
;;load-file
;;load :Load a file by searching thru var:load-path.
;;require :check the var:features,if symbol is not there then call load to load it .
;;autoload :
;;

(provide 'packages-init)

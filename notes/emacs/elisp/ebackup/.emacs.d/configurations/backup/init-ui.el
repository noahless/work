(setq inhibit-startup-message nil)
;;(setq gnus-inhibit-startup-message nil)
(toggle-frame-fullscreen)

(global-hl-line-mode 1)
;;(global-scroll-bar-mode -1)
;;(global-font-lock-mode 1)
(scroll-lock-mode 1)
(global-visual-line-mode 1)
(tool-bar-mode -1)

(menu-bar-mode t)
(global-hl-line-mode -1)
(global-linum-mode t)

(add-hook 'org-mode-hook 'scroll-lock-mode)
(add-hook 'web-mode-hook 'scroll-lock-mode)
(add-hook 'emacs-lisp-mode-hook 'scroll-lock-mode)

(provide 'init-ui)

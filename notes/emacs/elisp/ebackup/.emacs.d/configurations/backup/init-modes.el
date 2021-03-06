(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(load-theme 'monokai t)
(require 'hungry-delete)

(global-hungry-delete-mode t)

(require 'popwin)
(popwin-mode t)

;;smex-----------------------------
;;(require 'smex)
;;(smex-initialize)
;;(global-set-key (kbd "M-x") 'smex)
;;end smex--------------------------


(scroll-lock-mode 1)
(recentf-mode 1)
(electric-indent-mode nil)

(electric-pair-mode 1)
(show-paren-mode 1)
(visual-line-mode 1)
(delete-selection-mode t)
(smartparens-global-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(global-company-mode t)
(setq line-move-visual 1)

;;(global-set-key (kbd "C-\-"))
(global-auto-revert-mode 1);; auto load when the file is been changed by others
;;
;;------------add something to auto-mode-alist--------------- 
(setq initial-major-mode (quote org-mode));;set default mode
;;------------add something to auto-mode-alist--------------- 
(setq auto-mode-alist (append
		       ;;contains:---------
		       '(("\\.js\\'" . js2-mode)) 
		       '(("\\.jsp\\'" . web-mode)) 
		       '(("\\.el\\'" . emacs-lisp-mode))
		       '(("\\.org\\'" . org-mode))
		       ;;end the contains--
		       auto-mode-alist))
;;-----------------------end----------------------


;;show matched paren
;;(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;--'(show-paren-mode t))
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
;;--flyspell 
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'web-mode-hook 'ruler-mode)

(provide 'init-modes)

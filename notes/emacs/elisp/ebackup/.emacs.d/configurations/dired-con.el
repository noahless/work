(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)


(put 'dired-find-alternate-file 'disable nil )
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))


(setq dired-dwim-target t)
(provide 'dired-con)

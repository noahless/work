(defun hidden-dos-eol()
  "do not show ^m in files containing mixed linux and dos line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(provide 'hidden-dos-eol)

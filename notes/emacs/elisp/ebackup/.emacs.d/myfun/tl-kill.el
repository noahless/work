(defun tl-kill()
  "cut current lines"
  (interactive)
  (if current-prefix-arg
      (progn
	(kill-new(buffer-string)
	(delete-region (point-min) (point-max))))
      (progn (if (use-region-p)
	       (kill-region (region-beginning) (region-end) t)
	       (kill-region (line-beginning-position) (line-beginning-position 2))))
      )
)


  (provide 'tl-kill)

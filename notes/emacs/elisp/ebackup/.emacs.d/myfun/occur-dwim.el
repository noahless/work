(defun occur-dwim()
  "call occur with the sane default"
  (interactive)
  (push (if (region-active-p)
	    (buffer-substring-no-properties (region-beginning) (region-end))
	  (let ((sym (thing-at-point 'symbol)))
	    (when (stringp sym)
	      (regexp-quote sym)))) 
	regexp-history) 
  (call-interactively 'occur))

(provide 'occur-dwim)

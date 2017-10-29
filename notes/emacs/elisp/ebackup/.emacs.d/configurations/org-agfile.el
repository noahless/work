(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-files (list "~/org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/workarrangement/arrangement.org" "work_arrangement")
	 "* TODO [#B] %?\n %i\n" :empty-lines 1)))

(require 'org-gcal)
(provide 'org-agfile)

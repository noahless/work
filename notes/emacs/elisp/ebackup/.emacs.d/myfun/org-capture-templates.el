(require 'org)

(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/workarrangement/arrangement.org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/workarrangement/arrangement.org" "workarrangement")
	 "* TODO [#B] %?\n %i\n"
	 :empty-lines)))
(provide 'org-capture-templates)

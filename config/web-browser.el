(add-hook 'eww-mode-hook
	  (lambda()
	    (local-set-key (kbd "<backtab>") 'shr-previous-link)))

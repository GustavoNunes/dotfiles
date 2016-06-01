(global-set-key (kbd "<f2>") 'magit-status)

(global-set-key (kbd "C-<f3>") 'dumb-jump-go)
(global-set-key (kbd "C-<f4>") 'dumb-jump-back)

(global-set-key (kbd "<f5>") 'ido-find-file)
(global-set-key (kbd "<f6>") 'recentf-ido-find-file)
(global-set-key (kbd "<f7>") 'ido-switch-buffer)
(global-set-key (kbd "<f8>") 'save-buffer)
(global-set-key (kbd "C-<f5>") 'ido-find-alternate-file)
(global-set-key (kbd "C-<f7>") 'ido-kill-buffer)
(global-set-key (kbd "S-<f5>") 'ido-find-file-other-window)

(global-set-key (kbd "C-x t w") 'doremi-window-height+)

(add-hook 'scheme-interaction-mode-hook
	  (lambda () (local-set-key (kbd "<f9>") 'xscheme-send-previous-expression)))

(add-hook 'php-mode-hook
	  (lambda()
	    (local-set-key (kbd "<f1>") 'my-php-quick-lookup)
	    (local-set-key (kbd "C-<f1>") 'my-php-browser-lookup)
	    (local-set-key (kbd "<f9>") 'my-run-phpunit)))

(add-hook 'haskell-mode-hook
	  (lambda()
	    (local-set-key (kbd "<f12>") 'haskell-interactive-bring)))

(global-set-key (kbd "C-c o l") 'org-store-link)
(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o b") 'org-iswitchb)

(add-hook 'org-mode-hook
	  (lambda()
	    (local-set-key (kbd "S-<up>") 'org-metaup)
	    (local-set-key (kbd "S-<down>") 'org-metadown)))

(dolist (mode-hook '(markdown-mode-hook
		     org-mode-hook
		     org-agenda-mode-hook))
  (add-hook mode-hook
	    (lambda()
	      (local-set-key (kbd "M-<left>")  'windmove-left)
	      (local-set-key (kbd "M-<right>") 'windmove-right)
	      (local-set-key (kbd "M-<up>")    'windmove-up)
	      (local-set-key (kbd "M-<down>")  'windmove-down))))

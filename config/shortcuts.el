(global-set-key (kbd "<f2>") 'magit-status)

(global-set-key (kbd "<f5>") 'ido-find-file)
(global-set-key (kbd "<f6>") 'recentf-ido-find-file)
(global-set-key (kbd "<f7>") 'ido-switch-buffer)
(global-set-key (kbd "<f8>") 'save-buffer)

(global-set-key (kbd "C-<f5>") 'ido-kill-buffer)

(global-set-key (kbd "C-x t w") 'doremi-window-height+)

(add-hook 'scheme-interaction-mode-hook
	  (lambda () (local-set-key (kbd "<f9>") 'xscheme-send-previous-expression)))



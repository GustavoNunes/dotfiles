;; php-mode configuration
(add-hook 'php-mode-hook (lambda ()
			   (flycheck-mode t) ;; syntax checking
			   (auto-complete-mode t)
			   (fci-mode t) ;; column limit
			   (linum-mode t))) ;; line numbers

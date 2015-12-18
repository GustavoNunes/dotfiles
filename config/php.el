;; php-mode configuration
(add-hook 'php-mode-hook (lambda ()
			   (auto-complete-mode t)
			   (my-activate-fci)
			   (linum-mode t)
			   (php-eldoc-enable))) ;; line numbers

(defun my-php-browser-lookup ()
  (interactive)
  (let ((symbol (symbol-at-point)))
    (if (not symbol)
	(message "No symbol at point.")

      (browse-url (concat "http://php.net/manual-lookup.php?pattern="
			  (symbol-name symbol))))))


(defun my-php-quick-lookup ()
  (interactive)
  (let* ((function (symbol-name (or (symbol-at-point)
				    (error "No function at point."))))
	 (buf (url-retrieve-synchronously (concat "http://php.net/manual-lookup.php?pattern=" function))))
    (with-current-buffer buf
      (goto-char (point-min))
      (let (desc)
	(when (re-search-forward "<div class=\"methodsynopsis dc-description\">\\(\\(.\\|\n\\)*?\\)</div>" nil t)
	  (setq desc
		(replace-regexp-in-string
		 " +" " "
		 (replace-regexp-in-string
		  "\n" ""
		  (replace-regexp-in-string "<.*?>" "" (match-string-no-properties 1)))))

	  (when (re-search-forward "<p class=\"para rdfs-comment\">\\(\\(.\\|\n\\)*?\\)</p>" nil t)
	    (setq desc
		  (concat desc "\n\n"
			  (replace-regexp-in-string
			   " +" " "
			   (replace-regexp-in-string
			    "\n" ""
			    (replace-regexp-in-string "<.*?>" "" (match-string-no-properties 1))))))))

	(if desc
	    (message desc)
	  (message "Could not extract function info. Press C-F1 to go the description."))))
        (kill-buffer buf)))

(defun my-run-phpunit ()
  (interactive)
  (with-output-to-temp-buffer "*phpUnit*"
    (shell-command "../vendor/bin/phpunit ."
		   "*phpUnit*"
		   "*phpUnit*")
    (pop-to-buffer "*phpUnit*")))

;; disable beep sounds
(setq visible-bell 1)

;; activate IDO
(ido-mode 1)

;; hide splash screen and message
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

;; activate ALT-based window switching
(windmove-default-keybindings 'meta)
(add-hook 'markdown-mode-hook
	  (lambda()
	    (local-set-key (kbd "M-<left>")  'windmove-left)
	    (local-set-key (kbd "M-<right>") 'windmove-right)
	    (local-set-key (kbd "M-<up>")    'windmove-up)
	    (local-set-key (kbd "M-<down>")  'windmove-down)))

;; open files with sudo
(defadvice ido-find-file (after find-file-sudo activate)
  "Find file as root if necessary."
  (unless (and buffer-file-name
               (file-writable-p buffer-file-name))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

;; column limit configuration
(defun my-activate-fci ()
  (fci-mode t)
  (setq fci-rule-column 80)
  (setq fci-rule-color "grey50"))

;; shortening confirmation response
(defalias 'yes-or-no-p 'y-or-n-p)

;; disable backup files
(setq make-backup-files nil)

;; dired hide details
(add-hook 'dired-mode-hook (lambda()
			     (dired-hide-details-mode t)))

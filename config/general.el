;; disable beep sounds
(setq visible-bell 1)

;; activate IDO
(ido-mode 1)

;; activate CUA-mode
(cua-mode 1)

;; activate winner-mode
(winner-mode 1)

;; hide splash screen and message
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

;; activate ALT-based window switching
(windmove-default-keybindings 'meta)

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

;; dired configuration
(add-hook 'dired-mode-hook (lambda()
			     (dired-hide-details-mode t) ;; hide file details
			     (diredp-toggle-find-file-reuse-dir 1))) ;; reuse buffer

(add-hook 'text-mode-hook (lambda ()
			   (auto-complete-mode t)
			   (fci-mode t))) ;; column limit

;; disable line-wrap
(set-default 'truncate-lines t)

;; Smex-key (M-x with Ido)
(global-set-key (kbd "M-x") 'smex)

;; Org-mode is conflicting with recentf
;; It seems that recentf adds a hook using this var
;; Org-mode tries to unset a value from this var
;; But this var is from session.el which I'm not using
;; So I need to declare it here.
(unless (boundp 'session-globals-exclude)
  (defvar session-globals-exclude ()))

(defun my-copy-file-to-aofl ()
  (interactive)
  (let* ((home-prefix "/home/gustavo/projects/2mundos/")
	 (file-name (substring buffer-file-name (length home-prefix)))
	 (origin (concat "~/projects/2mundos/" file-name))
	 (destination (concat "$AOFL_HOST:" file-name)))
    (shell-command (concat "scp -q" " " origin " " destination))))

;; Set scroll margin
(setq scroll-margin 10)

;; join line to next line
(global-set-key (kbd "C-j")
		(lambda ()
		  (interactive)
		  (join-line -1)))

;; wrap region
(wrap-region-mode t)

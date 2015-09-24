;; start maximized
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; disable beep sounds
(setq visible-bell 1)

;; show line numbers
(global-linum-mode 1)

;; activate IDO
(ido-mode 1)

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

;; enable flycheck (syntax checking)
(add-hook 'php-mode-hook (lambda ()
			   (flycheck-mode t)
			   (auto-complete-mode t)))

;; start maximized
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; disable tool-bar and menu
(tool-bar-mode -1)
(menu-bar-mode -1)

;; disable beep sounds
(setq visible-bell 1)

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

;; column limit configuration
(setq fci-rule-column 80)
(setq fci-rule-color "grey30")

;; shortening confirmation response
(defalias 'yes-or-no-p 'y-or-n-p)

;; line numbers spacing
(setq linum-format "%4d  ")

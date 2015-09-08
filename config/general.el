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

;; activate SHIFT-based window switching
(windmove-default-keybindings)

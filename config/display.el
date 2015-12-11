;; start maximized
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; disable tool-bar and menu
(tool-bar-mode -1)
(menu-bar-mode -1)

;; set color theme
(load-theme 'zenburn t)

;; line numbers spacing
(setq linum-format "%4d  ")

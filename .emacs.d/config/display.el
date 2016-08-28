;; disable menu
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; set color theme
(load-theme 'zenburn t)

;; line numbers spacing
(setq linum-format "%4d  ")

(custom-set-faces
 '(avy-background-face ((t (:background "#3F3F3F" :foreground "gray60" :inverse-video nil))))
 '(avy-lead-face ((t (:foreground "green"))))
 '(avy-lead-face-0 ((t (:foreground "green"))))
 '(avy-lead-face-1 ((t (:foreground "green"))))
 '(avy-lead-face-2 ((t (:foreground "green"))))
 '(mode-line ((t (:background "#2B2B2B" :foreground "#8FB28F" :box (:line-width 1 :style released-button)))))
 '(mode-line-inactive ((t (:background "#383838" :foreground "#5F7F5F" :box (:line-width 1 :style released-button))))))

;; Activate globally
(global-company-mode)

;; Activate company-flx for fuzzy matching
(with-eval-after-load 'company
  (company-flx-mode +1))

;; TAB can trigger completion or indent
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)

;; save recent files
(recentf-mode 1)
(setq recentf-max-menu-items 250)
(run-at-time nil (* 5 60) 'recentf-save-list)

;; open recent files list with IDO
(defun recentf-ido-find-file ()
  "Find a recent file using Ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(global-set-key (kbd "C-x C-r") 'recentf-ido-find-file)

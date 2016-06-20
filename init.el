;; package list
(setq package-list '(php-mode web-mode markdown-mode auto-complete let-alist
			      geben fill-column-indicator magit zenburn-theme
			      doremi doremi-cmd php-eldoc haskell-mode
			      hide-comnt restclient git-timemachine dired+
			      smex wrap-region dumb-jump avy which-key helm))

;; repositories
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")))


;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; load the config files
(setq config-directory "~/.emacs.d/config/")

(dolist (config-file (directory-files config-directory))
  (unless (member config-file '("." ".." "#" "~"))
    (load (concat config-directory config-file))))

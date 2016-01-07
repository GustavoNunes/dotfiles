; list the packages you want
(setq package-list '(php-mode web-mode markdown-mode auto-complete let-alist
			      geben fill-column-indicator magit zenburn-theme
			      doremi doremi-cmd php-eldoc haskell-mode
			      hide-comnt restclient git-timemachine dired+
			      elfeed smex))

; list the repositories containing them
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")))


; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


; list the packages you want
(setq package-list '(php-mode web-mode markdown-mode magit))

; list the repositories containing them
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


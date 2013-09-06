;; --------------------------------------------------------------------------------
;; Add Marmalade repo to package
(require 'package)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'package-archives 
  '("marmalade" .
    "http://marmalade-repo.org/packages/"))
(package-initialize)

;; --------------------------------------------------------------------------------
;; Add Melpa repo to package
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
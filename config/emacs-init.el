;; --------------------------------------------------------------------------------
;; Other modules to consider.
;;    - http://www.emacswiki.org/emacs/PredictiveMode#toc5
;;    - http://www.youtube.com/watch?v=rGVVnDxwJYE
;;      - This seems even better as it gets function definitions and such.
;;    - http://amitp.blogspot.com/2012/10/emacs-helm-for-finding-files.html
;; --------------------------------------------------------------------------------

;; --------------------------------------------------------------------------------
;; Making iTerm 2 work with normal Mac OSX keyboard shortcuts
;;    - http://elweb.co/making-iterm-2-work-with-normal-mac-osx-keyboard-shortcuts/
;; --------------------------------------------------------------------------------

;; Tell emacs where is your personal elisp lib dir this is default dir for extra packages.
(add-to-list 'load-path "~/.emacs.d/")

;; Load all the custom module paths
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/autopair")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/bcycle")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/company")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/emacs-modules-mirror")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/flymake")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/fringe-helper")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/git-gutter")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/helm")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/helm-gtags")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/indicators")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/multiple-cursors")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/webmode")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/yasnippet")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/php-mode-module")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/magit")

;; Load all the theme path.
(add-to-list 'custom-theme-load-path "~/.dotfiles/config/emacs/themes")

;; Load the global stuff.
(add-to-list 'load-path "~/.dotfiles/config/emacs/global")

;; Load the custom modes paths.
(add-to-list 'load-path "~/.dotfiles/config/emacs/modes")
(load "functions")
(load "keys");
;(load "javascript-mode")

(load "repos")
(load "_emacs")
(load "indentation")
(load "company")
(load "modules");

(load "php") 
;(require 'mouse)
(load "mouse-global")
;(load "haml-mode")
;(load "stubs")
;(require 'magit)
;(require 'yasnippet)

(load-theme 'solarized-dark' t)

;; --------------------------------------------------------------------------------
;; Default settings for my emacs.
(set-default 'truncate-lines t)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
(setq visual-line-mode t)
(setq linum-format "%3d\u2502 ")
(setq dired-listing-switches "-lha")
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq global-ede-mode t)
(setq vc-follow-symlinks t)

; Set the temp directory
(setq backup-directory-alist '(("." . "~/tmp")))

; All questios are y or n answers.
(fset 'yes-or-no-p 'y-or-n-p)

; Use my aliases plz.
(setq shell-command-switch "-ic")

(put 'narrow-to-region 'disabled nil)
(global-linum-mode t)

;(yas-global-mode 1)

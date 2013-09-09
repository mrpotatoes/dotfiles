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

;; Not for myself but for elpa (I think).
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
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/php-mode")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/magit")
(add-to-list 'load-path "~/.dotfiles/config/emacs/modules/powerline")

;; Load  the theme path.
(add-to-list 'custom-theme-load-path "~/.dotfiles/config/emacs/themes")

;; Load the global path.
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

;; Text modes.
(load "php") 
(load "plaintext-mode")
;(load "shift_mark")

(load "mouse-global")
;(load "haml-mode")
;(load "stubs")
;(require 'magit)
;(require 'yasnippet)

(load-theme 'solarized-dark' t)

;; --------------------------------------------------------------------------------
;; Autoloading.

;; ASpell
;; http://aspell.net/man-html/Creating-an-Individual-Word-List.html
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(autoload 'flyspell-delay-command "flyspell" "Delay on command." t) 
(autoload 'tex-mode-flyspell-verify "flyspell" "" t) 
;; --------------------------------------------------------------------------------
;; Setting up some default variables for my emacs.

;; Line wrapping.
(set-default 'truncate-lines t)

;; No startup screen.
(setq inhibit-startup-screen t)

;; No menu bar.
(menu-bar-mode -1)

;; Set the default tab width to be 2 characters.
(setq default-tab-width 2)

;; Don't allow the tab character. Use spaces instead.
(setq-default indent-tabs-mode nil)

;; Stop wrapping the damned lines.
(setq visual-line-mode t)

;; Digit format.
(setq linum-format "%3d\u2502 ")

;; Switches for dired mode.
(setq dired-listing-switches "-lha")

;; ?
(setq backup-inhibited t)

;; Do not save a file by default.
(setq auto-save-default nil)

;; http://www.gnu.org/software/emacs/manual/html_node/ede/EDE-Mode.html
(setq global-ede-mode t)

;; Automatically follow symlinks instead of asking.
(setq vc-follow-symlinks t)

; Set the temp directory.
(setq backup-directory-alist '(("." . "~/tmp")))

; All questios are y or n answers.
(fset 'yes-or-no-p 'y-or-n-p)

; Use my aliases plz.
(setq shell-command-switch "-ic")

;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Narrowing.html
(put 'narrow-to-region 'disabled nil)

;; Set the line number mode globally.
(global-linum-mode t)

;(yas-global-mode 1)

(setq-default ispell-program-name "aspell")

;; --------------------------------------------------------------------------------
;; Make the mode-line sexy.
(require 'powerline)

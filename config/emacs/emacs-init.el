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

;; Add all the directories in this path to the add-to-list
;;    - http://www.emacswiki.org/emacs/LoadPath
(let ((default-directory "~/.dotfiles/config/emacs/modules/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Load  the theme paths.
(let ((default-directory "~/.dotfiles/config/emacs/themes/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Load the global path.
(add-to-list 'load-path "~/.dotfiles/config/emacs/global")

;; Load the custom modes paths.
(add-to-list 'load-path "~/.dotfiles/config/emacs/modes")

(load "functions")
(load "keys");
;(load "javascript-mode")

(load "repos")
(load "_emacs")
(load "mode-line")
(load "indentation")
(load "company")
(load "modules");
(load "project-management")
(load "source-control")
(load "ido-setup")

(require 'dirtree)

;; Modes.
;; Things that will be applied globally. Can be modified on a per-mode basis.
(load "global")

(load "php")
(load "plaintext-mode")
;(load "lisp")
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

(setq bcycle-skip-patterns (cons "^#" bcycle-skip-patterns))
(setq bcycle-skip-patterns (cons "TAGS" bcycle-skip-patterns))
(setq bcycle-skip-patterns (cons "^files$" bcycle-skip-patterns))

;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Narrowing.html
(put 'narrow-to-region 'disabled nil)

;; Set the line number mode globally.
(global-linum-mode t)

;; Set the file to auto revert to disk changes.
(global-auto-revert-mode t)

;(yas-global-mode 1)

(setq-default ispell-program-name "aspell")

;(set-face-background 'modeline "brightblack")
;(set-face-foreground 'modeline "blue")
;(set-face-background 'modeline-inactive "brightblack")
;(set-face-foreground 'modeline-inactive "brightcyan")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-idle-delay 0.5)
 '(highlight-symbol-on-navigation-p t)
)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



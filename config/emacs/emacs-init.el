;; -----------------------------------------------------------------------------
;; Other modules to consider.
;;    - http://www.emacswiki.org/emacs/PredictiveMode#toc5
;;    - http://www.youtube.com/watch?v=rGVVnDxwJYE
;;      - This seems even better as it gets function definitions and such.
;;    - http://amitp.blogspot.com/2012/10/emacs-helm-for-finding-files.html
;; -----------------------------------------------------------------------------

;; -----------------------------------------------------------------------------
;; Making iTerm 2 work with normal Mac OSX keyboard shortcuts
;;    - http://elweb.co/making-iterm-2-work-with-normal-mac-osx-keyboard-shortcuts/
;; -----------------------------------------------------------------------------

;; I will maintain all deps from now on.
; (add-to-list 'load-path "~/.emacs.d/")

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

;; No menu bar.
(menu-bar-mode -1)

;; -----------------------------------------------------------------------------
;; Set Interactive Mode for bash.
(setq shell-file-name "bash")
(setq shell-command-switch "-ic")

(load "functions")
(load "keys");
;(load "javascript-mode")

(load "repos")
(load "_emacs")
(load "mode-line")
(load "indentation")
; (load "company-setup")
(load "modules");
(load "project-management")
(load "source-control")
(load "ido-setup")

(require 'dirtree)

;; -----------------------------------------------------------------------------
;; This is actually an include for the other modes that I've created.
(load "all-modes")

(load "mouse-global")
;(load "stubs")
;(require 'magit)

;; -----------------------------------------------------------------------------
;; Yas.
(require 'yasnippet)
(yas-global-mode 1)
(global-set-key (kbd "C-c C-y") 'yas-expand)

; (setq yas-snippet-dirs '("~/.dotfiles/config/emacs/snippets"))
; (define-key yas-minor-mode-map (kbd "<M TAB>") 'yas-expand)

(add-to-list 'custom-theme-load-path "~/.dotfiles/config/emacs/themes/solarized")
(load-theme 'solarized-dark' t)
(setq solarized-use-terminal-theme t)

;; -----------------------------------------------------------------------------
;; Autoloading.

;; ASpell
;; http://aspell.net/man-html/Creating-an-Individual-Word-List.html
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(autoload 'flyspell-delay-command "flyspell" "Delay on command." t)
(autoload 'tex-mode-flyspell-verify "flyspell" "" t)

;; -----------------------------------------------------------------------------
;; I would like to high light the line that I'm on always.
(global-hl-line-mode 1)

;; -----------------------------------------------------------------------------
;; Setting up some default variables for my emacs.
;; Line wrapping.
(set-default 'truncate-lines t)

;; No startup screen.
(setq inhibit-startup-screen t)

; Delete selected text with whatever.
(delete-selection-mode 1)

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

;; Set the file to auto revert to disk changes.
(global-auto-revert-mode t)

;(yas-global-mode 1)

(setq-default ispell-program-name "aspell")

(setq-default fill-column 80)

; ;; ------------------------------------------------------------------------------
; ;; Auto complete bullshit.
; (require 'auto-complete)
; (add-to-list 'ac-dictionary-directories "~/.dotfiles/config/emacs/modules/autocomplete/dict")
; (require 'auto-complete-config)
; (ac-config-default)

; ;; https://github.com/syohex/emacs-ac-etags
; (require 'ac-etags)
; (custom-set-variables '(ac-etags-requires 1))
; (eval-after-load "etags" '(progn (ac-etags-setup)))
; (add-hook 'php-mode-hook 'ac-etags-ac-setup)

; ;; Color the selection.
; (set-face-attribute 'region nil :background "brightmagenta")



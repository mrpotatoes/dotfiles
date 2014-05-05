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

;; -----------------------------------------------------------------------------
;; Set Interactive Mode for bash.
(setq shell-file-name "bash")
(setq shell-command-switch "-ic")

; --------------------------------------------------------------------------------
;; Autopair
;;    http://www.emacswiki.org/emacs/AutoPairs
;;    - https://github.com/capitaomorte/autopair
(require 'autopair)

;; --------------------------------------------------------------------------------
;; Copy paste
(require 'pbcopy)
(turn-on-pbcopy)

;; --------------------------------------------------------------------------------
;; Make the mode-line sexy.
(require 'powerline)
;(powerline-center-theme)

(require 'dirtree)

;; --------------------------------------------------------------------------------
;; Buffer cycling.
(require 'bcycle)

; Keys to cycle.
(define-key my-keys-minor-mode-map (kbd "M-TAB") 'bcycle-next-buffer)
(define-key my-keys-minor-mode-map (kbd "M-`") 'bcycle-previous-buffer)

; Patters for file types to ignore.
(setq bcycle-skip-patterns (cons "^irc\.freenode" bcycle-skip-patterns))
(setq bcycle-skip-patterns (cons "^#" bcycle-skip-patterns))
(setq bcycle-skip-patterns (cons "^#" bcycle-skip-patterns))
(setq bcycle-skip-patterns (cons "TAGS" bcycle-skip-patterns))
(setq bcycle-skip-patterns (cons "^files$" bcycle-skip-patterns))

;; --------------------------------------------------------------------------------
;; IRC and various other communications.
;; todo: Add stuff.

;; --------------------------------------------------------------------------------
;; Eventually this:
;;    - https://github.com/Fuco1/smartparens
(require 'paren)
(show-paren-mode 1)
(set-face-background 'show-paren-match-face (face-background 'default))
(set-face-foreground 'show-paren-match-face "#f30")
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)

;; --------------------------------------------------------------------------------
;; Eventually this:
;;    - https://github.com/Fuco1/smartparens
;;    - git@github.com:nschum/highlight-symbol.el.git
;;    - http://www.emacswiki.org/emacs/?action=browse;oldid=HighLight;id=HighlightLibrary
;(require 'highlight-symbol)

;; --------------------------------------------------------------------------------
;; Documentation mode.
;;    - http://www.emacswiki.org/emacs/DocMode
(require 'doc-mode)
(add-hook 'c-mode-common-hook 'doc-mode)

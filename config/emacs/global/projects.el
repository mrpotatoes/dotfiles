;; --------------------------------------------------------------------------------
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

;; --------------------------------------------------------------------------------
;; Make the mode-line sexy.
; (require 'projectile)
; (projectile-global-mode)

;; --------------------------------------------------------------------------------
;; Buffer cycling.
(require 'bcycle)
(setq bcycle-skip-patterns (cons "^irc\.freenode" bcycle-skip-patterns))
(setq bcycle-skip-patterns (cons "^#" bcycle-skip-patterns))
(define-key my-keys-minor-mode-map (kbd "M-TAB") 'bcycle-next-buffer)
(define-key my-keys-minor-mode-map (kbd "M-`") 'bcycle-previous-buffer)

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


;(require 'smart-mode-line)
;(if after-init-time (sml/setup)
;  (add-hook 'after-init-hook 'sml/setup))
















































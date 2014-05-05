;; -----------------------------------------------------------------------------
;; Set the global theme.
(add-to-list 'custom-theme-load-path "~/.dotfiles/config/emacs/themes/solarized")
(load-theme 'solarized-dark' t)
(setq solarized-use-terminal-theme t)

;; -----------------------------------------------------------------------------
;; I would like to high light the line that I'm on always.
(global-hl-line-mode 1)
(set-face-background 'region "darkred")

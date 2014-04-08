;; -----------------------------------------------------------------------------
;; Toggle prefix map
(define-prefix-command 'my-toggle-prefix-map) ;; Allow toggling
(global-set-key (kbd "C-t") 'my-toggle-prefix-map)
(define-key my-toggle-prefix-map (kbd "C-t") 'transpose-chars)
(define-key my-toggle-prefix-map (kbd "C-l") 'linum-mode)
(define-key my-toggle-prefix-map (kbd "C-p") 'show-paren-mode)
(define-key my-toggle-prefix-map (kbd "C-w") 'whitespace-mode)
(define-key my-toggle-prefix-map (kbd "C-f") 'flycheck-mode)

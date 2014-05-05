;; --------------------------------------------------------------------------------
;; Buffer cycling.
; (define-key my-keys-minor-mode-map (kbd "M-TAB") 'bcycle-next-buffer)
; (define-key my-keys-minor-mode-map (kbd "M-`") 'bcycle-previous-buffer)

(autoload 'bcycle-next-buffer "bcycle")
(autoload 'bcycle-previous-buffer "bcycle")

(defun setup-bcycle ()
  "Patterns for file types to ignore."
  (setq bcycle-skip-patterns (cons "^irc\.freenode" bcycle-skip-patterns))
  (setq bcycle-skip-patterns (cons "^#" bcycle-skip-patterns))
  (setq bcycle-skip-patterns (cons "^#" bcycle-skip-patterns))
  (setq bcycle-skip-patterns (cons "TAGS" bcycle-skip-patterns))
  (setq bcycle-skip-patterns (cons "^files$" bcycle-skip-patterns)))

; Keys to cycle.
(define-key my-keys-minor-mode-map (kbd "M-TAB") 'bcycle-next-buffer)
(define-key my-keys-minor-mode-map (kbd "M-`") 'bcycle-previous-buffer)
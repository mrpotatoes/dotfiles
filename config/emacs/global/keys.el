;; --------------------------------------------------------------------------------
;; Some global settings
(global-set-key (kbd "M-;")
     (lambda ()
       (interactive)
       (save-excursion
         (move-beginning-of-line nil)
         (push-mark (point) t t)
         (move-end-of-line nil)
         (comment-dwim nil)
         (pop-mark)
         )
       )
     )

;; --------------------------------------------------------------------------------
;; Reset some keys.
(global-set-key (kbd "M-N") 'mc/mark-next-like-this)
(global-set-key (kbd "M-P") 'mc/mark-previous-like-this)

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-x C-g") 'magit-status)

(global-set-key (kbd "M-DEL") 'backward-delete-word)
(define-key minibuffer-local-map (kbd "M-DEL") 'backward-delete-word)
(define-key minibuffer-local-map (kbd "C-w") 'backward-delete-word)
(define-key minibuffer-local-map (kbd "<C-backspace>") 'backward-delete-word)
(define-key minibuffer-local-map (kbd "C-q") 'backward-delete-char)

;; Keyboard shortcuts
(global-set-key (kbd "M-N") 'mc/mark-next-like-this)
(global-set-key (kbd "M-P") 'mc/mark-previous-like-this)

;; --------------------------------------------------------------------------------
;; Keyboard shortcuts
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)
(my-keys-minor-mode 1)

(define-key my-keys-minor-mode-map (kbd "<backtab>") 'remove-indentation-spaces)
(define-key my-keys-minor-mode-map (kbd "ESC n") 'scroll-up-line)
(define-key my-keys-minor-mode-map (kbd "ESC p") 'scroll-down-line)

(define-key my-keys-minor-mode-map (kbd "M-`") 'previous-buffer)
(define-key my-keys-minor-mode-map (kbd "M-~") 'next-buffer) 
(define-key my-keys-minor-mode-map (kbd "M-TAB") 'next-buffer)

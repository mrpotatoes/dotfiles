; --------------------------------------------------------------------------------
; Helm Gtags. I want to get the rest of these to work. Horray.
; 
;   From: https://github.com/syohex/emacs-helm-gtags
; 
; M-x find-tag-other-window’ – selects the buffer containing the tag’s definition in another window, and move point there.
; M-*’ (‘pop-tag-mark’) – jump back
; M-x tags-search’ – regexp-search through the source files indexed by a tags file (a bit like ‘grep’)
; M-x tags-query-replace’ – query-replace through the source files indexed by a tags file
; M-,’ (‘tags-loop-continue’) – resume  ‘tags-search’ or ‘tags-query-replace’ starting at point in a source file
; M-x tags-apropos’ – list all tags in a tags file that match a regexp
; M-x list-tags’ – list all tags defined in a source file

;; Enable helm-gtags-mode
(require 'helm-gtags)

(global-set-key (kbd "C-c h") 'helm-projectile)
(global-set-key (kbd "M-.") 'projectile-find-tag)

(add-hook 'php-mode-hook 'helm-gtags-mode)

;; customize
(custom-set-variables
 '(helm-gtags-path-style 'relative)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-auto-update t))

;; key bindings
(eval-after-load "helm-gtags"
  '(progn
    ; Go to the definition of the tag
    (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-find-tag)

    ; Go back to where you were
    (define-key helm-gtags-mode-map (kbd "M-*") 'helm-gtags-pop-stack)

    ; Find all the occurances/calls of this function.
    (define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)

    ; Dunno
    (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)

    ; Parse the file. Don't see why I would use this.
    (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)

    ; Go backward in the tag-search history.
    (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)

    ; Go forward in the tag-search history.
    (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
  )
)

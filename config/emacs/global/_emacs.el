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
;; GTAGS
(autoload 'gtags-mode "gtags" "" t)

(add-hook 'php-mode-hook
  '(lambda () 
    (gtags-mode 1)
    (global-set-key (kbd "M-.") 'gtags-find-tag)    ; Find a tag.
    (local-set-key (kbd "M-,") 'gtags-find-rtag)  ; reverse tag
))

;; Update the gtags every chance we get.
(defun djcb-gtags-create-or-update ()
  "create or update the gnu global tag file"
  (interactive)
  (if (not (= 0 (call-process "global" nil nil nil " -p"))) ; tagfile doesn't exist?
    (let ((olddir default-directory)
      (topdir (read-directory-name "gtags: top of source tree:" default-directory)))
      (cd topdir)
      (shell-command "gtags && echo 'created tagfile'")
      (cd olddir)) ; restore   
    ;;  tagfile already exists; update it
    (shell-command "global -u && echo 'updated tagfile'")))
    
;(add-hook 'after-save-hook 'djcb-gtags-create-or-update)

; rm GPATH GRTAGS GTAGS; sleep 1s; gtags -v --skip=sites/ --gtagslabel=drupal; size GPATH GRTAGS GTAGS

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














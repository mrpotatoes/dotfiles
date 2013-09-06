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

(autoload 'js-console "js-console" nil t)
;;(load "~/.emacs.d/nxhtml/autostart.el")

;(load "haml-mode")
(load "stubs")

(require 'magit)
;(require 'yasnippet)

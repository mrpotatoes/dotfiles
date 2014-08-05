;; --------------------------------------------------------------------------------
;; Use projectile because it seems to be pretty fucking awesome bro.
;;    - 
;;    - 
(require 'projectile)
(require 'ack-and-a-half)

; (require 'ggtags)
; (ggtags-mode 1)

;; Enable the thing
(projectile-global-mode)

(require 'helm-projectile)
(global-set-key (kbd "C-c h") 'helm-projectile)

; projectile-tags-command

(require 'helm-etags+)
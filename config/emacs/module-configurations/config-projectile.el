;; --------------------------------------------------------------------------------
;; Use projectile because it seems to be pretty fucking awesome bro.
;;    - 
;;    - 
(require 'projectile)
(require 'helm-projectile)
(require 'ack-and-a-half)
(require 'ggtags)

;; To allow the use of gtags.
(ggtags-mode 1)

;; Enable the thing
(projectile-global-mode)

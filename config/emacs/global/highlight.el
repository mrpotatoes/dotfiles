;; --------------------------------------------------------------------------------
;; hl-line seems to be only for emacs
;;    - http://www.emacswiki.org/emacs/highline.el

(require 'highline)
(add-hook 'org-agenda-mode-hook '(lambda () (highline-mode 1)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highline-face ((((type tty) (class color)) (:background "#399" :foreground "black"))))
 '(linum ((t (:inherit (shadow default) :background "black" :foreground "brightgreen"))))
 '(magit-item-highlight ((t (:background "black" :foreground "blue"))))
 '(magit-log-head-label-local ((t (:background "Grey85" :foreground "LightSkyBlue4" :box 1)))))
 
 ;; To customize the background color
(set-face-background 'highline-face "#CCC")
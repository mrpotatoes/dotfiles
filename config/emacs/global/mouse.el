;; --------------------------------------------------------------------------------
;; http://www.emacswiki.org/emacs/SmoothScrolling
;; More info:
;;  - http://mattbriggs.net/blog/2012/03/18/awesome-emacs-plugins-ctags/
;;  - http://www.emacswiki.org/BuildTags
;;  - http://www.emacswiki.org/emacs/TagsFile
;;  - http://www.emacswiki.org/emacs/EmacsTags
(unless window-system
  ;(require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] '(lambda ()
    (interactive)
    (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
    (interactive)
    (scroll-up 1)))
    
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
  (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
  (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
  (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
)
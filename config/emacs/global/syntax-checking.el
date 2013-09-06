;; --------------------------------------------------------------------------------
;; Syntax Checking
;;  Using: Flymake, rfringe, etc
;;    - http://www.gnu.org/software/emacs/manual/html_mono/flymake.html#Installing-Flymake
;;    - http://www.illusori.co.uk/projects/
;;    - https://github.com/illusori/emacs-flymake
;;    - http://www.emacswiki.org/emacs/FlyMake
;;      - Tmp directory & etc.
;;
;;  PHP
;;    - http://www.illusori.co.uk/projects/emacs-flymake-phpcs/
;;
;;  Some other stuff to check out:
;;    - http://ergoemacs.org/emacs_manual/elisp/Fringe-Indicators.html
;;    - https://github.com/Fuco1/indicators.el
;;    - http://www.emacswiki.org/emacs/FlymakeCursor
(add-to-list 'load-path "~/.emacs.d/emacs-flymake")
(add-to-list 'load-path "~/.emacs.d/fringe-helper.el")
(add-to-list 'load-path "~/.emacs.d/extras")
(require 'flymake)
(require 'fringe-helper)

(require 'fringe)

;(defun define-fringe-bitmap (bitmap bits &optional height width align))

;(add-to-list 'load-path "~/.emacs.d/indicators")
;(require 'indicators)

(add-hook 'find-file-hook 'flymake-find-file-hook)
 
(global-set-key [f3] 'flymake-display-err-menu-for-current-line)
(global-set-key [f4] 'flymake-goto-next-error)


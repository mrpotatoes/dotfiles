;; --------------------------------------------------------------------------------
;; js2-mode
;; 		- http://www.emacswiki.org/emacs/Js2Mode
;;		- https://github.com/mooz/js2-mode
(add-to-list 'load-path "~/.emacs.d/elpa/js2-mode-1.1")
(load "js2-mode")
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(autoload 'js-console "js-console" nil t)
(load "~/.emacs.d/nxhtml/autostart.el")
;; --------------------------------------------------------------------------------
;; js2-mode
;; 		- http://www.emacswiki.org/emacs/Js2Mode
;;		- https://github.com/mooz/js2-mode
;;
;;
;;   I WANT THIS: https://github.com/azer/emacs.js/

(add-hook 'js2-mode-hook
  '(lambda ()
     (local-set-key (kbd "RET") 'newline-and-indent)
    ;; Some required modules that we'll need
    (require 'js2-mode)
    (require 'syntax-subword)
    (require 'highlight-symbol)
    (require 'flycheck)
    (require 'yasnippet)
    (require 'flycheck-tip)
    ;; (load "flynum")

    ; Setup some modes.
    (autopair-mode)
    (highlight-symbol-mode t)
    (syntax-subword-mode t)

    ;; Default settings.
    ;; (setq indent-tabs-mode nil)
    (setq tab-width 2)
    (setq js-indent-level 2)
    (setq js2-indent-level 2)
    (setq js2-basic-offset 2)

    ;; Flycheck settings.
    ; (flycheck-mode)
    ; (setq flycheck-phpcs-standard "drupal")
    ; (flycheck-tip-use-timer 'verbose)
  ))

;; Assoicate the PHP mode with these files.
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

(autoload 'js2-mode "js2-mode" nil t)

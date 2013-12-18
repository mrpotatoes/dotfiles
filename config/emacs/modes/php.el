;; --------------------------------------------------------------------------------
;; PHP Mode
;;  - https://github.com/ejmr/php-mode
;;  - https://github.com/arnested/php-extras
;;  - http://stackoverflow.com/questions/912671/what-is-a-good-setup-for-editing-php-in-emacs
(require 'php-mode)
(require 'syntax-subword)
;(global-syntax-subword-mode 1)

(setq php-mode-force-pear t)

(add-hook 'php-mode-hook
  '(lambda ()
    (require 'highlight-symbol)
    (highlight-symbol-mode t)
    (autopair-mode t)
    (syntax-subword-mode t)
    (setq indent-tabs-mode nil)
    (setq tab-width 2)
    (setq c-basic-offset 2)))
    
(setq c-default-style "bsd"
  c-basic-offset 2)

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.test$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.profile$" . php-mode))


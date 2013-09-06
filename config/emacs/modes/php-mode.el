;; --------------------------------------------------------------------------------
;; PHP Mode
;;  - https://github.com/ejmr/php-mode
;;  - https://github.com/arnested/php-extras
;;  - http://stackoverflow.com/questions/912671/what-is-a-good-setup-for-editing-php-in-emacs
(add-to-list 'load-path "~/.emacs.d/php-mode")
(require 'php-mode)

(setq php-mode-force-pear t)
(add-hook 'php-mode-hook
  '(lambda ()
    (autopair-mode)
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


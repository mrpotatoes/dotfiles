;; --------------------------------------------------------------------------------
;; PHP Mode
;;  - https://github.com/ejmr/php-mode
;;  - https://github.com/arnested/php-extras
;;  - http://stackoverflow.com/questions/912671/what-is-a-good-setup-for-editing-php-in-emacs
(require 'php-mode)

; (setq php-mode-force-pear t)

(add-hook 'php-mode-hook
  '(lambda ()
    ;; Some required modules that we'll need
    (require 'syntax-subword)
    (require 'flycheck)
    (require 'highlight-symbol)

    ; Setup some modes.
    (autopair-mode)
    (highlight-symbol-mode t)
    (syntax-subword-mode t)

    ;; Default settings.
    (setq indent-tabs-mode nil)
    (setq tab-width 2)
    (setq c-basic-offset 2)
    (setq c-default-style "bsd" c-basic-offset 2)
    (setq php-mode-force-pear t)

    ;; Flycheck settings.
    (flycheck-mode)
    (setq flycheck-phpcs-standard "drupal")
  ))

;; Assoicate the PHP mode with these files.
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.test$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.profile$" . php-mode))



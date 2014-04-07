;; --------------------------------------------------------------------------------
;; PHP Mode
;;  - https://github.com/ejmr/php-mode
;;  - https://github.com/arnested/php-extras
;;  - http://stackoverflow.com/questions/912671/what-is-a-good-setup-for-editing-php-in-emacs
(require 'php-mode)
(require 'syntax-subword)
;; (require 'flycheck)

(setq php-mode-force-pear t)

(add-hook 'php-mode-hook
  '(lambda ()
    ; Setup some modes.
    (require 'highlight-symbol)
    (highlight-symbol-mode t)
    (autopair-mode)
    (syntax-subword-mode t)

    ;; Default settings.
    (setq indent-tabs-mode nil)
    (setq tab-width 2)
    (setq c-basic-offset 2)
    (setq c-default-style "bsd" c-basic-offset 2)

    ;; Flycheck
    ;; (flycheck-mode)
    ;; (setq flycheck-phpcs-standard "drupal")
))

;; (define-key my-toggle-prefix-map (kbd "C-f") 'flycheck-mode)

;; Assoicate the PHP mode with these files.
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.test$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.profile$" . php-mode))


;; --------------------------------------------------------------------------------
;; PHP Mode
;;  - https://github.com/ejmr/php-mode
;;  - https://github.com/arnested/php-extras
;;  - http://stackoverflow.com/questions/912671/what-is-a-good-setup-for-editing-php-in-emacs
(require 'php-mode)
(require 'syntax-subword)

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

;; --------------------------------------------------------------------------------
;; FlyCheck
; https://github.com/yuutayamada/flycheck-tip
; (add-hook 'after-init-hook #'global-flycheck-mode)
;
; The old flymake stuff
;(defun flymake-php-init ()
;  "Use php to check the syntax of the current file."
;  (let* ((temp (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
;   (local (file-relative-name temp (file-name-directory buffer-file-name))))
;    (list "php" (list "-f" local "-l"))))
;
;(add-to-list 'flymake-err-line-patterns 
;  '("\\(Parse\\|Fatal\\) error: +\\(.*?\\) in \\(.*?\\) on line \\([0-9]+\\)$" 3 4 nil 2))
;
;(add-to-list 'flymake-allowed-file-name-masks '("\\.php$" flymake-php-init))
;
;; Drupal-type extensions
;(add-to-list 'flymake-allowed-file-name-masks '("\\.module$" flymake-php-init))
;(add-to-list 'flymake-allowed-file-name-masks '("\\.install$" flymake-php-init))
;(add-to-list 'flymake-allowed-file-name-masks '("\\.inc$" flymake-php-init))
;(add-to-list 'flymake-allowed-file-name-masks '("\\.engine$" flymake-php-init));
;
;(add-hook 'php-mode-hook (lambda () (flymake-mode 1)))
;(define-key php-mode-map '[M-S-up] 'flymake-goto-prev-error)
;(define-key php-mode-map '[M-S-down] 'flymake-goto-next-error)

;; --------------------------------------------------------------------------------
;; FlyMake
;(require 'flymake)
;(require 'flymake-easy)
;(require 'flymake-phpcs)
;
;(add-hook 'php-mode-hook 'flymake-phpcs-load)
;
;(custom-set-faces
; '(flymake-errline ((((class color)) (:underline "red"))))
; '(flymake-warnline ((((class color)) (:underline "yellow")))))















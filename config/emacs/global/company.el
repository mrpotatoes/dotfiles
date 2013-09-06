
;; --------------------------------------------------------------------------------
;; Company mode
;;  - https://github.com/company-mode/company-mode
;;  - http://company-mode.github.io/
(add-to-list 'load-path "~/.emacs.d/company-mode")
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(setq company-backends 
  '(company-elisp 
    company-ropemacs
    company-gtags
    company-dabbrev-code
    company-keywords
    company-files 
    company-dabbrev))

;; Keyboard Bindings.
(global-set-key (kbd "M-r") 'company-complete-common)

